<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KassaKvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="checkOutForm" runat="server">
    <div>
        <asp:TextBox ID="CheckOutTextBox" runat="server" autofocus="autofocus"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ange en total köpesumma" ControlToValidate="CheckOutTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Ange en total köpesumma större än 0" ControlToValidate="CheckOutTextBox" Display="Dynamic" Type="Double" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
        <asp:Button ID="CheckOutButton" runat="server" Text="Beräkna rabatt" OnClick="CheckOutButton_Click" />
    </div>
    
    </form>

    <asp:Panel ID="ReceiptPanel" runat="server" Visible="False">
        <h1>Rolands kött och video</h1>
        <p>Tel: 07001234567</p>
        <p>Öppetider 08.00 - 24.00</p>

        <p>Totalt: <asp:Label ID="Total" runat="server"></asp:Label></p>
        <p>Rabattsats: <asp:Label ID="DiscountRate" runat="server"></asp:Label></p>
        <p>Rabatt: <asp:Label ID="Discount" runat="server"></asp:Label></p>
        <p>Att betala: <asp:Label ID="SumToPay" runat="server"></asp:Label></p>

        <p>ORG NR  100200-1234</p>
        <p>VÄLKOMMEN ÅTER!</p>
    </asp:Panel>

</body>
</html>
