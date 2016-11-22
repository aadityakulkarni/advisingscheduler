<%-- 
    Document   : forgotpass
    Created on : Nov 20, 2016, 2:32:16 PM
    Author     : Aaditya
--%>

<%@page contentType='text/html' pageEncoding='UTF-8'%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>UTA Advising</title>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1'>               
    </head>

    <body>

        <jsp:include page='navigationbar.jsp' />
        <div id='wrapper'>
            <jsp:include page='header.jsp' />
             <% 
                            int rank = -1;
                            int sessionid = -1;
                            if(!(session.getAttribute("id") == null)){
                                sessionid = Integer.parseInt((String)session.getAttribute("id"));
                            }
                            if(!(session.getAttribute("rank") == null)){
                                rank = Integer.parseInt((String)session.getAttribute("rank"));
                            }
             %>
            
              <div class="centerthis">
                <form role="form" name="RegisterStudent" action="RegisterStudentConfirmation.jsp" onSubmit="return validate();" >
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text"  name="email" id="email" value="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="username">Security Question</label>
                        <input type="text" name="secque" id="question" value="" placeholder="Enter your security question here" class="form-control">
                        <input type="text" name="secque" id="answer" value="" placeholder="Enter your answer for the above mentioned security question" class="form-control">
                    </div>
                    <input type="submit" value="Submit" id="registerBtn" class="btn btn-default">
                </form>
            </div>

        </div>

    </body>
    <jsp:include page='footer.jsp' />
    <script>
        function redir(){
            window.location = 'forgotpass.jsp';
        }
    </script>
    <script type='text/javascript' src='js/index.js'></script>
</html>

