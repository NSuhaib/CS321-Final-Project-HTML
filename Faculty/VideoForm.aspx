<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoForm.aspx.cs" Inherits="VideoFrom" Theme="SkinFile" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/VideoForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="welcome" Runat="Server">
        
        <h2 id="VideoForms">Video Recording Form</h2><br/>
		
        <div id="pageBlock">
            <div id="paraForm">
			    <p>Do you have an upcoming event that you would like to be recorded? If so, contact the Media Services department.</p><br />
				    <ul>
					    <li>We offer courtesy videography services to faculty and staff of the university community.</li>
					    <li>We specialize in recording campus wide events, as well as, classroom presentations.</li>
				    </ul><br />
				    <p><strong>*We do not provide photographers.*</strong></p><br /><br />
		    </div>	
			<br /><br />
			                
            <div id="info">
                <asp:ValidationSummary ID="vldAllFields"
                HeaderText="Please correct the following errors."
                BorderColor="Red" ForeColor="Red" 
                BorderStyle="Solid" runat="server" 
                />
                <br />

                <label for ="txtFirstName">First Name:</label> &nbsp;&nbsp;
                <asp:TextBox ID="txtFirstName" runat="server" ></asp:TextBox> &nbsp;&nbsp;
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
                <br /><br />

                <label for ="txtLastName">Last Name:</label> &nbsp;&nbsp;
                <asp:TextBox ID="txtLastName" runat="server" ></asp:TextBox> 
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
                    ForeColor="Red" >
                </asp:RequiredFieldValidator>
                <br /><br />

                <label for ="txtPhone">Phone Number:</label> &nbsp;&nbsp;
                <asp:TextBox ID="txtPhone" runat="server" > </asp:TextBox>
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
                <br /><br />

                <label for="email">Email Address: </label>&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="vldRegEmail" runat="server" 
                    ErrorMessage="Not a valid email."
                    ControlToValidate="txtEmail"
                    ValidationExpression=".+\@.+\..+"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="vldEmail" runat="server" 
                    ErrorMessage="Email is required."
                    ControlToValidate="txtEmail"
                    Display="Dynamic" 
                    ForeColor="Red" ></asp:RequiredFieldValidator>
                <br /><br />

<%--                <label for="date"> Date of Recording:</label>
                <asp:TextBox ID="txtRecordDate" runat="server"></asp:TextBox>
                <asp:Calendar ID="Calendar1" runat="server">--%>
                                
                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <label for="date">Date of Recording:</label> &nbsp;&nbsp;
                             <asp:TextBox ID="txtRecordDate" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="20px"
                                ImageUrl="~/Images/calendar_icon.jpg"
                                OnClick="ImageButton1_Click" Width="21px"
                                Style="margin-top: 0px" /><br />
                            <asp:Calendar ID="Calendar1" runat="server"
                                OnSelectionChanged="Calendar1_SelectionChanged" BackColor="lightyellow" BorderColor="Blue" BorderWidth="1px" CellPadding="1"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="10pt" ForeColor="Blue" Height="200px" Width="250px">
                        </asp:Calendar><br />

                            <%-- <asp:RequiredFieldValidator ID="vldPickUpDate" runat="server"
                        ErrorMessage="Pick up date is required."
                        ControlToValidate="txtPickUpDate"
                        Display="Dynamic"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>--%>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                <%--</asp:Calendar>
                <br /><br />--%>

                <label for ="time">Time of Recording:</label> &nbsp;&nbsp; 
                <input type="time" name="time" id="RecordTime" />
                <br /><br />

                 <label for ="txtRecordLocation">Location of Recording:</label> &nbsp;&nbsp;
                <asp:TextBox ID="txtRecordLocation" runat="server" ></asp:TextBox> 
                <asp:RegularExpressionValidator ID="vldRegRecordLocation" runat="server" 
                    ErrorMessage="Letters Only"
                    ControlToValidate="txtRecordLocation"
                    ValidationExpression="^[A-Z-a-z-0-9]+$"
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
              
                <asp:RequiredFieldValidator ID="vldRecordLocation" runat="server" 
                    ControlToValidate="txtRecordLocation" 
                    ErrorMessage="Location for Recording is required."
                    Display="Dynamic"
                    ForeColor="Red" >
                </asp:RequiredFieldValidator>
                <br /><br />
            
               <div id="edit">
                    <asp:Label ID="lblEditingNeeded" runat="server" Text="Editing Needed?"></asp:Label>
                    <asp:Label ID="Yes" runat="server" Text="Yes"></asp:Label>
                    <asp:RadioButton ID="EditingNeededYes" runat="server" />
                    <asp:Label ID="No" runat="server" Text="No"></asp:Label>
                    <asp:RadioButton ID="EditingNeededNo" runat="server" />
                    <br /><br />
               </div>

                <label for ="txtDvdLabel">DVD Label:</label> &nbsp;&nbsp;
                <asp:TextBox ID="txtDvdLabel" runat="server" ></asp:TextBox> 
                <asp:RegularExpressionValidator ID="vldRegDvdLabel" runat="server" 
                    ErrorMessage="Letters Only"
                    ControlToValidate="txtDvdLabel"
                    ValidationExpression="^[A-Z-a-z-0-9]+$"
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
            
                <asp:RequiredFieldValidator ID="vldDvdLabel" runat="server" 
                    ControlToValidate="txtDvdLabel" 
                    ErrorMessage=" DVD Label is required."
                    Display="Dynamic"
                    ForeColor="Red" >
                </asp:RequiredFieldValidator>
                <br /><br />
            
              <label for ="txtFormat">Format Type:</label> &nbsp;&nbsp;
            <asp:TextBox ID="txtFormat" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldRegFormat" runat="server" 
                    ControlToValidate="txtFormat" 
                    ErrorMessage=" Format Required."
                    Display="Dynamic"
                    ForeColor="Red" >
                </asp:RequiredFieldValidator>
                <br /><br />
            

            <label for ="txtNumCopies">Number of Copies:</label> &nbsp;&nbsp;
            <asp:TextBox ID="txtNumCopies" runat="server" MaxLength ="100"></asp:TextBox>
            <asp:RangeValidator id="vldNumCopies"
                ControlToValidate="txtNumCopies"
                MinimumValue="1"
                MaximumValue="100"
                Type="Integer"
                EnableClientScript="true"
                Text="The value must be from 1 to 100!"
                Display ="Dynamic"
                ForeColor="Red"
                runat="server">
            </asp:RangeValidator>
            <asp:RequiredFieldValidator ID="vldRegNumCopies" runat="server" 
                    ControlToValidate="txtNumCopies" 
                    ErrorMessage=" Number of Copies Required."
                    Display="Dynamic"
                    ForeColor="Red" >
            </asp:RequiredFieldValidator>
            <br /><br />

            <label for="txtComments" >Comments :</label> &nbsp;&nbsp;
            <asp:TextBox ID="txtComments" runat="server" TextMode ="multiline"></asp:TextBox>
           
            <div id="button">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="resetbt" />
            </div>
         </div>
         </div>
    
  </asp:Content>




