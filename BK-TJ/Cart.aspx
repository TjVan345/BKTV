<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BK_TJ.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>        
        body {
            background-color: #FFF;
        }
        .newStyle1 {
            font-family: Arial;
        }
        .auto-style1 {
            width: 86px;
            height: 46px;
        }
        .auto-style2 {
            color: #FFFF00;
        }
        .auto-style4 {
            text-align: center;
            background-color: #74253D;
            color: #FFC107;
        }
        .auto-style5 {
            text-align: right;
            height: 74px;
        }
        .auto-style6 {
            width: 103px;
        }
        .auto-style7 {
            width: 752px;
        }
        .auto-style8 {
            width: 503px;
        }
        .auto-style10 {
            text-align: right;
            width: 909px;
        }
        .auto-style11 {
            text-align: right;
            height: 26px;
            margin-left: 40px;
        }
        .newStyle2 {
            font-family: Arial;
            font-size: x-small;
        }
        .newStyle3 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div>
            <div class="text-center">
                <h1>Shopping Cart</h1>
                <br />
            </div>
            <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gvCart_RowCancelingEdit" OnRowDeleting="gvCart_RowDeleting" 
                OnRowEditing="gvCart_RowEditing" OnRowUpdating="gvCart_RowUpdating" ClientIDMode="AutoID" HorizontalAlign="Center">
        <Columns>
            <asp:TemplateField HeaderText="Item">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td colspan="2" style="margin-left:15px; border-bottom-style: outset; border-bottom-color:#74253D; border-bottom-width: 3px">
                                <h5>
                                    <asp:Label ID="lblName" style="margin-left:15px;" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                                </h5>
                            </td>
                            <td class="text-right" style="border-bottom-style: outset; border-bottom-width: 3px; border-bottom-color:#74253D;">&nbsp;$<asp:Label style="margin-right:15px;" ID="Label4" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3" style="margin-left:15px;" class="auto-style6">
                                <asp:Image style="margin-left:15px; width:100px; height:100px;" ID="Image" runat="server" ImageUrl='<%# "/Images/ProductImages/" + Eval("IMAGE") %>' />
                            </td>
                            <td rowspan="3" class="auto-style8">
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                            </td>
                            <td class="auto-style5">&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Total: $<asp:Label ID="lblPrice" runat="server" Text='<%# String.Format("{0:n}", Double.Parse(Eval("PRICE").ToString()) * Int32.Parse(Eval("QUANTITY").ToString())) %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
    </asp:GridView>
            <table style="width:800px; align-content:center">
                <tr>
                    <td class="auto-style10">
    <asp:Label ID="lblGrandTotal" runat="server"  Visible="False"></asp:Label>
                    &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/OrderProduct.aspx" Text="Checkout" />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
