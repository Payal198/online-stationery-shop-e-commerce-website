<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Online_Stationery_Shop.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://cdn.tailwindcss.com"></script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div style ="background-image :url(https://th.bing.com/th/id/R.351a6f47291a60d8b52e71f03bb13e7c?rik=9XZG1WcLoQrZMw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f0%2f2%2f2%2f639458.jpg&ehk=XC0bn98Gv5pKDuFpM%2b3vcNcqrgiB1aOlVRLN7Z1OlAI%3d&risl=&pid=ImgRaw&r=0)">
   --%> <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8" >
  <div class="max-w-md w-full space-y-8">
     <div>
      <img class="mx-auto h-12 w-auto" src="https://thumbs.dreamstime.com/b/vector-logo-icon-stationery-store-200396869.jpg" alt="Workflow"/>
     
      
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">Sign in to your account</h2>
      <p class="mt-2 text-center text-sm text-gray-600">
        </p>
    </div>
     <input type="hidden" name="remember" value="true"/>
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="email-address" class="sr-only">Email address</label>
            <asp:TextBox ID="TextBox1" class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email address" runat="server"></asp:TextBox>   </div>
        <div>
          <label for="password" class="sr-only">Password</label>
            <asp:TextBox ID="TextBox2" type="password" class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password" runat="server"></asp:TextBox>    </div>
      </div>
 <div class="text-sm">
         <a href="Forgotpassword.aspx" class="font-medium text-indigo-600 hover:text-indigo-500"> Forgot your password? </a>
        </div>
     
      
      <div>
       <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" Text="login" Width="454px" BackColor="#0066FF" OnClick="Button1_Click" CssClass="auto-style2" Height="37px" />
        </div>
             <div class="flex items-center justify-between">
       <div class="flex items-center">
            <a href="loginasadmin.aspx" class="font-medium text-indigo-600 hover:text-indigo-500">Are you an admin? </a>
   
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="registration.aspx" class="font-medium text-indigo-600 hover:text-indigo-500">don't have account?</a><br />
            <a href="registration.aspx" class="font-medium text-indigo-600 hover:text-indigo-500">&nbsp;</a><asp:Label ID="Label3" runat="server" Text=""></asp:Label>   </div>
     

   </div>
  </div>
</div>
    </div>
</asp:Content>
