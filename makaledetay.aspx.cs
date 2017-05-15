using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class makaledetay : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdmakale = new SqlCommand("SELECT Makale.makaleEkleyen, Makale.makaleBaslik,Makale.makaleResim, Makale.makaleIcerik, Makale.makaleID, Makale.makaleTarih, Makale.makaleOkunma, Makale.makaleYorum, Kategori.kategoriAd, Kategori.kategoriID FROM Kategori INNER JOIN Makale ON Kategori.kategoriID = Makale.kategoriID where Makale.makaleID='" + makaleID + "'", baglan.baglan());
            SqlDataReader drmakale = cmdmakale.ExecuteReader();
            dtl_makalebilgi.DataSource = drmakale;
            dtl_makalebilgi.DataBind();
            SqlCommand cmdokunma = new SqlCommand("update Makale set makaleOkunma=makaleOkunma+1 where makaleID='" + makaleID + "'", baglan.baglan());
            cmdokunma.ExecuteNonQuery();
            SqlCommand yorumgetir = new SqlCommand("Select yorumResim,yorumAdSoyad,yorumTarih,yorumIcerik from Yorum where makaleID='" + makaleID + "' and yorumOnay=1", baglan.baglan());
            SqlDataReader dryorum = yorumgetir.ExecuteReader();
            DataList1.DataSource = dryorum;
            DataList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string makaleID = Request.QueryString["makaleID"];
        SqlCommand cmdyorumEkle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumEmail,yorumIcerik,yorumResim,makaleID) values ('" + yorumİsim.Text + "','" + yorumEmail.Text + "','" + YorumMesaj.Text + "','/images/user.png', '" + makaleID + "')", baglan.baglan());
        cmdyorumEkle.ExecuteNonQuery();
        yorumEmail.Text = "";
        yorumİsim.Text = "";
        YorumMesaj.Text = "";
    }
}