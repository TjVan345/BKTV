<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeBehind="OrderInstallation.aspx.cs" Inherits="BK_TJ.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <h1>Order Installation</h1>
        <br />
        <div class="col-sm-offset-1 col-sm-3">
            <h3>Order Details</h3>
            <br />
        </div>
    </div>
    <%-- Name --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblName1" runat="server" Text="Name: "></asp:Label>
        </div>
        <div class="col-sm-3">
            <asp:Label ID="lblName2" runat="server" ></asp:Label>
        </div>
    </div>
    <%-- Price --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblPrice1" runat="server" Text="Price: "></asp:Label>
        </div>
        <div class="col-sm-3">
            <asp:Label ID="lblPrice2" runat="server"></asp:Label>
        </div>
    </div>
    <%-- Schedule --%>
    <br />
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblSchedule1" runat="server" Text="Schedule Day: "></asp:Label>
        </div>
        <div class="col-sm-3">
            <asp:TextBox ID="txtSchedule2" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="txtSchedule2" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator9" runat="server" ErrorMessage="Future dates only" ControlToValidate="txtSchedule2" CssClass="text-danger" Type="Date" Operator="GreaterThan"></asp:CompareValidator>
        </div>
    </div>
    <br /><br />
    <div class="row">
        <div class="col-sm-offset-1 col-sm-3">
            <h3>Contact Info</h3>
            <br />
        </div>
    </div>
    <%-- Fname --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblFname" runat="server" Text="First Name: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtFname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="txtFname" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <%-- Lname --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblLname" runat="server" Text="Last Name: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtLname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txtLname" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <%-- Address --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtAddress" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <%-- City --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtCity" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <%-- State --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblState" runat="server" Text="State: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtState" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <%-- Zipcode --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblZipcode" runat="server" Text="Zipcode: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtZipcode" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtZipcode" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Zipcode" ControlToValidate="txtZipcode" CssClass="text-danger" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <%-- Email --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <%-- Phone --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtPhone" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Format: 123-456-7890" ControlToValidate="txtPhone" CssClass="text-danger" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br /><br />
    <%-- Payment Info --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-3">
            <h3>Payment Info</h3>
        </div>
    </div>
    <br />
    <%-- Name on Card --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblNameOnCard" runat="server" Text="Name on Card: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtNameOnCard" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtNameOnCard" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <%-- Card # --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblCardNum" runat="server" Text="Card #: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtCardNum" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="txtCardNum" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Format: 1234-5678-9012-3456" ControlToValidate="txtCardNum" CssClass="text-danger" ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <%-- Exp. Month --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblExpMonth" runat="server" Text="Exp. Month: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtExpMonth" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtExpMonth" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Format: 2 digits" ControlToValidate="txtExpMonth" CssClass="text-danger" ValidationExpression="\d{2}"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Month (01-12)" ControlToValidate="txtExpMonth" MinimumValue="01" MaximumValue="12" CssClass="text-danger"></asp:RangeValidator>
        </div>
    </div>
    <br />
    <%-- Exp. Year --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblExpYear" runat="server" Text="Exp. Year: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtExpYear" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
        </div>
        <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtExpYear" CssClass="text-danger"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Format: 2 digits" ControlToValidate="txtExpYear" CssClass="text-danger" ValidationExpression="\d{2}"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Year Must Be > 19" ControlToValidate="txtExpYear" MinimumValue="20" MaximumValue="40" CssClass="text-danger"></asp:RangeValidator>
        </div>
    </div>
    <br />
    <%-- CCV --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblCcv" runat="server" Text="CCV: "></asp:Label>
        </div>
        <div class="col-sm-4">
            <asp:TextBox ID="txtCcv" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtCcv" CssClass="text-danger"></asp:RequiredFieldValidator>            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid CCV" ControlToValidate="txtCcv" CssClass="text-danger" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <%-- Complete Order --%>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-3">
            <asp:Button ID="btnComplete" runat="server" Text="Complete Order" CssClass="form-control" OnClick="Complete_Click" />
        </div>
    </div>
    <br />

</asp:Content>
