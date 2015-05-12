using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1
{
    public partial class _default : System.Web.UI.Page
    {
        public int x;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                x = 0;
                x++;
                lblX.Text = x.ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            x = Convert.ToInt32(lblX.Text);
            x++;
            lblX.Text = x.ToString();

            lblStudentDisplay.Text = txtStudentName.Text;
            lblPasswordDisplay.Text = txtPassword.Text;
            lblAddressDisplay.Text = txtFullAddress.Text;
            lblProvincesDisplay.Text = drplstProvinces.SelectedValue + " " + drplstProvinces.SelectedItem.Text;

            txtStudentName.Text = "";
            txtPassword.Text = "";
            txtFullAddress.Text = "";

            if (chkLaptopOwner.Checked == true) 
            {
                lblLaptopDisplay.Text = "Yes, I do own a laptop.";
            }
            else if (chkLaptopOwner.Checked == false)
            {
                lblLaptopDisplay.Text = "No, I do not own a laptop.";
            }

            foreach (ListItem item in btnlstEducationLevel.Items)
            {
                if (item.Selected == true)
                {
                    lblEducationDisplay.Text = item.Text + " ";
                }
            }

            foreach (ListItem item in chklstSkillsList.Items)
            {
                if (item.Selected == true)
                {
                    lblSkillsDisplay.Text += item.Text + " ";
                }
            }
        }
    }
}