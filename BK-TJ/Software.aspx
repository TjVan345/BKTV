<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="Software.aspx.cs" Inherits="BK_TJ.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <h2>Software</h2>
        <div class="col-sm-12" style="width:100%;">
        <asp:DataList ID="dlUtilities" runat="server" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center">
            <ItemTemplate>
                <div class="text-left" style=" margin-top:10px; margin-bottom:10px; margin-right:10px; margin-left:10px; width:700px">
                    <asp:Table ID="Table2" runat="server">
                        <asp:TableRow>
                            <asp:TableCell Height="200px">
                                <img src="Image/#.jpg" alt="Unable to Load" />
                                    <a href='<%# "ProductView?ID=" + Eval("ID") %>' style="padding-left:25px;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </a>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </ItemTemplate>
        </asp:DataList>
        </div>
    </div>
</asp:Content>
