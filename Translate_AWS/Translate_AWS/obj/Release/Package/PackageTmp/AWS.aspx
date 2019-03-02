<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AWS.aspx.cs" Inherits="Translate_AWS.AWS" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>AWS Translate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="~/Content/css/reset.css" rel="stylesheet" />
    <link href="~/Content/css/style.css" rel="stylesheet" />

    <link rel="manifest" href="~/Content/pwa/manifest.json">
	<script>		
		if ('serviceWorker' in navigator) {
			navigator.serviceWorker.register('/sw.js').then(function(registration) {
			// Registration was successful
			console.log('ServiceWorker registration successful with scope: ', registration.scope);
		}).catch(function(err) {
			// registration failed :(
				console.log('ServiceWorker registration failed: ', err);
			});
		}
	</script>
</head>
<body>
    <div class="top flex">
        <img src="/Content/img/layout/top-logo.png" alt="AWS Translate" />
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row inputs flex">
                <div class="select">
                    <asp:DropDownList ID="txt_SourceLanguageCode" runat="server">
                    <asp:ListItem Text="tr" />
                    <asp:ListItem Text="en" />
                    <asp:ListItem Text="es" />
                    <asp:ListItem Text="ru" />
                    <asp:ListItem Text="pt" />
                    <asp:ListItem Text="ja" />
                    <asp:ListItem Text="it" />
                    <asp:ListItem Text="de" />
                    <asp:ListItem Text="fr" />
                    <asp:ListItem Text="cs" />
                    <asp:ListItem Text="zh" />
                    <asp:ListItem Text="ar" />
                </asp:DropDownList>
                </div>
                <%--<asp:TextBox ID="txt_SourceLanguageCode" Text="tr" CssClass="w-100" runat="server" MaxLength="2"></asp:TextBox>--%>
                <asp:Button ID="btn_Swap" class="btn btn-secondary btn-lg btn-block" CssClass="w-100" runat="server" Text="Swap" OnClick="btn_Swap_Click" />
                <%--<asp:TextBox ID="txt_TargetLanguageCode" Text="en" CssClass="w-100" runat="server" MaxLength="2"></asp:TextBox>--%>
                <div class="select">
                    <asp:DropDownList ID="txt_TargetLanguageCode" runat="server">
                    <asp:ListItem Text="en" />
                    <asp:ListItem Text="tr" />
                    <asp:ListItem Text="es" />
                    <asp:ListItem Text="ru" />
                    <asp:ListItem Text="pt" />
                    <asp:ListItem Text="ja" />
                    <asp:ListItem Text="it" />
                    <asp:ListItem Text="de" />
                    <asp:ListItem Text="fr" />
                    <asp:ListItem Text="cs" />
                    <asp:ListItem Text="zh" />
                    <asp:ListItem Text="ar" />
                </asp:DropDownList>
                </div>
            </div>

            <div class="content flex">
                <asp:TextBox ID="txt_ToTranslate" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:Button class="btn btn-secondary btn-lg btn-block" ID="btn_Translate" CssClass="w-100" runat="server" Text="Translate" OnClick="btn_Translate_Click" />
                <asp:TextBox ID="txt_Translated" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
