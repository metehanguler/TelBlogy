using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class aramadetay : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string aranan = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        aranan = Request.QueryString["aranan"];
        if (IsPostBack == false)
        {
            SqlCommand cmdmakale = new SqlCommand("Select * from Makale where makaleBaslik like '%" + aranan + "%' or makaleIcerik like '%" + aranan + "%'", baglan.baglan());
            SqlDataReader drmakalegetir = cmdmakale.ExecuteReader();
            aramasonuc.DataSource = drmakalegetir;
            aramasonuc.DataBind();
        }
    }
}