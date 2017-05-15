<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="margin-bottom: 15px;">
            <a href="https://www.facebook.com/metehanguler60" target="_blank">
                <img src="images/sosyal/facebook.png" style="height: 64px; width: 64px" /></a>
            <a href="https://twitter.com/MtVanPersie" target="_blank">
                <img src="images/sosyal/twitter.png" style="height: 64px; width: 64px" /></a>

        </div>
        <div style="font-size: 2em;">İletişim</div>
        Doldurulması Gerekli Alanlar (*)<br />
        <br />
        <div>
            İsim (*) :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="yorumİsim">İsim Boş Olamaz</asp:RequiredFieldValidator><br />
            <asp:TextBox ID="yorumİsim" runat="server" CssClass="yorumText" placeHolder="İsminiz"></asp:TextBox><br />
            Email (İsteğe Bağlı) :
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Hatalı E-mail" ControlToValidate="yorumEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
            <asp:TextBox ID="yorumEmail" runat="server" CssClass="yorumText" placeHolder="E-mail Adresiniz"></asp:TextBox><br />
            Mesaj (*) :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="YorumMesaj" ErrorMessage="RequiredFieldValidator">Mesaj Kısmı Boş Olamaz</asp:RequiredFieldValidator><br />
            <asp:TextBox ID="YorumMesaj" Wrap="true" runat="server" Height="167px" TextMode="MultiLine" CssClass="yorumText" placeHolder="Mesajınız..."></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Mesaj Gönder" OnClick="Button1_Click" CssClass="yorumButon" /><br />
        </div>
    </div>
</asp:Content>

