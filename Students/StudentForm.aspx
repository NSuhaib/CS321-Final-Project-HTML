<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentForm.aspx.cs" Inherits="StudentForm" Theme="SkinFile"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="../Styles/ProfForm.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server">
    
        <h2 id="student">Student Equipment Loan Form</h2><br/>
		
			<div id="para">
			    <p>Students enrolled in any of the Communication, Media and Theatre production courses are 
                   allowed access to a number of audio/visual equipment that Media Services provides.
			    </p><br/>
			
			    <p><b>Equipment Rental Rules:</b></p><br/>
				
			    <ul>
				    <li>Must be requested 24 hours in advance from the time of pick-up</li>
				    <li>Must be returned on time</li>
				    <li>Weekday rentals are only for 1 day</li>
				    <li>Weekend rentals are for 3 days: Friday pick-up with a Monday drop-off</li>
				    <li>The requester shall be the only person to pick up or drop off the equipment</li>
			    </ul>
			</div>
       
			
		   <br/><br/>
				
			
                
    <div id="pageBlock">
        <div id="info">
                <asp:ValidationSummary ID="vldAllFields"
                HeaderText="Please correct the following errors."
                BorderColor="Red" ForeColor="Red" 
                BorderStyle="Solid" runat="server" 
                />
                <br />

                <label for ="txtFirstName">First Name: </label> &nbsp;&nbsp;
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

                <label for ="txtLastName">Last Name: </label> &nbsp;&nbsp;
                <asp:TextBox ID="txtLastName" runat="server" ></asp:TextBox> 
                <asp:RegularExpressionValidator ID="vldRegLastName" runat="server" 
                    ErrorMessage="Letters Only"
                    ControlToValidate="txtLastName"
                    ValidationExpression="^[A-Z-a-z]+$"
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="vldLastName" runat="server" 
                    ControlToValidate="txtLastName" 
                    ErrorMessage="Last name is required."
                    Display="Dynamic"
                    ForeColor="Red" >
                </asp:RequiredFieldValidator>
                <br /><br />

                <label for ="txtPhone">Phone Number: </label> &nbsp;&nbsp;
                <asp:TextBox ID="txtPhone" runat="server" > </asp:TextBox> &nbsp;&nbsp;
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
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> &nbsp;&nbsp;
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

                <label for ="txtNeiuID">NEIU ID #: </label> &nbsp;&nbsp;
                <asp:TextBox ID="txtNeiuID" runat="server" > </asp:TextBox> &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="vldNeiuID" runat="server" 
                    ControlToValidate="txtNeiuID" 
                    ErrorMessage="ID # is required."
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br /><br />

             <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <label for="date">Pick-up Date: </label> &nbsp;&nbsp;
                   <asp:TextBox ID="txtPickUpDate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px"
                        ImageUrl="~/Images/calendar_icon.jpg"
                        OnClick="ImageButton1_Click" Width="21px"
                        Style="margin-top: 0px" /><br />
                    <asp:Calendar ID="Calendar1" runat="server"
                        OnSelectionChanged="Calendar1_SelectionChanged" BackColor="lightyellow" BorderColor="Blue" BorderWidth="1px" CellPadding="1"
                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="10pt" ForeColor="Blue" Height="200px" Width="250px">
                <DayHeaderStyle BackColor="Black" ForeColor="yellow" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="Yellow" />
                <OtherMonthDayStyle ForeColor="Blue" />
                <SelectedDayStyle BackColor="navy" Font-Bold="True" ForeColor="yellow" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="Blue" BorderColor="Yellow" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="yellow" Height="25px" />
                <TodayDayStyle BackColor="blue" ForeColor="yellow" Font-Bold="True" />
                <WeekendDayStyle BackColor="LightBlue" /></asp:Calendar><br />

                </ContentTemplate>
            </asp:UpdatePanel>

                <br /><br />
                <label for ="time">Pick-up Time: </label> 
                <input type="time" name="time" id="PickUpTime" />
                <br /><br />
        
             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <label for="date">Return Date: </label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtReturnDate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="20px"
                        ImageUrl="~/Images/calendar_icon.jpg" OnClick="ImageButton2_Click"
                        Style="margin-top: 0px" Width="21px" /><br />
                    <asp:Calendar ID="Calendar2" runat="server"
                        OnSelectionChanged="Calendar2_SelectionChanged" BackColor="lightyellow" BorderColor="Blue" BorderWidth="1px" CellPadding="1"
                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="10pt" ForeColor="Blue" Height="200px" Width="250px">
                <DayHeaderStyle BackColor="Black" ForeColor="yellow" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="Yellow" />
                <OtherMonthDayStyle ForeColor="Blue" />
                <SelectedDayStyle BackColor="navy" Font-Bold="True" ForeColor="yellow" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="Blue" BorderColor="Yellow" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="yellow" Height="25px" />
                <TodayDayStyle BackColor="blue" ForeColor="yellow" Font-Bold="True" />
                <WeekendDayStyle BackColor="LightBlue" /></asp:Calendar><br />


                </ContentTemplate>
            </asp:UpdatePanel>
                
                <br /><br />

                <label for ="time">Return Time: </label> 
                <input type="time" name="time" id="ReturTime" />
                <br /><br />

                <label for ="txtCourseName">Course Name: </label> &nbsp;&nbsp;
                <asp:TextBox ID="txtCourseName" runat="server" ></asp:TextBox> &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="vldRegCourseName" runat="server"
                    ErrorMessage="Letters only!"
                    ControlToValidate="txtCourseName"
                    ValidationExpression="^[A-Z-a-z]+$"
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="vldCourseName" runat="server" 
                    ControlToValidate="txtCourseName" 
                    ErrorMessage="Course name is required."
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br /><br />

                <label for ="txtProfName">Professor Name: </label> &nbsp;&nbsp;
                <asp:TextBox ID="txtProfName" runat="server" ></asp:TextBox> &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="vldRegProfName" runat="server"
                    ErrorMessage="Letters only!"
                    ControlToValidate="txtProfName"
                    ValidationExpression="^[A-Z-a-z]+$"
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="vldProfName" runat="server" 
                    ControlToValidate="txtProfName" 
                    ErrorMessage="Professor name is required."
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <br /><br />
            <asp:Label ID="comments" runat="server" Text="Comments:"></asp:Label>
            <br />
            <asp:TextBox ID="txtcomments" runat="server" TextMode ="multiline"></asp:TextBox>
            <br /><br />
                
        </div>
        
        </div>
               <div id="button">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="submitbt" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="resetbt" />
               </div>
     <br /><br />
    <asp:Label ID="lblSessionTime" runat="server" Text="Label"></asp:Label>
    <br /><br />
    <asp:Label ID="lblRemainingTime" runat="server" Text="Label"></asp:Label>
</asp:Content>

