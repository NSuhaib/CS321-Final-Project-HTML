<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="AccountPages_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server">
    <asp:ChangePassword ID="changePassword" runat="server" 
        SuccessText="Your password has been successfully changed" ContinueDestinationPageUrl="~/Homepage.aspx" CancelDestinationPageUrl="~/Homepage.aspx">

    </asp:ChangePassword>
</asp:Content>

