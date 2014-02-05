﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KassaKvitto.Model;

namespace KassaKvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckOutButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {   
                var cost = double.Parse(CheckOutTextBox.Text);

                Receipt receipt = new Receipt(cost);  

                ReceiptPanel.Visible = true;
            }
        }
    }
}