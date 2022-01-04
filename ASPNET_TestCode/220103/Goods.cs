using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNET_TestCode._220103
{
    [Serializable]
    public class Goods
    {
        public string Name;
        public string Manufacturer;
        public int Cost;

        public Goods(string name, string manufacturer, int cost) { 
            Name = name;
            Manufacturer = manufacturer;
            Cost = cost;
        }
    }
}