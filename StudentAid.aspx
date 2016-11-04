<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentAid.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="Styles/StudentAid.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server" >

        <h2 id = "schedule">Television Services - Part Time Staff Work Schedule(Spring 2015)</h2><br /><br />

        <div id="pageBlock">
			    <table border="1">
                        <tr>
				            <th>TIME</th>
				            <th>&nbsp;&nbsp;MONDAY&nbsp;&nbsp;</th>
				            <th>&nbsp;&nbsp;TUESDAY&nbsp;&nbsp;</th>
				            <th>&nbsp;&nbsp;WEDNESDAY&nbsp;&nbsp;</th>
				            <th>&nbsp;&nbsp;THURSDAY&nbsp;&nbsp;</th>
				            <th>&nbsp;&nbsp;FRIDAY&nbsp;&nbsp;</th>
				            <th>&nbsp;&nbsp;SATURDAY&nbsp;&nbsp;</th>
				        </tr>
				        <tr><td>&nbsp;&nbsp;8:00AM&nbsp;&nbsp;-&nbsp;&nbsp;9:00AM &nbsp;</td><td>Nayeem <br /> Samad</td><td>Khan <br /> Samad</td><td>Ahmed <br /> Samad</td><td>Ahmed <br /> Samad</td><td>Ahmed <br /> Khan</td><td>Nayeem</td></tr>
				        <tr><td>&nbsp;&nbsp;9:00AM&nbsp;&nbsp;-&nbsp;&nbsp;10:00AM &nbsp;</td><td>Nayeem <br /> Samad</td><td>Armando <br /> Samad</td><td>Ahmed <br /> Samad</td><td>Ahmed <br /> Samad</td><td>Ahmed <br /> Khan</td><td>Nayeem <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;10:00AM&nbsp;&nbsp;-&nbsp;&nbsp;11:00AM &nbsp;</td><td>Nayeem <br /> Mo <br /> Samad</td><td>Samad <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Mo <br /> Samad</td><td>Ahmed <br /> Mo <br /> Sheema</td><td>Ahmed<br /> Khan <br /> Samad</td><td>Nayeem <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;11:00AM&nbsp;&nbsp;-&nbsp;&nbsp;12:00PM &nbsp;</td><td>Armando <br /> Mo <br /> Armando</td><td>Samad <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Mo <br /> Samad</td><td>Ahmed <br /> Mo <br /> Samad</td><td>Ahmed <br /> Khan <br /> Samad</td><td>Nayeem <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;12:00PM&nbsp;&nbsp;-&nbsp;&nbsp;1:00PM &nbsp;</td><td>Mo <br /> Armando</td><td>Armando <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Mo <br /> Armando</td><td>Ahmed <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Samad</td><td>John</td></tr>
				        <tr><td>&nbsp;&nbsp;1:00PM&nbsp;&nbsp;-&nbsp;&nbsp;2:00PM &nbsp;</td><td>Nayeem <br /> Mo <br /> Armando</td><td>Armando <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Mo <br /> Armando</td><td>Ahmed <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Samad</td><td>John</td></tr>
				        <tr><td>&nbsp;&nbsp;2:00PM&nbsp;&nbsp;-&nbsp;&nbsp;3:00PM &nbsp;</td><td>Nayeem <br /> Khan <br /> Armando</td><td>Armando <br /> Mo/Justin <br /> Sheema</td><td>Ahmed <br /> Khan <br /> Armando</td><td>Ahmed <br /> Mo/Justin <br /> Sheema</td><td>Justin <br /> Samad</td><td>Nayeem <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;3:00PM&nbsp;&nbsp;-&nbsp;&nbsp;4:00PM &nbsp;</td><td>Nayeem <br /> Khan <br /> Armando</td><td>Justin <br /> Mo <br /> Sheema</td><td>Ahmed <br /> Nayeem</td><td>Ahmed <br /> Mo/Sheema <br /> Sheema</td><td>Justin <br /> Armando</td><td>Nayeem <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;4:00PM&nbsp;&nbsp;-&nbsp;&nbsp;5:00PM &nbsp;</td><td>Sheema <br /> Khan <br /> Armando</td><td>Armando <br /> Justin <br /> Sheema</td><td>Sheema <br /> Nayeem <br /> Khan</td><td>Justin <br /> Sheema</td><td>Justin <br /> Armando</td><td>John</td></tr>
				        <tr><td>&nbsp;&nbsp;5:00PM&nbsp;&nbsp;-&nbsp;&nbsp;6:00PM &nbsp;</td><td>Greg <br /> Khan <br /> Sheema</td><td>Greg <br /> Justin <br /> Sheema</td><td>Sheema <br /> Nayeem <br /> Khan</td><td>Greg <br /> Justin <br /> Sheema</td><td>Justin <br /> John</td><td rowspan="5" class="closed">Closed</td></tr>
				        <tr><td>&nbsp;&nbsp;6:00PM&nbsp;&nbsp;-&nbsp;&nbsp;7:00PM &nbsp;</td><td>Greg <br /> Khan <br /> Sheema</td><td>Greg <br /> Justin</td><td>Sheema <br /> Nayeem <br /> Khan</td><td>Greg <br /> Justin</td><td>Justin <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;7:00PM&nbsp;&nbsp;-&nbsp;&nbsp;8:00PM &nbsp;</td><td>Khan <br /> Greg</td><td>Greg <br /> John</td><td>Armando <br /> Nayeem <br /> Khan</td><td>Greg <br /> John</td><td>Justin <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;8:00PM&nbsp;&nbsp;-&nbsp;&nbsp;9:00PM &nbsp;</td><td>Khan <br /> Greg</td><td>Greg <br /> Justin <br /> John</td><td>Armando <br /> Nayeem <br /> Khan</td><td>Greg <br /> Justin <br /> John</td><td>Justin <br /> John</td></tr>
				        <tr><td>&nbsp;&nbsp;9:00PM&nbsp;&nbsp;-&nbsp;&nbsp;10:00PM &nbsp;</td><td>Khan <br /> Greg</td><td>Greg <br /> Justin <br /> John</td><td>Armando <br /> Nayeem <br /> Khan</td><td>Greg <br /> Justin <br /> John</td><td>Justin <br /> John</td></tr>
			    </table>
        </div>   
</asp:Content>

