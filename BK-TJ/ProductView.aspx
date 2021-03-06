﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="BK_TJ.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="text-center">
            <asp:Label ID="lblName" Font-Size="XX-Large" runat="server" Text="Null"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="text-center">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/#.jpg" Height="300" Width="350" />
        </div>
    </div>
    <br />

    <div class="row">
        <div class="text-center">
            <asp:Label ID="lblDescription" runat="server" Text="Description" Font-Size="Large" Width="400" />
        </div>
    </div>
    <br />

    <div class="row">
        <div class="text-center">
            <asp:Label ID="lblPrice" runat="server" Text="Price" Font-Size="Medium"/>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-sm-offset-1 col-sm-3">
            <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="Add_Click" CssClass="form-control" />
        </div>
    </div>
</asp:Content>
