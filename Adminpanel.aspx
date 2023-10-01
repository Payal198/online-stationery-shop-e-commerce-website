<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminpanel.aspx.cs" Inherits="Online_Stationery_Shop.Adminpanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://cdn.tailwindcss.com"></script>
     <style type="text/css">
         .auto-style1 {
             font-weight: bold;
             background-color: #00FFFF;
             margin-top: 33px;
         }
         .auto-style2 {
             font-weight: bold;
         }
         .auto-style3 {
             font-weight: bold;
             margin-top: 25px;
         }
         .auto-style4 {
             font-weight: bold;
             background-color: #00FFFF;
             margin-right: 2px;
             margin-top: 35px;
         }
         .auto-style5 {
             font-weight: bold;
             background-color: #00FFFF;
             margin-top: 39px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
   
     <div class="mt-10 sm:mt-0" >
  <div class="md:grid md:grid-cols-3 md:gap-6">
      
    <div class="mt-5 md:mt-0 md:col-span-2">
       
<div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
  <div class="max-w-md w-full space-y-8">
    <div>
      <img class="mx-auto h-12 w-auto" src="https://thumbs.dreamstime.com/b/vector-logo-icon-stationery-store-200396869.jpg" alt="Workflow"/>
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">Hey Admin </h2>
      <p class="mt-2 text-center text-sm text-gray-600">
      </p>
    </div>
    <form class="mt-8 space-y-6" action="#" method="POST">
     
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
            <p style="height: 73px">
    <br />
                <strong>
         <asp:button ID="Button1" runat="server" text="Add products" Height="45px" Width="400px" OnClick="Button1_Click" BackColor="#66FFFF" BorderStyle="Solid" CssClass="auto-style2" />
                </strong>
</p>
<p style="height: 73px">
    <strong>
    <asp:button ID="Button2" runat="server" text="view products" Height="45px" Width="400px" OnClick="Button2_Click" BorderStyle="Solid" CssClass="auto-style3" BackColor="#99FF66" />

    </strong>

</p>
<p style="height: 73px">
     <strong>
     <asp:button ID="Button3" runat="server" text="update product" Height="45px" Width="400px" OnClick="Button3_Click" BorderStyle="Solid" CssClass="auto-style4" BackColor="#66FFFF" />

     </strong>

</p>
<p style="height: 73px">
    <strong>
    <asp:button ID="Button4" runat="server" text="manage user" Height="45px" Width="400px" OnClick="Button4_Click" BorderStyle="Solid" CssClass="auto-style5" BackColor="#99FF66" />

    </strong>

</p>
            <p style="height: 73px">
     <strong>
     <asp:button ID="Button6" runat="server" text="manage user" Height="45px" Width="400px" OnClick="Button6_Click" BorderStyle="Solid" CssClass="auto-style4" BackColor="#66FFFF" />

     </strong>

</p>
<p style="height: 73px">
    <strong>
    <asp:button ID="Button5" runat="server" text="log out" Height="45px" Width="400px" OnClick="Button5_Click" BorderStyle="Solid" CssClass="auto-style1" BackColor="#99FF66" />

    </strong>

</p>
<p style="height: 73px">
    &nbsp;</p>
        </div></div></div></div></div>  </div></div>
</asp:Content>
