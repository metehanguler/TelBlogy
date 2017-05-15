using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
public partial class admin_mesajmail : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string iletisimID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        iletisimID = Request.QueryString["iletisimID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmkguncelle = new SqlCommand("Select * from Iletisim where iletisimID = '" + iletisimID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);
            DataRow row = dtkguncelle.Rows[0];
            TextBox1.Text = row["iletisimEmail"].ToString();
        }
    }

    protected void btnmesaj_cevap_Click(object sender, EventArgs e)
    {
        MailMessage email = new MailMessage();
        string Host = "itp13010058.com";
        string smtpUserName = "admin@itp13010058.com";
        string smtpPassword = "5Yh5fctaa2-";
        email.From = new MailAddress("admin@itp13010058.com");
        int smtpPort = 587;
        email.IsBodyHtml = true;
        email.Subject = TextBox2.Text;
        email.Body = mesajCevapCke.Text;
        email.To.Add(new MailAddress(TextBox1.Text));
        email.BodyEncoding = System.Text.Encoding.UTF8;
        SmtpClient smtp = new SmtpClient(Host, smtpPort);
        smtp.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
        smtp.Send(email);
        Response.Write("<script>alert('Mesaj Gönderildi')</script>");
        TextBox2.Text = "";
        mesajCevapCke.Text = "";

    }
}