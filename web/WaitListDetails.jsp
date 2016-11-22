<%-- 
    Document   : WaitListDetails
    Created on : Nov 21, 2016, 2:22:48 AM
    Author     : Aaditya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WaitListed Appointment Created</title>
    </head>
    <body>

        <jsp:include page="navigationbar.jsp" />
        <div id="wrapper">
            <jsp:include page="header.jsp" />
        <div id="accordion" class="centerthis">
            <h3>Success</h3>
            <div>
                WaitListed Appointment has been created. Your waitlist number is 2.
            </div>
        </div>                   
        </div>
    </body>
    <jsp:include page="footer.jsp" />
    <script type="text/javascript" src="js/AppointmentDetails.js"></script>
</html>
