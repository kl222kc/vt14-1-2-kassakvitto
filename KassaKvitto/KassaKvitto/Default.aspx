<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KassaKvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KassaKvitto</title>
    <link href="~/Content/site.css" rel="stylesheet" />
</head>
<body>
    <form id="checkOutForm" runat="server">
    <div>
        <h1>KassaKvitto</h1>
        <asp:TextBox ID="CheckOutTextBox" runat="server" autofocus="autofocus"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="error" runat="server" ErrorMessage="Ange en total köpesumma" ControlToValidate="CheckOutTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" CssClass="error" runat="server" ErrorMessage="Ange en total köpesumma större än 0" ControlToValidate="CheckOutTextBox" Display="Dynamic" Type="Double" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
        
        <div>
            <asp:Button ID="CheckOutButton" runat="server" Text="Beräkna rabatt" OnClick="CheckOutButton_Click" />
        </div>
    </div>
    
    </form>

    <asp:Panel ID="ReceiptPanel" runat="server" Visible="False">


        <h1>Rolands kött och video</h1>
        <p>Tel: 07001234567</p>
        <p>Öppetider 08.00 - 24.00</p>

        <div id="ReciptContent">
            <p>Totalt: <asp:Label ID="Total" runat="server" CssClass="Recipt"></asp:Label></p>
            <p>Rabattsats: <asp:Label ID="DiscountRate" runat="server" CssClass="Recipt"></asp:Label></p>
            <p>Rabatt: <asp:Label ID="Discount" runat="server" CssClass="Recipt"></asp:Label></p>
            <p>Att betala: <asp:Label ID="SumToPay" runat="server" CssClass="Recipt"></asp:Label></p>
        </div>

        <p>ORG NR  100200-1234</p>
        <p>VÄLKOMMEN ÅTER!</p>
    </asp:Panel>

</body>
</html>
