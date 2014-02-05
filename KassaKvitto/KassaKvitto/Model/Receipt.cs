using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KassaKvitto.Model
{
    public class Receipt
    {
        private double _subtotal;

        public double DiscountRate
        {
            get;
            set;
        }

        public double MoneyOff
        {
            get;
            set;
        }

        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            set
            {
                if (value < 1)
                {
                    throw new ArgumentException("Subtotal får ej vara 0 eller mindre");
                }
                _subtotal = value;
            }
        }

        public double Total
        {
            get;
            set;
        }

        public void Calculate(double subtotal)
        {

            Subtotal = subtotal;

            if (subtotal < 500)
            {
                DiscountRate = 0;
            }

            if (subtotal > 499 && subtotal < 1000)
            {
                DiscountRate = 5;
            }

            if (subtotal > 999 && subtotal < 5000)
            {
                DiscountRate = 10;
            }

            if (subtotal > 4999)
            {
                DiscountRate = 15;
            }

            MoneyOff = subtotal * (DiscountRate * 0.01);
            Total = subtotal - MoneyOff;

        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

    }
}