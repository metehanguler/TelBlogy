using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_makaleduzenle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string makaleID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
        makaleID = Request.QueryString["makaleID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("Delete from Makale where makaleID='" + makaleID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        SqlCommand cmdmgetir = new SqlCommand("select * from makale order by makaleID desc", baglan.baglan());
        SqlDataReader drmgetir = cmdmgetir.ExecuteReader();
        ddl_makaleGetir.DataSource = drmgetir;
        ddl_makaleGetir.DataBind();
    }
}