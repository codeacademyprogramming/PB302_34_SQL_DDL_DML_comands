using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace ShallowDeepCopy
{
    internal class Product
    {
        public string Name { get; set; }
        public double Price { get;set; }
        public string Category { get; set; }
        public Country Country { get; set; }

        public Product ShallowCopy()
        {
            Product newPr = (Product)this.MemberwiseClone();
            return newPr;
        }

        public Product DeepCopy()
        {
            var bytes = JsonSerializer.SerializeToUtf8Bytes(this);
            var obj = JsonSerializer.Deserialize<Product>(bytes);
            return obj;
        }

        public override string ToString()
        {
            return Name + "-" + Price + "-" + Category+"-"+Country.Name;
        }
    }
}
