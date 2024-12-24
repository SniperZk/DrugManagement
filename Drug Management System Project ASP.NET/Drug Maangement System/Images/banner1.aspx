<%@ Page language="c#" Inherits="drugsample.Images.Banner1" CodeFile="Banner1.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Banner1</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Image id="Image1" style="Z-INDEX: 101; LEFT: -44px; POSITION: absolute; TOP: 0px" runat="server"
				Width="850px" Height="56px" ImageUrl="DrugLogo1.jpg"></asp:Image>
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 103; LEFT: 624px; POSITION: absolute; TOP: 56px"
				runat="server" BackColor="#63C3A5" ForeColor="Black" NavigateUrl="../default.aspx" Target="_parent"
				Height="8px">Home</asp:HyperLink>
			<asp:Image id="Image2" style="Z-INDEX: 102; LEFT: -28px; POSITION: absolute; TOP: 56px" runat="server"
				Height="24px" Width="826px" BackColor="#63C3A5"></asp:Image>
		</form>
	</body>
</HTML>
