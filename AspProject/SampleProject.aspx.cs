using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProject
{
    public partial class SampleProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_num(object sender, EventArgs e)
        {
            double res = 0.0;
            res = Convert.ToDouble(this.firstnumber.Text) + Convert.ToDouble(secondnumber.Text);
            this.result.Text = res.ToString();
        }
        protected void subtract_num(object sender, EventArgs e)
        {
            double res = 0.0;
            res = Convert.ToDouble(this.firstnumber.Text) - Convert.ToDouble(secondnumber.Text);
            this.result.Text = res.ToString();
        }
        protected void multiply_num(object sender, EventArgs e)
        {
            double res = 0.0;
            res = Convert.ToDouble(this.firstnumber.Text) * Convert.ToDouble(secondnumber.Text);
            this.result.Text = res.ToString();
        }
        protected void divide_num(object sender, EventArgs e)
        {
            double res = 0.0;
            res = Convert.ToDouble(this.firstnumber.Text) / Convert.ToDouble(secondnumber.Text);
            this.result.Text = res.ToString();
        }
    }
}