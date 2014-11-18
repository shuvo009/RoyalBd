using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoyalBd.Model.Model
{
    public class SearchModel
    {
        public SearchModel()
        {
            To = From = DateTime.Today;
        }
        public DateTime To { get; set; }
        public DateTime From { get; set; }
    }
}
