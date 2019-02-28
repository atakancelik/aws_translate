<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AWS.aspx.cs" Inherits="Translate_AWS.AWS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col ">
                    <asp:TextBox ID="txt_SourceLanguageCode" Text="tr" BackColor="#999999" CssClass="w-100" runat="server" MaxLength="2"></asp:TextBox>
                    <asp:Button ID="btn_Swap" class="btn btn-secondary btn-lg btn-block" CssClass="w-100" runat="server" Text="Swap" OnClick="btn_Swap_Click" />
                    <asp:TextBox ID="txt_TargetLanguageCode" Text="en" BackColor="#999999" CssClass="w-100" runat="server" MaxLength="2"></asp:TextBox>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <asp:TextBox ID="txt_ToTranslate" runat="server" Height="400px"  CssClass="w-100" TextMode="MultiLine"></asp:TextBox>
                </div>   
            </div>
            <div class="row">
                <div class="col">
                    <asp:Button  class="btn btn-secondary btn-lg btn-block" ID="btn_Translate" CssClass="w-100" runat="server" Text="Translate" OnClick="btn_Translate_Click" />
                </div>   
            </div>
            <div class="row">
                <div class="col">
                    <asp:TextBox ID="txt_Translated" runat="server" Height="400px" CssClass="w-100" ReadOnly="True" TextMode="MultiLine" BackColor="#999999"></asp:TextBox>
                </div>   
            </div>
            <div class="row">
                <div class="col">
            <ul class="list-group list-group-flush">
                <li class="list-group-item active">Language Codes</li>
                <li class="list-group-item">Arabic (ar)</li>
                <li class="list-group-item">Chinese (zh)</li>
                <li class="list-group-item">Czech (cs)</li>
                <li class="list-group-item">French (fr)</li>
                <li class="list-group-item">German (de)</li>
                <li class="list-group-item">Italian (it)</li>
                <li class="list-group-item">Japanese (ja)</li>
                <li class="list-group-item">Portuguese (pt)</li>
                <li class="list-group-item">Russian (ru)</li>
                <li class="list-group-item">Spanish (es)</li>
                <li class="list-group-item">Turkish (tr)</li>
                <li class="list-group-item">English (en)</li>
            </ul>
        </div>   
        </div>
        </div>
    </form>
</body>
</html>
