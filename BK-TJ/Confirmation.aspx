<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="BK_TJ.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="text-center">
            <h1>Order Confirmed!</h1>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="text-center">
            <asp:Label ID="lblOrder" runat="server"></asp:Label>
        </div>
    </div>
    <br /><br />
    <div class="row">
        <div class="" style="justify-content:center;">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Utilties" CssClass="form-control" OnClick="Return_Click"/>
        </div>
    </div>
    <br />
</asp:Content>
