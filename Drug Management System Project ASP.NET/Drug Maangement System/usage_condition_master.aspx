<%@ Page language="c#" Inherits="drugsample.usage_condition_master" CodeFile="usage_condition_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>usage_condition_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 24px; POSITION: absolute; TOP: 112px"
				runat="server" AutoGenerateColumns="False" BorderWidth="3px" BackColor="#CCCCCC" CellPadding="4" ForeColor="Black" Width="408px" BorderColor="#999999" BorderStyle="Solid"
				Height="112px" PageSize="5" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="drug_cond_id" HeaderText="Drug Cond Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="drug_cond_descr" HeaderText="Description"></asp:BoundColumn>
					<asp:BoundColumn DataField="any_other_details" HeaderText="Other Details"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label13" style="Z-INDEX: 101; LEFT: 100px; POSITION: absolute; TOP: 52px" runat="server"
				Width="228px" ForeColor="DarkCyan" Font-Names="Book Antiqua" Font-Size="Medium" Font-Bold="True"
				Font-Italic="True">Usage Conditions Of Drugs</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 102; LEFT: 232px; POSITION: absolute; TOP: 84px" runat="server"
				Width="132px" Font-Bold="True" Text="New Record" Font-Size="X-Small" Font-Names="Verdana" onclick="but_new_Click"></asp:button>
            &nbsp; &nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="136px" Style="z-index: 105; left: 144px;
                position: relative; top: 80px" Width="304px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px; z-index: 104; left: -70px; position: absolute; top: 0px; border-left-color: #000000; border-bottom-color: #000000; border-top-style: double; border-top-color: #000000; border-right-style: double; border-left-style: double; background-color: #ffffff; border-right-color: #000000; border-bottom-style: double;" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2" style="height: 19px">
							<asp:Label id="Label5" runat="server" Height="12px" Width="227px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Drug Usage Conditions</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; height: 24px;">
							<asp:Label id="Label1" runat="server" Height="12px" Width="135px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Drug Condition Id</asp:Label></TD>
						<TD style="height: 24px">
							<asp:TextBox id="txt_cond_id" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="83px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Description</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_cond_descr" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="97px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Other Details</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_other" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="but_grid" runat="server" Width="132px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
            </asp:Panel>
		</form>
	</body>
</HTML>
