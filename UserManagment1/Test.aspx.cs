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
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void btnSaveSenderId_Click(Object sender, EventArgs e)
        //{
        //    User user = new User();
        //    user.UserName = txtUserName.Value;
        //    user.UserPassword = txtUserPassword.Value;

        //    user.ExpireDate = Convert.ToDateTime(txtExpiredDate.Value);

        //    user.EmailID = txtemail.Value;
        //    user.MoblieNumber = MoblieNo.Value;
        //    user.Status = chstatus.Checked;

        //    using (UserRepository repo = new UserRepository())
        //    {
        //        repo.Insert(user);
        //        Response.Redirect(Request.Url.AbsoluteUri);

        //    }
        //}

    }

}