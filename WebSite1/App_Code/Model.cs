﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Course
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Course()
    {
        this.Groups = new HashSet<Group>();
    }

    public string CourseCode { get; set; }
    public string CourseName { get; set; }
    public string DepartmentId { get; set; }

    public virtual Department Department { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Group> Groups { get; set; }
}

public partial class Department
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Department()
    {
        this.Courses = new HashSet<Course>();
    }

    public string DepartmentId { get; set; }
    public string DepartmentName { get; set; }
    public string StaffId { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Course> Courses { get; set; }
    public virtual Staff Staff { get; set; }
}

public partial class Group
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Group()
    {
        this.Students = new HashSet<Student>();
    }

    public string GroupCode { get; set; }
    public Nullable<System.DateTime> GroupIntake { get; set; }
    public string CourseCode { get; set; }

    public virtual Course Course { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Student> Students { get; set; }
}

public partial class Staff
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Staff()
    {
        this.Departments = new HashSet<Department>();
    }

    public string StaffId { get; set; }
    public string StaffName { get; set; }
    public string StaffPhone { get; set; }
    public string StaffEmail { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Department> Departments { get; set; }
}

public partial class Student
{
    public string StudentID { get; set; }
    public string StudentName { get; set; }
    public string StudentPass { get; set; }
    public string StudentPhone { get; set; }
    public string StudentEmail { get; set; }
    public string GroupCode { get; set; }

    public virtual Group Group { get; set; }
}

public partial class Subject
{
    public string SubjectCode { get; set; }
    public string SubjectName { get; set; }
}