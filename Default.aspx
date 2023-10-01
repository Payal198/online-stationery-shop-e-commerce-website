<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Stationery_Shop.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://cdn.tailwindcss.com"></script> 
     <style type="text/css">
         .auto-style1 {
             margin-left: 20px;
         }
         .auto-style2 {
             margin-left: 0px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div> 
      <main class="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
        <div class="sm:text-center lg:text-left">
          <h1 class="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl">
            <span class="block text-indigo-600 xl:inline"> Stationery Shop</span></h1>
          <p class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0">Now you need not go to the shop for buying the stationery products. You can order the product you wish to buy through the website in your Smartphone. .</p>
            <p class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0">
            
                <asp:Label ID="Label3" runat="server" ></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">login</asp:HyperLink>
                <asp:Button ID="Button2" runat="server" Text="log out" OnClick="Button2_Click" />


            </p>
          <div class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
            <div class="mt-3 sm:mt-0 sm:ml-3">
                
            </div>
          </div>
        </div>
      </main>

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" Width="408px" PlaceHolder="search for stationery product" ></asp:TextBox>
          &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="search" CssClass="auto-style2" Height="31px" Width="87px"></asp:Button>
     
          &nbsp;<div class="lg:absolute lg:inset-y-28 lg:right-0 lg:w-1/2">
   <div>   <asp:Label ID="Label2" runat="server" ></asp:Label>
          
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
              <ContentTemplate>
                  <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                  </asp:Timer>
                  <asp:Image ID="Image5" runat="server" />
              </ContentTemplate>
          </asp:UpdatePanel>
         </div>
</div></div>
       <br />
      <br />
      <br />
      <br />
       &nbsp;&nbsp;
    <table align="center">
    <tr>
    <td align="center" class="style1" >
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id"  DataSourceID="SqlDataSource1" style="margin-right: 3px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
            <%--  --%>
            <ItemTemplate>
                
                productName:
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                <br />
               <asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# Eval("image") %>' Width='300px' Height='300px' />
                <div class="all">
                    stock:
                    <asp:Label CssClass="txtstock" ID="Label1" runat = "server" Text='<%# Eval("quantity") %>' BackColor='<%# (int)Eval("quantity") <=10 ? System.Drawing.Color.Pink : System.Drawing.Color.Yellow %>'>
                    </asp:Label>

                </div>
               <br />
                price: <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                 <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("Id") %>' visible="False"></asp:Label>
                <br />
                quantity:
                <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem > 1</asp:ListItem>
                     <asp:ListItem > 2</asp:ListItem>
                     <asp:ListItem > 3</asp:ListItem>
                     <asp:ListItem > 4</asp:ListItem>
                     <asp:ListItem > 5</asp:ListItem>
                </asp:DropDownList>
             <br />
                <asp:Button ID="Button1" runat="server" BackGround="blue" CommandArgument='<%# Eval("Id")%>' CommandName="AddToCart" Text="Add To Cart" />
<br />
           </ItemTemplate>
        </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:stationeryshopConnectionString %>" 
            SelectCommand="SELECT [Id], [productName], [Image], [price], [quantity] FROM [productdetails]">
        </asp:SqlDataSource>
        </td>      
    </tr>
    </table>
        
</asp:Content>
