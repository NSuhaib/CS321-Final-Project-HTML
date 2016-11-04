<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AVAssist.aspx.cs" Inherits="AVAssist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/AVAssist.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server">
  
     

    <h2 id = "assist">A/V Assist</h2>
		<br/>
		<div id="pdfsDiv">

			<h3>Having trouble with projectors? Check out the following pdfs: </h3>
			<p>Having trouble connecting laptop to projector? Please view the following <b>PDF:</b></p>
			<p class="pdfs"><a href="pdfs/UNGCTP.pdf" target = "_blank">Using NVIDIA Graphics Card to Project</a></p><br/>
			<p>Having trouble connecting MacBook
			to projector? Please view the following <b>PDF:</b></p>
			<p class="pdfs"><a href="pdfs/NMCTPI.pdf" target = "_blank">NEIU Mac to Projector Instructions</a></p><br/>
			<p>Having trouble with connecting media devices? Please view the following <b>PDF:</b></p>
			<p class="pdfs"><a href="pdfs/GPI.pdf" target = "_blank">General Podium Instructions</a></p><br/>
			
			<div id="YesNo">
				Are you still having trouble?&nbsp;
                Please fill this form.
                <p>If you are still having trouble click here for </p>
               <asp:LinkButton ID="lnkavform" Visible="true" runat="server" Text="AVForm" OnClick="lnkavform_Click" CausesValidation="false">

        </asp:LinkButton>
		        <asp:RadioButtonList ID="ButtonYN" runat="server" repeatdirection="horizontal"></asp:RadioButtonList>

                <asp:ValidationSummary ID="vldAllFields"
                HeaderText="Please correct the following errors."
                BorderColor="Green" ForeColor="Red" 
                BorderStyle="Solid" runat="server" />
                <br /><br />
            </div>
         </div>
</asp:Content>

