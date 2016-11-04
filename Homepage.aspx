<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/Homepage.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="welcome" runat="Server">

    <div id="pageBlock">
        <div id="About">
            <p>Welcome to the <b>NEIU Media Services Department</b> Website. This website will provide information about the following services:</p>
            <br />
            <ul>
                <li>Equipment loan outs for NEIU faculty and CMT (Communication, Media and Theatre) students. Equipment loan outs 
			include cameras, projectors, audio recording devices, and lighting kits for cameras. 
                </li>
                <li>Video recordings for classrooms and events. Classroom recordings are student presentations and event recordings are only for NEIU-related events.</li>
                <li>Audio/visual (AV) problems with projectors in the classroom.</li>
            </ul>
        </div>

        <div id="group">
        <div id="banner">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Image ID="Image1" Height="400" Width="580" runat="server" />
                    <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
                    <br>
                    <asp:Button ID="Button1" runat="server" Text="Stop" OnClick="Button1_Click" CssClass="button1bt" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        <div id="officeInfo">
            <h2>Office Hours</h2>
            <p>
                <strong>Monday - Friday: </strong>
                <br />
                <strong>8:00 AM - 10:00 PM</strong><br />
                <strong>Saturday: </strong>
                <br />
                <strong>8:00 AM - 4:00 PM</strong><br />
                <strong>Sunday:&nbsp; </strong><span>CLOSED</span>
            </p>
            <br /><br />

            <h2>Contact Information</h2>

            <p>NEIU MEDIA SERVICES</p>
            <p>
                5500 North St. Louis Avenue<br />
                Chicago, Illinois<br />
                60625-4699<br />
                Phone #: 773-442-5060
            </p>

            <asp:Label ID="lblPageHits" runat="server" Text=""></asp:Label>
            
        </div>
       </div>
    </div>

</asp:Content>





