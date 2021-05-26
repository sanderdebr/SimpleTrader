using System;
using System.Collections.Generic;
using System.Text;

namespace SimpleTrader.Domain.Models
{
    public class Account : DomainObject
    {
        public User AccountHolder { get; set; }
        public double Balance { get; set; } = 5000;
        public ICollection<AssetTransaction> AssetTransactions { get; set; }
    }
}
