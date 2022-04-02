using System;

namespace ASPNET_Odonto
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click (object sender, EventArgs e) {

            string user = floatingInput.Text;
            string pass = floatingPassword.Text;
            Response.Redirect("home.html/");
        }


    }
}