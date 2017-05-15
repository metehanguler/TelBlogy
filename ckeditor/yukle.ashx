<%@ WebHandler Language="C#" Class="Yukle" %>
using System; 
using System.Web; 
using System.IO;
public class Yukle : IHttpHandler
{
    public void ProcessRequest(HttpContext upload)
    {
        HttpPostedFile Yukle = upload.Request.Files["upload"];
        string CKEditorFuncNum = upload.Request["CKEditorFuncNum"];
        string DosyaAdı = Path.GetFileNameWithoutExtension(Yukle.FileName);
        string uzanti = Path.GetExtension(Yukle.FileName).ToLower();
        string sonresimadi = Guid.NewGuid().ToString();

        if (uzanti == ".jpg" | uzanti == ".gif" | uzanti == ".png" | uzanti == "jpeg")
        {
            Yukle.SaveAs(upload.Server.MapPath(".") + "\\upload\\" + DosyaAdı  + uzanti);
            string url = "/ckeditor/upload/" + DosyaAdı + uzanti;
            upload.Response.Write("<script>window.parent.CKEDITOR.tools.callFunction(" + CKEditorFuncNum + ", \"" + url + "\");</script>");
            upload.Response.End();
        }
        else
        {
            upload.Response.Write("Desteklenmeyen dosya tipi..."); 
            upload.Response.Write("Desteklenmeyen dosya tipi...");
            
        }
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}