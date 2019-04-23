using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BK_TJ.App_Code
{
    public class SQL
    {
        private static string myConnectionString;

        static SQL()
        {
            myConnectionString = WebConfigurationManager.ConnectionStrings["DataConnection"].ConnectionString;
        }

        public static DataTable SelectQuery(string sql)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(myConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sql;
                    try
                    {
                        conn.Open();
                        dt.Load(cmd.ExecuteReader());
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine("ERROR HERE-----------> " + ex.Message);
                    }

                    finally
                    {
                        conn.Close();
                    }

                    return dt;
                }
            }
        }
    }
}