<%@ Page language="c#" Inherits="drugsample.reaction_agent_master" CodeFile="reaction_agent_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>reaction_agent_master</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 40px; POSITION: absolute; TOP: 112px"
				runat="server" CellPadding="4" BackColor="#CCCCCC" BorderWidth="3px"
				AutoGenerateColumns="False" ForeColor="Black" Height="124px" BorderStyle="Solid" BorderColor="#999999"
				Width="464px" PageSize="5" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" CellSpacing="2">
				<SelectedItemStyle ForeColor="White" BackColor="#000099" Font-Bold="True"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="DarkCyan"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="reaction_agent_id" HeaderText="Reaction Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="reaction_short_name" HeaderText="Short Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="reaction_long_name" HeaderText="Long Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="reaction_general_descr" HeaderText="General Descr"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="Black" BackColor="#CCCCCC" Mode="NumericPages"></PagerStyle>
                <ItemStyle BackColor="White" />
			</asp:datagrid>
			<asp:Label id="Label13" style="Z-INDEX: 104; LEFT: 148px; POSITION: absolute; TOP: 52px" runat="server"
				Width="188px" ForeColor="DarkCyan" Font-Size="Medium" Font-Names="Book Antiqua" Font-Bold="True"
				Font-Italic="True">Reaction Agent Details</asp:Label>
			<asp:button id="but_new" style="Z-INDEX: 103; LEFT: 368px; POSITION: absolute; TOP: 88px" runat="server"
				Width="132px" Font-Bold="True" Text="New Record" Font-Names="Verdana" Font-Size="X-Small" onclick="but_new_Click"></asp:button>
			<asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 104px; POSITION: absolute; TOP: 112px" runat="server"
				Height="140px" BorderStyle="Groove" BorderColor="Silver" Width="301px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="#008a8c" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="248px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Names="Verdana" Font-Size="Small">Reaction Agent Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px">
							<asp:Label id="Label1" runat="server" Width="138px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Reaction Agent ID</asp:Label></TD>
						<TD style="width: 136px">
							<asp:TextBox id="txt_reaction_id" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px" colSpan="1">
							<asp:Label id="Label2" runat="server" Width="93px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Short Name</asp:Label></TD>
						<TD style="width: 136px">
							<asp:TextBox id="txt_short_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 169px; HEIGHT: 21px">
							<asp:Label id="Label3" runat="server" Width="97px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Long Name</asp:Label></TD>
						<TD style="HEIGHT: 21px; width: 136px;">
							<asp:TextBox id="txt_long_name" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 169px; HEIGHT: 19px" align="right">
							<asp:Label id="Label6" runat="server" Width="102px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">General Descr</asp:Label></TD>
						<TD style="HEIGHT: 19px; width: 136px;">
							<asp:TextBox id="txt_general" runat="server" Width="136px" BorderStyle="Groove" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 169px">
							<asp:Button id="but_save" runat="server" Width="149px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Save Changes" onclick="but_save_Click"></asp:Button></TD>
						<TD style="width: 136px">
							<asp:Button id="but_grid" runat="server" Width="132px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Back To Grid" onclick="but_grid_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
