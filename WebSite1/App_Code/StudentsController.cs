using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPIWithWebForm.Models;

namespace WebAPIWithWebForm
{

    public class StudentsController : ApiController
    {

        Student[] stud = new Student[] 
        {
            new Student{studentId="12wtr12444", studentName="Amit",
            studentPass="Noida789", studentPhone="1230-12345", studentEmail="amit@mail.com", GroupCode="MCA"},
            new Student{studentId="12wtr12555", studentName="Amity",
            studentPass="Noida456", studentPhone="0023-12345", studentEmail="amity@mail.com", GroupCode="BCA"},
            new Student{studentId="12wtr12666", studentName="Amita",
            studentPass="Noida123", studentPhone="023-12345", studentEmail="amita@mail.com", GroupCode="QCA"},
        };

        // GET api/<controller>
        public IEnumerable<Student> Get()
        {
            //return new string[] { "value1", "value2" };
            return stud;
        }
        public IHttpActionResult GetStudent(string id)
        {
            var record = stud.FirstOrDefault(x => x.studentId == id);
            if (record == null)
            {
                return NotFound();
            }
            return Ok(record);
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}