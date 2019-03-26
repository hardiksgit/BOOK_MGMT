using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

    namespace WcfStudentService
{
    
    public class BookService : IBookService
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public string AddBook(Book s)
        {
            string result = "";
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=WCF;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();

                string Query = @"INSERT INTO BookTable (BookName,Author,genre,Add_Date,Complete_Date)  
                                               Values(@BookName,@Author,@genre,@Add_Date,@Complete_Date)";

                cmd = new SqlCommand(Query, con);
                

                
                cmd.Parameters.AddWithValue("@BookName",s.BookName);
               
                cmd.Parameters.AddWithValue("@Author", s.Author);
                cmd.Parameters.AddWithValue("@Add_date",s.Add_Date.Date);
                cmd.Parameters.AddWithValue("@Complete_Date",s.Complete_Date.Date);
                cmd.Parameters.AddWithValue("@genre", s.genre);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                result = "Record Added Successfully !";
            }
            catch (FaultException)
            {
                result = "Error:Add Operation Failed";
            }

            return result;
        }

        public List<Book> GetAllBooks()
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=WCF;Integrated Security=True");
                
                string Query = "SELECT * FROM BookTable";

                SqlDataAdapter sda = new SqlDataAdapter(Query, con);
                sda.Fill(ds);
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error: " + fex);
            }

            List<Book> objList = new List<Book>();
            foreach (DataRow _dataRow in ds.Tables[0].Rows)
            {
                Book obj=new Book();
                obj.id = Convert.ToInt32(_dataRow["id"]);
                obj.BookName = Convert.ToString(_dataRow["BookName"]);

               
                obj.genre = Convert.ToString(_dataRow["genre"]);
                obj.Author = Convert.ToString(_dataRow["Author"]);
                obj.Add_Date = Convert.ToDateTime(_dataRow["Add_Date"]);
                if (!DBNull.Value.Equals(_dataRow["Complete_Date"]))
                {
                    obj.Complete_Date = Convert.ToDateTime(_dataRow["Complete_date"]);
                }
                else
                {
                   
                }
                objList.Add(obj);
            }

            return objList;
        }

        public Book SearchBookById(int id)
        {
            Book s = new Book();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=WCF;Integrated Security=True");
                con.Open();

                SqlCommand cmd = new SqlCommand(@"SELECT * FROM BookTable WHERE id=@id", con);
                cmd.Parameters.AddWithValue("@id", id);
                
                cmd.CommandType = CommandType.Text;

               

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {

                    if (rdr.HasRows)
                    {
                        rdr.Read(); 

                        s.id = rdr.GetInt32(0);
                        s.BookName = rdr.GetString(1);
                        
                        s.Author = rdr.GetString(4);
                        
                        s.Add_Date=rdr.GetDateTime(2);
                        if (!DBNull.Value.Equals(rdr.GetValue(3)))
                        {
                            s.Complete_Date = Convert.ToDateTime(rdr.GetDateTime(3));
                        }
                        s.genre = rdr.GetString(5);
                    }
                }



            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error:  " + fex);
            }
            return s;
        }


        public string DeleteBook(int id)
        {
            string result = "";
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source = MSI\SQLEXPRESS; Initial Catalog = WCF; Integrated Security = True");
                SqlCommand cmd = new SqlCommand();

                string Query = @"DELETE FROM BookTable WHERE id=@id";

                cmd = new SqlCommand(Query, con);
             

                cmd.Parameters.AddWithValue("@id",id);
                
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                result = "Record Deleted Successfully for G.R. Number " + id;
            }
            catch (FaultException)
            {
                result = "Error:Delete Operation for G.R. Number "+id+" Failed.";
            }

            return result;
        }

        public string UpdateBookById(Book s)
        {

            string result = "";
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=WCF;Integrated Security=True");
                SqlCommand cmd = new SqlCommand();

                string Query = @"UPDATE BookTable SET BookName=@BookName,Author = @Author, genre = @genre,,Add_Date=@Add_Date,Complete_Date=@Complete_Date,
                                WHERE id=@id";

                cmd = new SqlCommand(Query, con);
                

                cmd.Parameters.AddWithValue("@id",s.id);
               
                cmd.Parameters.AddWithValue("@BookName", s.BookName);
                cmd.Parameters.AddWithValue("@Author", s.Author);
                cmd.Parameters.AddWithValue("@Add_Date", s.Add_Date.Date);
                cmd.Parameters.AddWithValue("@Complete_date", s.Complete_Date.Date);
                cmd.Parameters.AddWithValue("@genre", s.genre);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                result = "Record Updated Successfully !";
            }
            catch (FaultException)
            {
                result = "Error:Update Operation Failed";
            }

            return result;
        }
    }
}
