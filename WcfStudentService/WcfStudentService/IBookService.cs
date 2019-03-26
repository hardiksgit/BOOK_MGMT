using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfStudentService
{
    
    [ServiceContract]
    public interface IBookService
    {
        [OperationContract]
        string GetData(int value);

        [OperationContract]
        string AddBook(Book s);

        [OperationContract]
        List<Book> GetAllBooks();

        [OperationContract]
        Book SearchBookById(int id);

        [OperationContract]
        string DeleteBook(int id);

        [OperationContract]
        string UpdateBookById(Book s);

        
    }

   
    [DataContract]
    public class Book
    {
        int _id;
        string _BookName;
       
        string _Author;
        DateTime _Add_Date;
        DateTime _Complete_Date;
        string _genre;



        [DataMember]
        public int id
        {
            get { return _id; }
            set { _id = value; }
        }

        [DataMember]
        public string BookName
        {
            get { return _BookName; }
            set { _BookName = value; }
        }

        [DataMember]
        public string Author
        {
            get { return _Author; }
            set { _Author = value; }


        }

        [DataMember]
        public string genre
        {
            get { return _genre; }
            set { _genre = value; }
        }

        
     
        [DataMember]
        public DateTime Add_Date
        {
            get { return _Add_Date; }
            set { _Add_Date = value; }
        }

        [DataMember]
        public DateTime Complete_Date
        {
            get { return _Complete_Date; }
            set { _Complete_Date = value; }
        }

        
       
    }
}
