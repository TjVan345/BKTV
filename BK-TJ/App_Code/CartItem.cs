using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BK_TJ.App_Code
{
    public class CartItem
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public int Quantity { get; set; }

        public CartItem()
        {

        }

        public CartItem(int ID, string Name, double Price, string Description, string Image, int Quantity)
        {
            this.ID = ID;
            this.Name = Name;
            this.Price = Price;
            this.Description = Description;
            this.Image = Image;
            this.Quantity = Quantity;
        }
    }
}