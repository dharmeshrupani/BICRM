using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace CRM
{
    public partial class CustomerInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DR-STUDIO;Initial Catalog=fyp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string pincode = (String)Session["pincodesession"];
            txtzipcode.Text = pincode;
        }

       
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string oid = (String)Session["orderid"];
            string firstname = txtfirstname.Text;
            Session["firstnamesession"] = firstname;
            string lastname = txtlastname.Text;
            Session["lastnamesession"] = lastname;
            string address = txtaddress.Text;
            Session["addresssession"] = address;
            string pincode = Convert.ToString((String)Session["pincodesession"]);
            string emailid = txtemailid.Text;
            Session["emailidsession"] = emailid;
            string mobileno = txtmobileno.Text;
            Session["mobilenosession"] = mobileno;

            //FileStream fs1 = new FileStream("D:\\Order.txt", FileMode.OpenOrCreate, FileAccess.Write);
            //StreamWriter writer = new StreamWriter(fs1);
            //writer.Write("First Name : " + firstname + ", Last name : " + lastname + "");
            //writer.Close();

            string qr = "insert into customerinfo values(" + oid + ",'" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtaddress.Text + "'," + pincode + ",'" + txtemailid.Text + "','" + txtmobileno.Text + "')";
            SqlCommand cmd = new SqlCommand(qr, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("ConfirmOrder.aspx");
        }
    }
}