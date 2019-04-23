<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="InstallationView.aspx.cs" Inherits="BK_TJ.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-sm-offset-1 col-sm-3">
            <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="Order_Click" CssClass="form-control"/>
        </div>
    </div>
</asp:Content>
