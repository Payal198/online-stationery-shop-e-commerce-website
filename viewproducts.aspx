<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="viewproducts.aspx.cs" Inherits="Online_Stationery_Shop.viewproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="mt-10 sm:mt-0">
  <div class="md:grid md:grid-cols-3 md:gap-6">
    <div class="mt-5 md:mt-0 md:col-span-2">
       
<div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
  <div class="max-w-md w-full space-y-8">
    <div>
      <img class="mx-auto h-12 w-auto" src="https://thumbs.dreamstime.com/b/vector-logo-icon-stationery-store-200396869.jpg" alt="Workflow"/>
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">products details </h2>
      <p class="mt-2 text-center text-sm text-gray-600">
      </p>
    </div>
    <form class="mt-8 space-y-6" action="#" method="POST">
     
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
            <p style="height: 73px">
     
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" Width="511px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="productID" SortExpression="productID" />
                <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            </Columns>
        </asp:GridView>
                </div>
          </div>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:stationeryshopConnectionString %>" 
            SelectCommand="SELECT [Id], [productname], [Brand], [price] FROM [productdetails]">
        </asp:SqlDataSource>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <a href="Adminpanel.aspx" class="font-medium text-indigo-600 hover:text-indigo-500" style="font-style: italic; color: #00FF00">previes page </a>
    
</asp:Content>
