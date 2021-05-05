using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace SimpleTrader.Domain.Exceptions
{
    public class InvalidPasswordException : Exception
    {
        public string Username { get; set; }
        public string Password { get; set; }

        public InvalidPasswordException()
        {
        }

        public InvalidPasswordException(string message) : base(message)
        {
        }

        public InvalidPasswordException(string message, Exception innerException) : base(message, innerException)
        {
        }

        public InvalidPasswordException(string username, string password)
        {
            Username = username;
            Password = password;
        }
    }
}
