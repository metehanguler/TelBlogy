using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_makaleGuncelle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        makaleID = Request.QueryString["makaleID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdmgetir = new SqlCommand("Select * from Makale where makaleID='" + makaleID + "'", baglan.baglan());
            SqlDataReader drmgetir = cmdmgetir.ExecuteReader();
            DataTable dtmgetir = new DataTable("tablo");
            dtmgetir.Load(drmgetir);
            DataRow row = dtmgetir.Rows[0];
            txt_makaleBaslik.Text = row["makaleBaslik"].ToString();
            txt_makaleIcerik.Text = row["makaleIcerik"].ToString();
        }
    }
    protected void btn_guncelle_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/sresim/" + FileUpload1.FileName));
            SqlCommand cmdmguncelle = new SqlCommand("update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleIcerik='" + txt_makaleIcerik.Text + "', makaleResim='/sresim/" + FileUpload1.FileName + "' where makaleID='" + makaleID + "'", baglan.baglan());
            cmdmguncelle.ExecuteNonQuery();
            Response.Redirect("makaleduzenle.aspx");
        }
        else
        {

            SqlCommand cmdmguncelle = new SqlCommand("update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleIcerik='" + txt_makaleIcerik.Text + "' where makaleID='" + makaleID + "'", baglan.baglan());
            cmdmguncelle.ExecuteNonQuery();
            Response.Redirect("makaleduzenle.aspx");
        }
    }
}