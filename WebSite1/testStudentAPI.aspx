<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testStudentAPI.aspx.cs" Inherits="testStudentAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>  
  
        <script type="text/javascript">  
            function getStudents() {  
                $.getJSON("api/Students",  
                    function(data) {  
                        $('#stud').empty(); // Clear table body.  
  
                        // Loop through the list of students.  
                        $.each(data, function(key, val) {  
                            // Add a table row for the student.  
                            var row = '<tr><td>' + val.studentName +  
                                '</td><td>' + val.studentPass + '</td><td>' +  
                                val.studentPhone + '</td><td>' + val.studentEmail + '</td><td>'+ val.GroupCode +  
                                '</td></tr>';  
                            $("#stud").append(row);  
  
                        });  
                    });  
            }  
            $(document).ready(getStudents);  
        </script>  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Here is the Students Record</h2>  
            <table>  
                <thead>  
                    <tr>  
                        <th>Name</th>  
                        <th>Passworf</th>  
                        <th>Phone No.</th>  
                        <th>Email</th>
                        <th>Group Code</th>  
                    </tr>  
                </thead>  
                <tbody id="stud">  
                </tbody>  
            </table>  
        </div>
    </form>
</body>
</html>
