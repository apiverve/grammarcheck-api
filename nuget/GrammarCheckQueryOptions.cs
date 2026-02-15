using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GrammarCheck
{
    /// <summary>
    /// Query options for the Grammar Check API
    /// </summary>
    public class GrammarCheckQueryOptions
    {
        /// <summary>
        /// The text you want to check for grammatical and spelling errors
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}
