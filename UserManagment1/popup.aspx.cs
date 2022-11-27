using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserManagment.core.Repository;

namespace UserManagment1
{
    public partial class popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            using (UserRepository repo = new UserRepository())
            {
                User user = new User();
                {
                    user.UserName = txtUsername.Value.Trim();
                    user.UserPassword = txtUserPassword.Value.Trim();
                    user.Status = txtStatus.Checked;

                    user.ExpireDate = Convert.ToDateTime(txtExpireyDate);
                    // user.ExpireDate = txtExpireDate.SelectedDate.Date;

                    user.MoblieNumber = txtMoblieNumber.Value.Trim();
                    user.EmailID = txtEmailID.Value.Trim();
                    user.RegistrationDate = DateTime.Today;

                }
                repo.Insert(user);
                repo.Save();


            }
        }
    }
}