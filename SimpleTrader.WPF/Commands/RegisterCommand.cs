﻿using SimpleTrader.Domain.Services.AuthenticationServices;
using SimpleTrader.WPF.State.Authenticators;
using SimpleTrader.WPF.State.Navigators;
using SimpleTrader.WPF.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SimpleTrader.WPF.Commands
{
    class RegisterCommand : AsyncCommandBase
    {
        private readonly RegisterViewModel _registerViewModel;
        private readonly IAuthenticator _authenticator;
        private readonly IRenavigator _registerRenavigator;

        public RegisterCommand(RegisterViewModel registerViewModel, IAuthenticator authenticator, IRenavigator registerRenavigator)
        {
            _registerViewModel = registerViewModel;
            _authenticator = authenticator;
            _registerRenavigator = registerRenavigator;
        }

        public override async Task ExecuteAsync(object parameter)
        {
            _registerViewModel.ErrorMessage = String.Empty;

            try
            {
                RegistrationResult registrationResult = await _authenticator.Register(
                           _registerViewModel.Email,
                           _registerViewModel.Username,
                           _registerViewModel.Password,
                           _registerViewModel.ConfirmPassword
                       );

                switch (registrationResult)
                {
                    case RegistrationResult.Success:
                        _registerRenavigator.Renavigate();
                        break;
                    case RegistrationResult.PasswordsDoNotMatch:
                        _registerViewModel.ErrorMessage = "Paswords do not match.";
                        break;
                    case RegistrationResult.EmailAlreadyExists:
                        _registerViewModel.ErrorMessage = "Email already exists.";
                        break;
                    case RegistrationResult.UsernameAlreadyExists:
                        _registerViewModel.ErrorMessage = "An account for this username already exists.";
                        break;
                }
            }
            catch (Exception)
            {
                _registerViewModel.ErrorMessage = "Registration failed.";
            }
        }
    }
}