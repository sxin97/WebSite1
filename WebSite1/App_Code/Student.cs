using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Student
/// </summary>
/// 
namespace WebAPIWithWebForm.Models
{
    public class Student
    {
        public Student()
        {
            
        }

        public string studentId { get; set; }
        public string studentName { get; set; }
        public string studentPass { get; set; }
        public string studentPhone { get; set; }
        public string studentEmail { get; set; }
        public string GroupCode { get; set; }
    }
}