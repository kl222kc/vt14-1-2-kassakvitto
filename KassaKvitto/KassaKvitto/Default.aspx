<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KassaKvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="CheckOutForm" runat="server">
    <div>
        <asp:TextBox ID="CheckOutTextBox" runat="server" autofocus="autofocus"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ange en total köpesumma" ControlToValidate="CheckOutTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Ange en total köpesumma större än 0" ControlToValidate="CheckOutTextBox" Display="Dynamic" Type="Double" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
        <asp:Button ID="CheckOutButton" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
