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
            private set;
        }

        public double MoneyOff
        {
            get;
            private set;
        }

        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            private set
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
            private set;
        }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (subtotal < 1000)
            {
                DiscountRate = .05;
            }
            else if (subtotal < 5000)
            {
                DiscountRate = .10;
            }
            else 
            {
                DiscountRate = .15;
            }

            MoneyOff = subtotal * DiscountRate;
            Total = subtotal - MoneyOff;

        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

    }
}