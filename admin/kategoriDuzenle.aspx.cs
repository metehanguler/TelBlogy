using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_kategoriDuzenle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string kategoriID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        kategoriID = Request.QueryString["kategoriID"];
        islem = Request.QueryString["islem"];

        if (islem=="sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Kategori where kategoriID='"+kategoriID+"'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }


        SqlCommand cmkgetir = new SqlCommand ("select * from Kategori",baglan.baglan());
        SqlDataReader drkgetir = cmkgetir.ExecuteReader();
        DataList1.DataSource = drkgetir;
        DataList1.DataBind();
    }
}