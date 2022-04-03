using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_Odonto
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userSess"] != null)
            {
                string userSess = Session["userSess"].ToString();
                lblUser.Text = "Bienvenido " + userSess;
            }
            else {
                Response.Redirect("Default.aspx");
            }
        }

        protected void BtnCerrar_Click(object sender, EventArgs e) {
            Session.Remove("userSess");
            Response.Redirect("Default.aspx");
        }
    }
}