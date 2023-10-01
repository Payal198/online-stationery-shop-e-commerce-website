<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Online_Stationery_Shop.Addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script src="https://cdn.tailwindcss.com"></script>
         <style type="text/css">
             .auto-style2 {
                 margin-left: 0px;
             }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <div class="mt-10 sm:mt-0">
  <div class="md:grid md:grid-cols-3 md:gap-6">
      
    <div class="mt-5 md:mt-0 md:col-span-2">
       
<div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
  <div class="max-w-md w-full space-y-8">
    <div>
      <img class="mx-auto h-12 w-auto" src="https://thumbs.dreamstime.com/b/vector-logo-icon-stationery-store-200396869.jpg" alt="Workflow"/>
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">Add products</h2>
      <p class="mt-2 text-center text-sm text-gray-600">
      </p>
    </div>
        <form class="mt-8 space-y-6" action="#" method="POST">
   
     <input type="hidden" name="remember" value="true"/>
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
           <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
               <asp:TextBox ID="TextBox2" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="product name" runat="server"></asp:TextBox> </div>
        
        <div>
       <asp:Label ID="Label3" runat="server" Text="Brand"></asp:Label>
            <asp:TextBox ID="TextBox3" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="product brand" runat="server"></asp:TextBox>  </div>
    <div>
            <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
       <asp:FileUpload ID="FileUpload1" runat="server" /><div>
           <asp:Label ID="Label5" runat="server" Text="category"></asp:Label>
               <asp:TextBox ID="TextBox4" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="product name" runat="server"></asp:TextBox> </div>
        
         <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="TextBox5" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Price" runat="server"></asp:TextBox> </div> 
               <asp:Label ID="Label6" runat="server" Text="quantity"></asp:Label>
               <asp:TextBox ID="TextBox6" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="product name" runat="server"></asp:TextBox> </div>
         <br />
     
              <strong>

                  <asp:button id="Button1" runat="server" font-bold="True" font-italic="False" text="Add" width="454px" backcolor="#0066FF" onclick="Button1_Click" cssclass="auto-style2" height="37px" />
                  <br />
                  <asp:label id="Label7" runat="server"></asp:label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </strong>
           
            <a href="Adminpanel.aspx" class="font-medium text-indigo-600 hover:text-indigo-500" style="font-style: italic; color: #00FF00">previes page </a>
    
          </div>
     </div>
    </div>
  </div>
</div>

</asp:Content>
