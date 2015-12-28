using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;

using FamilyFinance.SEO;

public partial class Views_Home : System.Web.UI.MasterPage
{
    protected string m_RootUrl;
    protected string m_WebRoot;

    public Views_Home()
    {
        m_RootUrl = Common.GetRootURL();
        m_WebRoot = Common.GetWebRoot();
    }

    private void OutputFileLink()
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendFormat("<link rel=\"stylesheet\" type=\"text/css\" href=\"/{0}/Css/Common.css\"/>", m_WebRoot);

        CssFiles.Text = sb.ToString();
    }

    private void InitPage()
    {
        OutputFileLink();
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            InitPage();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {

    }
}
