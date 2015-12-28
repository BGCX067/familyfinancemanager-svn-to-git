using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using FamilyFinance.Helpers;
using FamilyFinance.Constant;


public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {        
        //RightHelper.CheckLogin(string.Empty);
        //Response.Redirect("~/Views/Login.aspx");
        Response.Redirect(UrlrConstant.URL_PAGE_FRONT);
    }
}
