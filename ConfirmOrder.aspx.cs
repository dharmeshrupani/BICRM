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
    public partial class checkout : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DR-STUDIO;Initial Catalog=fyp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            GetData();

        }

        public void GetData()
        {
            string oid = (String)Session["orderid"];
            string pincode = Convert.ToString((String)Session["pincodesession"]);
            string fname = (String)Session["firstnamesession"];
            string lname = (String)Session["lastnamesession"];
            string address = (String)Session["addresssession"];
            string emailid = (String)Session["emailidsession"];
            string mobileno = (String)Session["mobilenosession"];

            lblorderid.Text = oid;
            lbltxtfirstname.Text = fname;
            lbllastname.Text = lname;
            lbladdress.Text = address;
            lblzipcode.Text = pincode;
            lblemailid.Text = emailid;
            lblmobileno.Text = mobileno;

            string qr = "Select product_name,size,MRP,ordered_quantity,total_price from tempcart where order_id = " + oid + "";
            SqlDataAdapter adp = new SqlDataAdapter(qr, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {               
                GridViewCart.Visible = true;
                GridViewCart.DataSource = dt;
                GridViewCart.DataBind();
            }
            else
            { }

            string qr1 = "select sum(total_price) from tempcart where order_id = '" + oid + "' ";
            SqlCommand cmd1 = new SqlCommand(qr1, con);
            con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Read();            
            int TotalAmount = Convert.ToInt32(dr1[0].ToString());
            lbltotalamount.Text = Convert.ToString(TotalAmount);
            con.Close();
        }

        protected void GridViewCart_SelectedIndexChanged(object sender, EventArgs e)
        {
            string oid = (String)Session["orderid"];
            String productname;
            productname = GridViewCart.SelectedRow.Cells[1].Text;
            

            string qr = "Delete from tempcart where order_id = '" + oid + "' AND product_name = '" + productname + "' ";
            SqlCommand cmd = new SqlCommand(qr, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GetData();
        }

        protected void btnorder_Click(object sender, EventArgs e)
        {
            string oid = (String)Session["orderid"];
            string qr = "Select product_id,product_name,size,MRP,ordered_quantity,total_price from tempcart where order_id = " + oid + "";
            SqlDataAdapter adp = new SqlDataAdapter(qr, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            foreach (DataRow row in dt.Rows)
            {
                string pid = row["product_id"].ToString();
                string pname = row["product_name"].ToString();
                string psize = row["size"].ToString();
                string pMRP = row["MRP"].ToString();
                string pordered_quantity = row["ordered_quantity"].ToString();
                int ordered_quantity = Convert.ToInt16(pordered_quantity);

                string tablename1 = (String)Session["tablesession1"]; 
                string tablename2 = (String)Session["tablesession2"];
                string dist1 = (string)Session["dist1session"];
                string dist2 = (string)Session["dist2session"];

                // first Vendor ............................................................................

                string qr1 = "Select stock from " + tablename1 + " where product_id = " + pid + "";
                SqlCommand cmd1 = new SqlCommand(qr1, con);
                con.Open();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                dr1.Read();
                int stock = Convert.ToInt16(dr1[0].ToString());                
                con.Close();

                int temp = stock - ordered_quantity;

                if(temp < 0)
                {
                    int remain_quantity = Math.Abs(temp);   // took the absolute value of stock...
                    
                    //inserting values into first vendor supply list..................
                    string qr2 = "insert into " + dist1 + " values('" + oid + "','" + pid + "','" + pname + "','" + psize + "','" + stock + "','" + pMRP + "')";
                    SqlCommand cmd2 = new SqlCommand(qr2, con);
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    //updating stock value into first vendor inventory list.........................
                    stock = 0;
                    string qr3 = "update " + tablename1 + " set stock = '" + stock + "'  where product_id = '" + pid + "' ";
                    SqlCommand cmd3 = new SqlCommand(qr3, con);
                    con.Open();
                    cmd3.ExecuteNonQuery();
                    con.Close();


                    //Second Vendor.............................
                    string qr4 = "Select stock from " + tablename2 + " where product_id = " + pid + "";
                    SqlCommand cmd4 = new SqlCommand(qr4, con);
                    con.Open();
                    SqlDataReader dr4 = cmd4.ExecuteReader();
                    dr4.Read();
                    int stockven2 = Convert.ToInt16(dr4[0].ToString());
                    con.Close();
                    
                    
                    //inserting values into second vendor supply list
                    string qr5 = "insert into " + dist2 + " values('" + oid + "','" + pid + "','" + pname + "','" + psize + "','" + remain_quantity + "','" + pMRP + "')";
                    SqlCommand cmd5 = new SqlCommand(qr5, con);
                    con.Open();
                    cmd5.ExecuteNonQuery();
                    con.Close();


                    //updating stock value into second vendor inventory list.........................
                    stockven2 = stockven2 - remain_quantity;
                    string qr6 = "update " + tablename2 + " set stock = '" + stockven2 + "'  where product_id = '" + pid + "' ";
                    SqlCommand cmd6 = new SqlCommand(qr6, con);
                    con.Open();
                    cmd6.ExecuteNonQuery();
                    con.Close();
                    
                }
                else if (temp >= 0)
                {
                    //inserting values into first vendor supply list..................
                    string qr2 = "insert into " + dist1 + " values('" + oid + "','" + pid + "','" + pname + "','" + psize + "','" + pordered_quantity + "','" + pMRP + "')";
                    SqlCommand cmd2 = new SqlCommand(qr2, con);
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    //updating stock value into first vendor inventory list.........................
                    stock = stock - ordered_quantity;
                    string qr3 = "update " + tablename1 + " set stock = '" + stock + "'  where product_id = '" + pid + "' ";
                    SqlCommand cmd3 = new SqlCommand(qr3, con);
                    con.Open();
                    cmd3.ExecuteNonQuery();
                    con.Close();
                }          

            }
            Response.Redirect("OrderComplete.aspx");
        }

    }
}