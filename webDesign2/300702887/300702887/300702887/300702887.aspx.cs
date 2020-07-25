using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _300702887
{
    public partial class _300702887 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbTime.Text = "<span style='color:green; fornt-weight:bold;'>Current date and time on a server: " + DateTime.Now.ToLongDateString() +
                " " + DateTime.Now.ToLongTimeString() + "</span>";
        }

        protected void gridAuthorsAndBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void gridVAuthors_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lbShowAuthor.Text = "<b>Books by " + ((Label)(gridVAuthors.SelectedRow.FindControl("authorFName"))).Text + " " + ((Label)(gridVAuthors.SelectedRow.FindControl("authorLName"))).Text + "</b>";
        
        }
    }
}