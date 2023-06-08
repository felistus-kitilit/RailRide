using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RailRide
{
    public class Database
    {
        //define connection Method
        public static SqlConnection con;
        public static void Dbconnection()
        {
            string conString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\MAHLOX\\source\\repos\\RailRide 1.1\\RailRide\\App_Data\\GroupProject.mdf\";Integrated Security=True";
            //open the DB connection
            con = new SqlConnection(conString);
            //Check connection State
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            else
            {
                con.Open();
            }
        }
    }
}