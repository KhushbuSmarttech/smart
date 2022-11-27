using ClassLibrary1;
using System;
using System.Linq;
using System.Web.UI.WebControls;
using UserManagment.core.Repository;

namespace UserManagment1
{
    public partial class UserManagment : System.Web.UI.Page
    {
        public object Protected { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

            //  regdate.Value = DateTime.Today.ToShortDateString() + '.';
        }

        private void BindGrid()
        {
            using (UserRepository repo = new UserRepository())
            {
                var user1 = (from user in repo.GetAllUser()
                             select user);
                //var v = GridView1.DataKeys;
                //int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                //user1.Where(a => a.UserID == )
                GridView1.DataSource = user1;
                GridView1.DataBind();
            }
        }

        protected void Insert(object sender, EventArgs e)
        {
            using (UserRepository repo = new UserRepository())
            {
                User user = new User();
                {
                   user.UserName = txtUserName.Text.Trim();
                    user.UserPassword = txtUserPassword.Text.Trim();
                    user.Status = txtStatus.Checked;

                    user.ExpireDate = Convert.ToDateTime(txtExpireyDate.Value);
                    // user.ExpireDate = txtExpireDate.SelectedDate.Date;

                    user.MoblieNumber = txtMoblieNumber.Text.Trim();
                    user.EmailID = txtEmailID.Text.Trim();
                    user.RegistrationDate = DateTime.Today;

                }
                repo.Insert(user);
                repo.Save();

                Response.Redirect(Request.Url.AbsoluteUri);
            }

            this.BindGrid();
        }
        protected void btnSaveSenderId_Click(Object sender, EventArgs e)
        {
            User user = new User
            {
                UserName = UserName.Value,
                UserPassword = UPassword.Value,

                ExpireDate = DateTime.Parse(txtExpiredDate.Value),

                EmailID = txtemail.Value,
                MoblieNumber = MoblieNo.Value,
                Status = chstatus.Checked
            };

            using (UserRepository repo = new UserRepository())
            {
                repo.Insert(user);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
        }



        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();

        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int UserId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string username = (row.FindControl("txtUserName") as TextBox).Text;
            string password = (row.FindControl("txtUserPassword") as TextBox).Text;
            bool status = (row.FindControl("txtStatus") as CheckBox).Checked;
            var expiryDate =DateTime.Parse(((row.FindControl("txtExpireDate") as TextBox).Text));

          
            var MoblieNumber = (row.FindControl("txtMoblieNumber") as TextBox).Text;
            string EmailID = (row.FindControl("txtEmailID") as TextBox).Text;
            var regDate = DateTime.Today;

            using (UserRepository repo = new UserRepository())
            {
                var user = repo.GetUserById(UserId);
                user.UserID = UserId;
                user.UserName = username;
                user.UserPassword = password;
                user.Status = status;
                user.ExpireDate = expiryDate;
                user.MoblieNumber = MoblieNumber;
                user.EmailID = EmailID;
                user.RegistrationDate = regDate;

                repo.Update(user);
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            using (UserRepository repo = new UserRepository())
            {
                repo.Delete(userid);
            }
            this.BindGrid();
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