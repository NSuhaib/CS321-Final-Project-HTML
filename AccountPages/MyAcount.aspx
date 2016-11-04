<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyAcount.aspx.cs" Inherits="MyAcount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server">
     
    <br /><br /><br />   
    <div>
        <h1>My Account</h1>
        <div id="provideInfo" runat="server" visible="false">
            <h2>Please provide your account information</h2>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name: "/> &nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" Width="15em" runat="server"></asp:TextBox> &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="vldFirstName" runat="server" 
                ForeColor="Red" 
                ErrorMessage="Please enter a first name."
                ControlToValidate="txtFirstName" 
                Display="Dynamic" ValidationGroup="initialInfo">
            </asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lblLastName" runat="server" Text="Last Name: "/> &nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" Width="15em" runat="server"></asp:TextBox>&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="vldLastName" runat="server"
                ForeColor="Red"  
                ErrorMessage="Please enter a last name."
                ControlToValidate="txtLastName" 
                Display="Dynamic" ValidationGroup="initialInfo">
            </asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lblDateOfBirth" runat="server" Text="Select your date of birth"/><br /><br />
            <asp:Button ID="btnPrevYear" runat="Server" Text="Prev Year"  OnClick="btnPrevYear_Click" UseSubmitBehavior="false" /> &nbsp;&nbsp;
            <asp:Button ID="btnNextYear" runat="server" Text="Next Year"  OnClick="btnNextYear_Click" UseSubmitBehavior ="false" />
            <br /> <br />
            <asp:Calendar ID="dobCalendar" runat="server" SelectedDayStyle-BackColor="LightBlue">
            </asp:Calendar>
            <br /><br />

            <asp:Button ID="btnSave" ValidationGroup="initialInfo" 
                runat="server" Text="Save"  OnClick="btnSave_Click" /> &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" OnClick="btnCancel_Click"/>
        </div>
        <div id="showAccountInfo" runat="server" visible="false">
            <h2>Your Account Information</h2>
            <asp:Label ID="lblSavedFirstname" runat="server" Text="First Name: "/> &nbsp;&nbsp;
            <asp:Label ID="lblDisplayFirstname" runat="server" Text=""></asp:Label>
            <br /><br />

            <asp:Label ID="lblSavedLastName" runat="server" Text="Last Name: "/> &nbsp;&nbsp;
            <asp:Label ID="lblDisplayLastName" runat="server" Text=""></asp:Label>
            <br /><br />

            <asp:Label ID="lblDob" runat="server" Text="Date of Birth: "/> &nbsp;&nbsp;
            <asp:Label ID="lblDisplayDob" runat="server" Text=""></asp:Label>
            <br /><br />

            <asp:Button ID="btnEdit" runat="server" Text="Edit Account Information" OnClick="btnEdit_Click" />
        </div>
    </div>
</asp:Content>

