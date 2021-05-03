using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace SimpleTrader.FinancialModelingPrepAPI
{
    public class FinancialModelingPrepHttpClient : HttpClient
    {
        public FinancialModelingPrepHttpClient()
        {
            this.BaseAddress = new Uri("https://financialmodelingprep.com//api/v3/");
        }

        public async Task<T> GetAsync<T>(string uri)
        {
            HttpResponseMessage response = await GetAsync($"{uri}?apikey=e4b49a28379da98c0caf6cec14bdc989");
            string jsonResponse = await response.Content.ReadAsStringAsync();

            return JsonConvert.DeserializeObject<T>(jsonResponse);
        }
    }
}
