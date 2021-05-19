using SimpleTrader.Domain.Models;
using SimpleTrader.Domain.Exceptions;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SimpleTrader.Domain.Services.TransactionServices
{
    public interface IBuyStockService
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="buyer">The account of the buyer.</param>
        /// <param name="stock">The symbol purchased.</param>
        /// <param name="shares">The amount of shares.</param>
        /// <returns>The updated account.</returns>
        /// <exception cref="InsufficientFundsException">Thrown if the account has an insufficient balance.</exception>
        /// <exception cref="InvalidSymbolException">Thrown if the purchases symbol is invalid.</exception>
        /// <exception cref="InvalidSymbolException">Thrown if the transaction fails.</exception>
        Task<Account> BuyStock(Account buyer, string stock, int shares);
    }
}
