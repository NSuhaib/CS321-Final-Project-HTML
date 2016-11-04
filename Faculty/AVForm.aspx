<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AVForm.aspx.cs" Inherits="AVForm" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Styles/AVForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" runat="Server">

    <h2 id="avform">AVForm</h2>

    <div id="pageBlock">
        <div id="info">
            <br />


            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <label for="date">Date of Complaint:</label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtdateofcomplaint" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px"
                        ImageUrl="~/Images/calendar_icon.jpg"
                        OnClick="ImageButton1_Click" Width="21px"
                        Style="margin-top: 0px" /><br />
                    <asp:Calendar ID="Calendar1" runat="server"
                        OnSelectionChanged="Calendar1_SelectionChanged" BackColor="lightyellow" BorderColor="Blue" BorderWidth="1px" CellPadding="1"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="10pt" ForeColor="Blue" Height="200px" Width="250px" Visible="true"></asp:Calendar>
                    <br />

                 <%--   <asp:RequiredFieldValidator ID="vldPickUpDate" runat="server"
                        ErrorMessage="Pick up date is required."
                        ControlToValidate="txtdateofcomplaint"
                        Display="Dynamic"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>--%>
                </ContentTemplate>
            </asp:UpdatePanel>

            <label for="time">Time of Complaint</label>
            &nbsp;&nbsp;
                <input type="time" name="time" id="timeofcomplaint" />
            <br />
            <br />

            <label for="txtFirstName">First Name: </label>
            &nbsp;&nbsp;
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="vldRegFirstName" runat="server"
                ErrorMessage="Letters only!"
                ControlToValidate="txtFirstName"
                ValidationExpression="^[A-Z-a-z]+$"
                Display="Dynamic"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="vldFirstName" runat="server"
                ControlToValidate="txtFirstName"
                ErrorMessage="First name is required."
                Display="Dynamic"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />

            <label for="txtLastName">Last Name:</label>
            &nbsp;&nbsp;
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="vldRegLastName" runat="server"
                ErrorMessage="Letters Only"
                ControlToValidate="txtLastName"
                ValidationExpression="^[A-Z-a-z]+$"
                Display="Dynamic"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="vldLastName" runat="server"
                ControlToValidate="txtLastName"
                ErrorMessage="Last name is required."
                Display="Dynamic"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />

            <label for="txtPhone">Phone Number:</label>
            &nbsp;&nbsp;
                <asp:TextBox ID="txtPhone" runat="server"> </asp:TextBox>
            <asp:RegularExpressionValidator ID="vldRegPhone" runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="Please match the requested format."
                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                Display="Dynamic"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="vldPhone" runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="Phone number is required."
                Display="Dynamic"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />

            <label for="email">Email Address: </label>
            &nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="vldRegEmail" runat="server"
                ErrorMessage="Not a valid email."
                ControlToValidate="txtEmail"
                ValidationExpression=".+\@.+\..+"
                Display="Dynamic"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="vldEmail" runat="server"
                ErrorMessage="Email is required."
                ControlToValidate="txtEmail"
                Display="Dynamic"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <label for="txtRoomNumber">Room:</label>
            &nbsp;&nbsp;
                <asp:TextBox ID="txtRoomNumber" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="vldRegRoomNumber" runat="server"
                ErrorMessage="Letters Only"
                ControlToValidate="txtRoomNumber"
                ValidationExpression="^[A-Z-a-z-0-9]+$"
                Display="Dynamic"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="vldRoomNumber" runat="server"
                ControlToValidate="txtRoomNumber"
                ErrorMessage="Room Number is required."
                Display="Dynamic"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />


            <label for="lblComplaint">Complaint:</label>&nbsp;&nbsp;
            <asp:TextBox ID="txtComplaint" runat="server" MaxLength="300" TextMode="MultiLine"></asp:TextBox><br />

            <div id="button">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="submitbt" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="resetbt" />
            </div>
        </div>
    </div>
</asp:Content>

