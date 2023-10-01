<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Stationery_Shop.Registration" %>
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
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">create your new account</h2>
      <p class="mt-2 text-center text-sm text-gray-600">
      </p>
    </div>
      <input type="hidden" name="remember" value="true"/>
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="your-name" class="sr-only">your name</label>
            <asp:TextBox ID="TextBox1"  required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="user name" runat="server"></asp:TextBox>  </div>
           <div>
          <label for="your-name" class="sr-only">username</label>
               <asp:TextBox ID="TextBox2" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="user name" runat="server"></asp:TextBox> </div>
        
        <div>
          <label for="Number" class="sr-only">phone number</label>
            <asp:TextBox ID="TextBox3" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Mobile number" runat="server"></asp:TextBox>  </div>
    <div>
          <label for="email-address" class="sr-only">Email address</label>
        <asp:TextBox ID="TextBox4" TextMode="Email" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email address" runat="server"></asp:TextBox>  </div>
   
       <div>
          <label for="password" class="sr-only">Password</label>
            <asp:TextBox ID="TextBox5" TextMode="password" required class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password" runat="server"></asp:TextBox>  </div>
      <div class="flex items-center justify-between">
        <div class="flex items-center">
            <br />
            <br />
         </div>

        <div class="text-sm">
         <a href="login.aspx" class="font-medium text-indigo-600 hover:text-indigo-500"> already have account? </a>
                      
            <br />
            <br />
                      
        </div>
      </div>

      <div>
          <strong>
         
          <asp:Button ID="Button1" runat="server" Font-Bold="True"  Text="sign in" Width="454px" BackColor="#0066FF" OnClick="Button1_Click" CssClass="auto-style2" Height="37px" />
          <br />
          <br />
          <br />
          <asp:Label ID="Label1" runat="server"></asp:Label>
                </strong>
          </div>

  </div>
</div>
    </div>
  </div>
</div>
   
</asp:Content>
