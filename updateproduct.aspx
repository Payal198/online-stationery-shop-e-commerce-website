<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="updateproduct.aspx.cs" Inherits="Online_Stationery_Shop.updateproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        OnPageIndexChanging ="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
         OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="#00FFCC" HorizontalAlign="Center" Height="266px" Width="1114px" CssClass="auto-style1" >
       <Columns>
           <asp:TemplateField HeaderText=" product ID"><ItemStyle HorizontalAlign="Center" />
               <ItemTemplate>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="  name"><ItemStyle HorizontalAlign="Center" />
                 <EditItemTemplate>
                      <asp:Textbox ID="Textbox1" runat="server" Text='<%# Eval("productname") %>'></asp:Textbox>
              </EditItemTemplate>
               <ItemTemplate>
               <asp:Label ID="Labelp" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="  brand"><ItemStyle HorizontalAlign="Center" />
                <EditItemTemplate>
                      <asp:Textbox ID="Textbox2" runat="server" Text='<%# Eval("Brand") %>'></asp:Textbox>
              </EditItemTemplate>
               <ItemTemplate>
               <asp:Label ID="Label2" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText="  image"><ItemStyle HorizontalAlign="Center" />
               <EditItemTemplate>
                   <asp:FileUpload ID="FileUpload1" runat="server" />
                   </EditItemTemplate>
                    <ItemTemplate>
               <asp:Image ID="image1" runat="server" imageUrl='<%# Eval("Image") %>' Height="100px" Width="100px"></asp:Image>
                   </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText=" category"><ItemStyle HorizontalAlign="Center" />
                <EditItemTemplate>
                      <asp:Textbox ID="Textbox5" runat="server" Text='<%# Eval("category") %>'></asp:Textbox>
              </EditItemTemplate>
               <ItemTemplate>
               <asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText=" price"><ItemStyle HorizontalAlign="Center" />
                <EditItemTemplate>
                      <asp:Textbox ID="Textbox3" runat="server" Text='<%# Eval("price") %>'></asp:Textbox>
              </EditItemTemplate>
               <ItemTemplate>
               <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
            <asp:TemplateField HeaderText=" quantity"><ItemStyle HorizontalAlign="Center" />
                 <EditItemTemplate>
                      <asp:Textbox ID="Textbox4" runat="server" Text='<%# Eval("quantity") %>'></asp:Textbox>
              </EditItemTemplate>
               <ItemTemplate >
               <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
               </ItemTemplate>
           </asp:TemplateField>
           <asp:CommandField HeaderText ="operation" ShowEditButton="true" ><ItemStyle HorizontalAlign="Center" />
               </asp:CommandField>
            
       </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Overline="True" />
        <RowStyle BorderStyle="Solid" />
    </asp:GridView>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
   <a href="Adminpanel.aspx" class="font-medium text-indigo-600 hover:text-indigo-500"><strong>previes page</strong> </a>
    
</asp:Content>
