using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CRM
{
    public partial class productinfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DR-STUDIO;Initial Catalog=fyp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }        

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            //string pincode1 = txtpincode.Text;

            string pincode = (txtpincode.Text);
            Session["pincodesession"] = pincode;
            string tablename1 = null;
            string tablename2 = null;
            string viewname = null;
            string dist1 = null;
            string dist2 = null;

            string qr = " select * from bizip where pincode =  '" + pincode + "' ";
            SqlCommand cmd = new SqlCommand(qr, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
           

            if (dr.HasRows)
            {
                tablename1 = dr[2].ToString();
                tablename2 = dr[3].ToString();
                viewname = dr[4].ToString();
                dist1 = dr[5].ToString();
                dist2 = dr[6].ToString();
                
                Session["tablesession1"] = tablename1;
                Session["tablesession2"] = tablename2;
                Session["viewsession"] = viewname;
                Session["dist1session"] = dist1;
                Session["dist2session"] = dist2;

                System.Random rand = new System.Random((int)System.DateTime.Now.Ticks);
                string orderid = Convert.ToString(rand.Next(1, 1000000000));
                Session["orderid"] = orderid;
                
                
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblerror.Text = "Service not available in your area";
            }

            con.Close();       
                                
        }       
    }
}