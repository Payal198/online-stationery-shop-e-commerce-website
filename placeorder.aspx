<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="Online_Stationery_Shop.placeorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Table ID="Table1" runat="server" Height="615px" Width="759px" HorizontalAlign="Center" BackColor="#CC99FF" BorderColor="#660033" BorderStyle="Inset"  BorderWidth="5px">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" VerticalAlign="Top">
                <asp:Label ID="Label1" runat="server" Text="card Details" Font-Bold="true"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell >
                <asp:TextBox ID="TextBox1" runat="server" placeholder="First name"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="last name"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Image ID="img1" runat="server" ImageUrl="https://th.bing.com/th/id/R.18b7d4ead1a06c3a32e2d8957ec398e6?rik=7%2f0RkyjyNg%2fUiA&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fcredit-card-png-hd-major-credit-card-logo-png-clipart-8552.png&ehk=P3M54ovShy5tC8SzQfCO5aj32CyZe3a9kkquJYVluoA%3d&risl=&pid=ImgRaw&r=0" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Card number"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               
                <asp:TextBox ID="TextBox3" runat="server" placeholder="16 digit"></asp:TextBox>
<%--               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ValidationExpression="[0-9](16)"></asp:RegularExpressionValidator>--%>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Expiry Date"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="CVV"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="TextBox4" runat="server" type="date"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
<%--                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ValidationExpression="[0-9](3)"></asp:RegularExpressionValidator>--%>
         
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="3">
                <asp:TextBox ID="TextBox6" TextMode="MultiLine" runat="server" placeholder="address" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click"/>

            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                  <a href="AddToCart.aspx" class="font-medium text-indigo-600 hover:text-indigo-500">previes page </a>
     <a href="Default.aspx" class="font-medium text-indigo-600 hover:text-indigo-500">Home page </a>
   
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
</asp:Content>
