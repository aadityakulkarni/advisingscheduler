<%-- 
    Document   : RegisterStudent
    Created on : Feb 27, 2016, 10:08:58 PM
    Author     : Divya
--%>

<%@page import="uta.cse6329.CaptchasDotNet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="uta.cse4361.databases.DatabaseManager"%>
<%@page import="uta.cse4361.businessobjects.Slot"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// Construct the captchas object (Default Values)
CaptchasDotNet captchas = new CaptchasDotNet(
  request.getSession(true),     // Ensure session
  "aadikulkarni91",                       // client
  "a1WXCBHxLqPIgxHuipRB5fSGRaU52HxRmk6n38lI"                      // secret
  );
%>
<!DOCTYPE html>
<html>
    <head>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>

        <script type="text/javascript">
            function isNumberKey(evt)
            {
                var e = evt || window.event; //window.event is safer, thanks @ThiefMaster
                var charCode = e.which || e.keyCode;
                if (charCode > 31 && (charCode < 47 || charCode > 57))
                    return false;
                if (e.shiftKey)
                    return false;
                return true;
            }

            function validate() {
                var studentID = document.forms["RegisterStudent"]["studentID"].value;
                var name = document.forms["RegisterStudent"]["name"].value;
                var username = document.forms["RegisterStudent"]["username"].value;
                var email = document.forms["RegisterStudent"]["email"].value;
                var atpos = email.indexOf("@");
                var dotpos = email.lastIndexOf(".");
                var captcha = document.forms["RegisterStudent"]["captcha"].value;
                
                if (/(\W|^)[\w.+\-]*@mavs\.uta\.edu(\W|$)/.test(email)) 
                {
                    
                }
                else
                {
                    $("#email").notify("Please enter a valid mavs email", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["email"].focus();
                    return false;
                }   
                if (captcha === null || captcha === "") {
                    $("#captcha").notify("Please enter a valid captcha", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["captcha"].focus();
                    return false;
                }    
                if (email === null || email === "") {
                    $("#email").notify("Please enter your email", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["email"].focus();
                    return false;
                }
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
                    $("#email").notify("Please enter a valid email", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["email"].focus();
                    return false;
                }
                if (studentID === null || studentID === "") {
                    $("#studentID").notify("Please enter your student ID", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["studentID"].focus();
                    return false;
                }
                if (isNaN(studentID)) {
                    $("#studentID").notify("Your student ID must be a number", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["studentID"].focus();
                    return false;
                }
                if (studentID.length !== 10) {
                    $("#studentID").notify("Your student ID must be a 10-digit number", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["studentID"].focus();
                    return false;
                }
                if (studentID.indexOf("100") === -1&& studentID.indexOf("6000") === -1) {
                    $("#studentID").notify("Your student ID should begin with 1000 or 6000", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["studentID"].focus();
                    return false;
                }
                if (name === null || name === "") {
                    $("#name").notify("Please enter your name", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["name"].focus();
                    return false;
                }
                
                if (username === null || username === "") {
                    $("#username").notify("Please enter your user name", "error",
                            {elementPosition: 'bottom center',
                                globalPosition: 'bottom center'})
                    document.forms["RegisterStudent"]["username"].focus();
                    return false;
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Student</title>
    </head>
    <body>
    <tr>
        <jsp:include page="navigationbar.jsp" />
    <div id="wrapper">
        <jsp:include page="header.jsp" />
        <div id="accordion" class="centerthis">
            <h3>Register Student</h3>
            <div class="centerthis">
                <form role="form" name="RegisterStudent" action="RegisterStudentConfirmation.jsp" onSubmit="return validate();" >
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text"  name="email" id="email" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="studentID">Student ID</label>
                        <input type="text" onkeypress="return isNumberKey(event)" name="studentID" id="studentID" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name">Student Name</label>
                        <input type="text" name="name" id="name" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="username">User Name</label>
                        <input type="text" name="username" id="username" value="" class="form-control">
                    </div>
                     <div class="form-group">
                        <label for="username">Contact Number</label>
                        <input type="text" name="phone" id="phone" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="major">Major</label>
                        <select name="major" id="major" class="form-control" >
                            <option value="CSE">CSE</option>
                            <option value="SE">SE</option>
                            <option value="CPE">CPE</option>
                            <option value="Undecided">Undecided</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="username">Notification Type</label>
                        <br><input type="checkbox" name="notify" id="notifyemail" value="email" class="pull">Email
                        <input type="checkbox" name="notify" id="notifymsg" value="msg" >Message
                        <input type="checkbox" name="notify" id="notifycall" value="call">Call
                    </div>
                    <div class="form-group">
                        <label for="username">Security Question</label>
                        <input type="text" name="secque" id="question" value="" placeholder="Enter your security question here" class="form-control">
                        <input type="text" name="secque" id="answer" value="" placeholder="Enter your answer for the above mentioned security question" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Captcha</label>
                            <br><%= captchas.image() %><br>
                            <!--<a href="<%= captchas.audioUrl() %>" target="_blank">Phonetic spelling (mp3)</a>-->
                            <input type="text" name="captcha" id="captcha" value="" class="form-control">
                    </div>
                    <input type="submit" value="Register" id="registerBtn" class="btn btn-default">
                </form>
            </div>
        </div>
    </div>
    <br>
</body>
<jsp:include page="footer.jsp" />
<script type="text/javascript" src="js/schedule.js"></script>
</html>

