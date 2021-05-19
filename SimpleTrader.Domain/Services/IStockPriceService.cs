using System;
using System.Collections.Generic;
using System.Text;
using SimpleTrader.Domain.Exceptions;
using System.Threading.Tasks;

namespace SimpleTrader.Domain.Services
{
    public interface IStockPriceService
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="symbol"></param>
        /// <returns>The price of the symbol.</returns>
        /// <exception cref="InvalidSymbolException">Thrown if the symbol does not exists.</exception>
        /// <exception cref="Exception">Thrown if getting the symbol fails.</exception>
        Task<double> GetPrice(string symbol);
    }
}
