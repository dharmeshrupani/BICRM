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
    public partial class Home : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=DR-STUDIO;Initial Catalog=fyp;Integrated Security=True");


        

        public void Page_Load(object sender, EventArgs e)
        {
           
            pnlquant.Visible = false;
            lblmessage.Text = "";
            //btncheckout.Visible = false;
           
        }
        
        public void btnsearch_Click(object sender, EventArgs e)
        {
            GetData();
        }

        
        
        public void GetData()
        {
            string tablename1 = (String)Session["tablesession1"];
            string tablename2 = (String)Session["tablesession2"];
            string viewname = (String)Session["viewsession"];
            string search = txtsearch.Text;

            string qr = "Select product_id,product_name,size,TotalStock,price from " + viewname + " where product_name LIKE '%" + search + "%' ";
            SqlDataAdapter adp = new SqlDataAdapter(qr, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                pnlproductview.Visible = true;
                GridViewSearch.Visible = true;                
                GridViewSearch.DataSource = dt;
                GridViewSearch.DataBind();

                btncheckout.Visible = true;
                lblerror.Text = "";
            }
            else
            {
                //Display No Record FOUND on the Search!
                pnlproductview.Visible = false;
                lblerror.Text = " No Record FOUND on the Search!! ";
            }
        }

        public void GridViewSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            string viewname = (String)Session["viewsession"];
            pnlquant.Visible = true;
            pnlproductview.Visible = false;
            lblmessage.Text = "";

            string product_id = GridViewSearch.SelectedRow.Cells[1].Text;
            Session["productidsession"] = product_id;
            int TotalStock = Convert.ToInt32(GridViewSearch.SelectedRow.Cells[4].Text);

            string productname = lblproductname.Text = GridViewSearch.SelectedRow.Cells[2].Text;            
            string size = lblsize.Text = GridViewSearch.SelectedRow.Cells[3].Text;     
            string price = lblprice.Text = GridViewSearch.SelectedRow.Cells[5].Text;
            

            for (int i = 1; i <= TotalStock; i++)
            {
                cmbquantity.Items.Add(""+i+"");
            }

            
        }

        public void btnBuy_Click(object sender, EventArgs e)
        {
            string pid = (String)Session["productidsession"];
            string oid = (String)Session["orderid"];
            int productprice = Convert.ToInt16(lblprice.Text);
            int quantity = Convert.ToInt16(cmbquantity.SelectedItem.ToString());
            int TotalPrice = quantity * productprice;
            lblmessage.Text = "";

            string qr = "insert into tempcart values(" + oid + "," + pid + ",'" + lblproductname.Text + "','" + lblsize.Text + "'," + productprice + "," + quantity + "," + TotalPrice + ")";
            SqlCommand cmd = new SqlCommand(qr, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GetData();
            pnlquant.Visible = false;
            pnlproductview.Visible = true;
                
        }

        protected void btncheckout_Click(object sender, EventArgs e)
        {
            string oid = (String)Session["orderid"];
            string qr = "Select * from tempcart where order_id=" + oid + "";
            SqlDataAdapter adp = new SqlDataAdapter(qr, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("CustomerInfo.aspx");
            }
            else
            {
                lblmessage.Text = " Your didn't buy anything !!! ";
            }

            
        }


    }
}