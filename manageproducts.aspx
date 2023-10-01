<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="manageproducts.aspx.cs" Inherits="Online_Stationery_Shop.manageproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style2 {
            font-weight: bold;
            background-color: #FFFF99;
            margin-right: 0px;
            margin-top: 56px;
        }
        .auto-style3 {
            font-weight: bold;
            background-color: #FFFF99;
            margin-top: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />  <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
               <strong style="background-color: #FFFFCC; border-style: solid">
                    <asp:Button ID="Button1" runat="server" Text="Add products" Width="400px" BorderStyle="Solid" CssClass="auto-style1" Height="50px" OnClick="Button1_Click" BackColor="#FFFF99" /></strong><br />
               </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                 <strong style="background-color: #FFFFCC; border-style: solid">
                 <asp:button Id="Button2" runat="server" text="view products" BorderStyle="Solid" CssClass="auto-style2" Height="50px" OnClick="Button2_Click" Width="400px" BackColor="#FFFF99" /></strong><br />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><strong style="background-color: #FFFFCC; border-style: solid">
                
                  <asp:button Id="Button3" runat="server" text="update products" BorderStyle="Solid" CssClass="auto-style3" Height="50px" OnClick="Button3_Click" Width="400px" BackColor="#FFFF99" /></strong><br />
            </asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
   <a href="Adminpanel.aspx" class="font-medium text-indigo-600 hover:text-indigo-500">Admin panel</a>
  
            </asp:TableCell>

        </asp:TableRow>
    </asp:Table>
</asp:Content>
