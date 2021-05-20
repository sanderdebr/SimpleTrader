﻿using Microsoft.AspNet.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SimpleTrader.Domain.Models;
using SimpleTrader.Domain.Services;
using SimpleTrader.Domain.Services.AuthenticationServices;
using SimpleTrader.Domain.Services.TransactionServices;
using SimpleTrader.Domain.Tests.Services.AuthenticationServices;
using SimpleTrader.EntityFramework;
using SimpleTrader.EntityFramework.Services;
using SimpleTrader.FinancialModelingPrepAPI;
using SimpleTrader.FinancialModelingPrepAPI.Services;
using SimpleTrader.WPF.State.Accounts;
using SimpleTrader.WPF.State.Assets;
using SimpleTrader.WPF.State.Authenticators;
using SimpleTrader.WPF.State.Navigators;
using SimpleTrader.WPF.ViewModels;
using SimpleTrader.WPF.ViewModels.Factories;
using System;
using System.Windows;

namespace SimpleTrader.WPF
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private readonly IHost _host;

        public App()
        {
            _host = CreateHostBuilder().Build();
        }

        public static IHostBuilder CreateHostBuilder(string[] args = null)
        {
            // 1. Singleton - one instance per application
            // 2. Transient - different instance everytime
            // 3. Scoped - one instance per scope

            return Host.CreateDefaultBuilder(args)
                .ConfigureAppConfiguration(c =>
                {
                    c.AddJsonFile("appsettings.json");
                })
                .ConfigureServices((context, services) =>
                {
                    string apiKey = context.Configuration.GetValue<string>("FINANCE_API_KEY");
                    services.AddSingleton<FinancialModelingPrepHttpClientFactory>(new FinancialModelingPrepHttpClientFactory(apiKey));

                    string connectionString = context.Configuration.GetConnectionString("default");
                    services.AddDbContext<SimpleTraderDbContext>(o => o.UseSqlServer(connectionString));
                    services.AddSingleton<SimpleTraderDbContextFactory>(new SimpleTraderDbContextFactory(connectionString));
                    services.AddSingleton<IAuthenticationService, AuthenticationService>();
                    services.AddSingleton<IDataService<Account>, AccountDataService>();
                    services.AddSingleton<IAccountService, AccountDataService>();
                    services.AddSingleton<IStockPriceService, StockPriceService>();
                    services.AddSingleton<IBuyStockService, BuyStockService>();
                    services.AddSingleton<IMajorIndexService, MajorIndexService>();

                    services.AddSingleton<IPasswordHasher, PasswordHasher>();

                    services.AddSingleton<ISimpleTraderViewModelFactory, SimpleTraderViewModelFactory>();
                    services.AddSingleton<BuyViewModel>();
                    services.AddSingleton<PortfolioViewModel>();
                    services.AddSingleton<AssetSummaryViewModel>();
                    services.AddSingleton<HomeViewModel>(services => new HomeViewModel(
                        services.GetRequiredService<AssetSummaryViewModel>(),
                            MajorIndexListingViewModel.LoadMajorIndexViewModel(
                                services.GetRequiredService<IMajorIndexService>())));

                    services.AddSingleton<CreateViewModel<HomeViewModel>>(services =>
                    {
                        return () => services.GetRequiredService<HomeViewModel>();
                    });

                    services.AddSingleton<CreateViewModel<BuyViewModel>>(services =>
                    {
                        return () => services.GetRequiredService<BuyViewModel>();
                    });

                    services.AddSingleton<CreateViewModel<PortfolioViewModel>>(services =>
                    {
                        return () => services.GetRequiredService<PortfolioViewModel>();
                    });

                    services.AddSingleton<CreateViewModel<RegisterViewModel>>(services =>
                    {
                        return () => new RegisterViewModel();
                    });

                    services.AddSingleton<ViewModelDelegateRenavigator<HomeViewModel>>();
                    services.AddSingleton<ViewModelDelegateRenavigator<RegisterViewModel>>();
                    services.AddSingleton<CreateViewModel<LoginViewModel>>(services =>
                    {
                        return () => new LoginViewModel(
                            services.GetRequiredService<IAuthenticator>(),
                            services.GetRequiredService<ViewModelDelegateRenavigator<HomeViewModel>>(),
                            services.GetRequiredService<ViewModelDelegateRenavigator<RegisterViewModel>>());
                    });

                    services.AddSingleton<INavigator, Navigator>();
                    services.AddSingleton<IAuthenticator, Authenticator>();
                    services.AddSingleton<IAccountStore, AccountStore>();
                    services.AddSingleton<AssetStore>();
                    services.AddScoped<MainViewModel>();
                    services.AddScoped<BuyViewModel>();

                    services.AddScoped<MainWindow>(s => new MainWindow(s.GetRequiredService<MainViewModel>()));
                });
        }

        protected override void OnStartup(StartupEventArgs e)
        {
            _host.Start();

            Window window = _host.Services.GetRequiredService<MainWindow>();
            window.Show();

            base.OnStartup(e);
        }

        protected override async void OnExit(ExitEventArgs e)
        {
            await _host.StopAsync();
            _host.Dispose();

            base.OnExit(e);
        }
    }
}
