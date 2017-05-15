using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_kategoriGuncelle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string kategoriID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        kategoriID = Request.QueryString["kategoriID"];

        if (Page.IsPostBack==false)
        {
            SqlCommand cmkguncelle = new SqlCommand("Select * from Kategori where kategoriID = '" + kategoriID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextBox1.Text = row["kategoriAd"].ToString();
            TextBox2.Text = row["kategoriAciklama"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmkguncelle = new SqlCommand("update Kategori Set kategoriAd='"+TextBox1.Text+"', kategoriAciklama='"+TextBox2.Text+"' where kategoriID='"+kategoriID+"'", baglan.baglan());

        cmkguncelle.ExecuteNonQuery();
        Response.Redirect("kategoriDuzenle.aspx");
    }
}