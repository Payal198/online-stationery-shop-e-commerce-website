<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginasadmin.aspx.cs" Inherits="Online_Stationery_Shop.loginasadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://cdn.tailwindcss.com"></script> 
</head>
<body style="background-image:url(https://i.pinimg.com/originals/d2/93/51/d293519dfe5fc6053378742b1883500e.jpg)">
    <form id="form1" runat="server">
    <div>
      <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
  <div class="max-w-md w-full space-y-8">
     <div>
      <img class="mx-auto h-12 w-auto" src="https://thumbs.dreamstime.com/b/vector-logo-icon-stationery-store-200396869.jpg" alt="Workflow"/>
     
      
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">Sign in to Admin account</h2>
      <p class="mt-2 text-center text-sm text-gray-600">
        </p>
    </div>
     <input type="hidden" name="remember" value="true"/>
      <div class="rounded-md shadow-sm -space-y-px">
        <div>
          <label for="Admin-name" class="sr-only">Admin name</label>
            <asp:TextBox ID="TextBox1" class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Admin name" runat="server"></asp:TextBox>   </div>
        <div>
          <label for="password" class="sr-only">Password</label>
            <asp:TextBox ID="TextBox2" type="password" class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password" runat="server"></asp:TextBox>    </div>
      </div>

      
      <div>
       <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="False" Text="login" Width="454px" BackColor="#0066FF" OnClick="Button1_Click" CssClass="auto-style2" Height="37px" />
        </div>
             <div class="flex items-center justify-between">
       <div class="flex items-center">
           
         <asp:Label ID="Label3" runat="server" Text=""></asp:Label>   </div>
      <a href="login.aspx" class="font-medium text-indigo-600 hover:text-indigo-500" style="font-style: italic; color: #0000FF; font-size: medium;">are you an user? </a>
    
      

   
  </div>
</div>
    </div>
    </div>
    </form>
</body>
</html>
