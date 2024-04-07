using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webApplicationAssignment
{
    public class Payment
    {
        private int id;
        private double paymentAmount;
        private double discountAmount;
        private double totalAmount;

        public Payment(double paymentAmount, double discountAmount)
        {
            this.paymentAmount = paymentAmount;
            this.discountAmount = discountAmount;
            this.totalAmount = paymentAmount - discountAmount;
        }

        public double PaymentAmount { get => paymentAmount; set => paymentAmount = value; }
        public double DiscountAmount { get => discountAmount; set => discountAmount = value; }
        public double TotalAmount { get => totalAmount; set => totalAmount = value; }
        public int Id { get => id; set => id = value; }
    }
}