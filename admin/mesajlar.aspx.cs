using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_mesajlar : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string iletisimID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        iletisimID = Request.QueryString["iletisimID"];
        islem = Request.QueryString["islem"];
        if (islem=="sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Iletisim where iletisimID='"+iletisimID+"'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
            Response.Write("mesajlar.aspx");
        }
        SqlCommand cmdmesaj = new SqlCommand("select * from Iletisim", baglan.baglan());
        SqlDataReader drmesaj = cmdmesaj.ExecuteReader();
        DataList1.DataSource = drmesaj;
        DataList1.DataBind();
    }
}