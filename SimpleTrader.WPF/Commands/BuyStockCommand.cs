using SimpleTrader.Domain.Exceptions;
using SimpleTrader.Domain.Models;
using SimpleTrader.Domain.Services.TransactionServices;
using SimpleTrader.WPF.State.Accounts;
using SimpleTrader.WPF.ViewModels;
using System;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows.Input;

namespace SimpleTrader.WPF.Commands
{
    public class BuyStockCommand : AsyncCommandBase
    {
        private readonly BuyViewModel _buyViewModel;
        private readonly IBuyStockService _buyStockService;
        private readonly IAccountStore _accountStore;

        public BuyStockCommand(BuyViewModel buyViewModel, IBuyStockService buyStockService, IAccountStore accountStore)
        {
            _buyViewModel = buyViewModel;
            _buyStockService = buyStockService;
            _accountStore = accountStore;

            _buyViewModel.PropertyChanged += BuyViewModel_PropertyChanged;
        }

        private void BuyViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(BuyViewModel.CanBuyStock))
            {
                OnCanExecuteChanged();
            }
        }

        public override bool CanExecute(object parameter)
        {
            return base.CanExecute(parameter);
        }

        public override async Task ExecuteAsync(object parameter)
        {
            _buyViewModel.StatusMessage = string.Empty;
            _buyViewModel.ErrorMessage = string.Empty;

            try
            {
                string symbol = _buyViewModel.Symbol;
                int shares = _buyViewModel.SharesToBuy;
                Account account = await _buyStockService.BuyStock(_accountStore.CurrentAccount, symbol, shares);

                _accountStore.CurrentAccount = account;

                _buyViewModel.StatusMessage = $"Successfully purchased {shares} shares of {symbol}";
            }
            catch (InsufficientFundsException)
            {
                _buyViewModel.ErrorMessage = "Account has insufficient funds. Please transfer more money into your account.";
            }
            catch (InvalidSymbolException)
            {
                _buyViewModel.ErrorMessage = "Symbol does not exists.";
            }
            catch (Exception e)
            {
                _buyViewModel.ErrorMessage = "Transaction failed.";
            }
        }
    }
}
