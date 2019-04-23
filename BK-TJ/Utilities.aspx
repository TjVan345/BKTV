<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="Utilities.aspx.cs" Inherits="BK_TJ.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .thumbnail img {
            height: 200px;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-sm-1">
            <h2>Utilities</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="380px" Height="200px">
                    <div class="thumbnail">
                <img src="Images/software.jpg" alt="Software"/>
                <div class="caption text-center">
                    <a href="Software"><h3>Software</h3></a>
                </div>
            </div>
                </asp:TableCell>
                <asp:TableCell Width="380px" Height="200px">
                    <div class="thumbnail">
                <img src="Images/hardware.jpg" alt="Hardware"/>
                <div class="caption text-center">
                    <a href="Hardware"><h3>Hardware</h3></a>
                </div>
            </div>
                </asp:TableCell>
                <asp:TableCell Width="380px" Height="200px">
                    <div class="thumbnail">
                <img src="Images/installations.jpg" alt="Installations"/>
                <div class="caption text-center">
                    <a href="Installation"><h3>Installation</h3></a>
                </div>
            </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </div>
    </div>
    <div class="row">
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
