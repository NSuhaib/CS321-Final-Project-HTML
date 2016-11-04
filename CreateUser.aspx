<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server">
     <div>
         <asp:CreateUserWizard ID="wizCreateUser" runat="server"
         LoginCreatedUser="False"
         ContinueDestinationPageUrl="~/Login.aspx"
         CompleteSuccessText="The account was succesfully created."
         OnCreatedUser="wizCreateUser_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="Create New User">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2">Create New User</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                            ControlToValidate="UserName" 
                                                            ErrorMessage="User Name is required." 
                                                            ToolTip="User Name is required." 
                                                            ValidationGroup="wizCreateUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                            ControlToValidate="Password"
                                                            ErrorMessage="Password is required." 
                                                            ToolTip="Password is required." 
                                                            ValidationGroup="wizCreateUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                            AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                            ControlToValidate="ConfirmPassword" 
                                                            ErrorMessage="Confirm Password is required." 
                                                            ToolTip="Confirm Password is required." 
                                                            ValidationGroup="wizCreateUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                            ControlToValidate="Email"
                                                             ErrorMessage="E-mail is required." 
                                                            ToolTip="E-mail is required."
                                                             ValidationGroup="wizCreateUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                       
                        
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                      ControlToCompare="Password" 
                                                      ControlToValidate="ConfirmPassword"
                                                      Display="Dynamic" 
                                                      ErrorMessage="The Password and Confirmation Password must match." 
                                                      ValidationGroup="wizCreateUser"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>

                    </table>
                      
                    <asp:Label ID="lblRoles" runat="server" Visible="false" Text="Select User Role: "></asp:Label>
                      <asp:RadioButtonList ID="lstRoles" runat="server" Visible="true" 
                                            AutoPostBack="true">
                      <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                     <asp:ListItem Text ="Student" Value ="Student"></asp:ListItem>
                      <asp:ListItem Text="Faculty" Value="faculty"></asp:ListItem>
                      </asp:RadioButtonList>

                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>


        </WizardSteps>
    </asp:CreateUserWizard>
         
           
    </div>

</asp:Content>

