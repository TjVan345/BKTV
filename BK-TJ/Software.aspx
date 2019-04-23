<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="Software.aspx.cs" Inherits="BK_TJ.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <h2>Software</h2>
        <br /><br />
        <div class="col-sm-12" style="width:100%;">
        <asp:DataList ID="dlUtilities" runat="server" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center">
            <ItemTemplate>
                <div class="text-left" style=" margin-top:30px; margin-bottom:30px; margin-right:10px; margin-left:10px; width:700px">
                    <asp:Table ID="Table2" runat="server">
                        <asp:TableRow>
                            <asp:TableCell Height="200px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Images/" + Eval("Image") %>' Height="180px" Width="260px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>' Font-Size="Large"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <div style="padding-left:50px;">
                                    <a href='<%# "ProductView?ID=" + Eval("ID") %>' style="padding-left:25px;">
                                        <asp:Label ID="btnView" runat="server" Text="View" CssClass="form-control text-center" Font-Size="Large" Width="100" Height="50"/>
                                    </a>
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </ItemTemplate>
        </asp:DataList>
        </div>
    </div>
</asp:Content>
