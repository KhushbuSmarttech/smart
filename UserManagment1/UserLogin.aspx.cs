using System;
using UserManagment.core.Repository;

namespace UserManagment1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            using (UserRepository userRepo = new UserRepository())
            {
                string username = txtUName.Text.Trim();
                string userPassword = txtpassword.Text.Trim();
                var validuser = userRepo.UserAuthentication(username, userPassword);

                if (validuser != null)
                {
                    if (validuser.Status == false)
                    {
                        ShowAlertMessage("Your account is inactive contact to admin");
                    }
                    else if (validuser.ExpireDate <= DateTime.Now)
                    {
                        ShowAlertMessage("Your account is expired contact to admin");
                    }
                    else
                    {
                        
                        Response.Redirect("UserManagment.aspx");
                    }
                }
                else
                {
                    ShowAlertMessage("User is not valid");
                }
            }
        }
        private static void ShowAlertMessage(string error)
        {
            System.Web.UI.Page page = System.Web.HttpContext.Current.Handler as System.Web.UI.Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                System.Web.UI.ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }
    }
}