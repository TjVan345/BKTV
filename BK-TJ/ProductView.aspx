<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="BK_TJ.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-sm-offset-1 col-sm-3">
            <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="Add_Click" CssClass="form-control" />
        </div>
    </div>
</asp:Content>
