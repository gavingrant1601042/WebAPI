using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebServices
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-FOLUNFC;Initial Catalog=EmployeeDb;Integrated Security=True";
            con.Open();


            string dayofweek = DateTime.Now.DayOfWeek.ToString();
            String Day = dayofweek;
            if (dayofweek == "Monday")
            {
                Response.Write("Dont go to work");
            }
            else if (dayofweek == "Tuesday")
            {
                Response.Write("Tuesday");
            }
            else if (dayofweek == "Wednesday")
            {
                Response.Write("Wednesday");
            }
            else if (dayofweek == "Thursday")
            {
                Response.Write("Thursday");
            }
            else if (dayofweek == "Friday")
            {
                Response.Write("Friday");
            }
            else if (dayofweek == "Saturday")
            {
                Response.Write("Saturday");
            }
            else if (dayofweek == "Sunday")
            {
                Response.Write("Sunday");
            }
            else
            {
                Response.Write("Day of the week not detected");
            }





        

         

            if (!Page.IsPostBack)
            {
                DataShow();

            }
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Insert into emp_table(Name,address,city,country,telephoneNo,role,email,addresslocation)values('" + txt_name.Text.ToString() + "' , '" + txt_address.Text.ToString() + "','" + txt_city.Text.ToString() + "', '" + txt_country.Text.ToString() + "', '" + txt_telephoneNo.Text.ToString() + "','" + txt_role.Text.ToString() + "','" + txt_email.Text.ToString() + "', '" + txt_addresslocation.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();


        }
        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "Select *from emp_table";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update emp_table set Name='" + txt_name.Text.ToString() + "' , '"+txt_address.ToString()+  "' ,'" +txt_city.Text.ToString()+ "', '" +txt_country.Text.ToString()+ "', '" +txt_telephoneNo.Text.ToString()+ "','" +txt_role.Text.ToString()+ "','" +txt_email.Text.ToString()+ "', '" +txt_addresslocation.Text.ToString()+ "' where email='" +txt_email.Text.ToString()+ "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from emp_table where email ='" + txt_email.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();

          }
       
    }
    
}

