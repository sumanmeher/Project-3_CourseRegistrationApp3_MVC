<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%
session = request.getSession();
String loginType = (String) session.getAttribute("loginType");
if(loginType!="student"){
	response.sendRedirect("welcome.jsp");
}
%>

	<%
	String old_name = (String)session.getAttribute("s_name");
	String name = (old_name.substring(0,1)).toUpperCase();
	name+=old_name.substring(1);
	
	String old_pName = (String)session.getAttribute("p_name");
	String pName = (old_pName.substring(0,1)).toUpperCase();
	pName+=old_pName.substring(1);

%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Score Card</title>
    <link href="https://fonts.googleapis.com/css?family=Heebo:400,500,700|Playfair+Display:700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="resource/css/style.css">
    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>

    <style>
    .container{
   		display:flex;
   		justify-content:center; 
    }
   .outer-border{
    width:800px; text-align:center; padding-top: 15px; padding-bottom:15px; border: 10px solid #673AB7;    
    background-color: white;
}

.inner-dotted-border{
    width:750px; padding:20px; padding-bottom:30px; text-align:center; border: 5px solid #673AB7;border-style: dotted;
}

.certification{
    font-size:50px; font-weight:bold;    color: #663ab7;
}

.certify{
    font-size:25px;
}

.name{
    font-size:30px;    color: green;
}

.fs-30{
    font-size:30px;
}

.fs-20{
    font-size:20px;
}
    </style>

</head>
<body class="is-boxed has-animations">
    <div class="body-wrap boxed-container">
        <header class="site-header">
            <div class="d-flex justify-content-between">
				<a href="welcome.jsp" style=""> <img alt="" class="ml-5"
					src="https://sashabarab.org/wp-content/uploads/2015/02/course-icon.png"
					style="width: 60px;">
				</a> <a href="logout" style=""> <img class="mr-5"
					src="https://th.bing.com/th/id/R.65bc3a94db4c6f3dbcee59a207fb353e?rik=5C7HnAJqtxWSVQ&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fY%2fl%2f1%2fR%2f8%2fp%2fred-logout-hi.png&ehk=f7yPz41es5F4%2b%2f2kp7s%2bAicUA3UhCBZ6t7HLzNxwQos%3d&risl=&pid=ImgRaw&r=0"
					style="width: 50px;">
				</a>
			</div>
        </header>

        <main>
        
        
        
            <section class="hero">
                                           <div class="container">
                    
                    <!-- certificate start -->

              <div>     
               <div class="btn btn-primary mb-2 " id="download">Download</div>
 
<div class="outer-border d-flex align-items-center justify-content-center" id="hero">
    <div class="inner-dotted-border">
           <span class="certification">Certificate of Completion</span>
           <br><br>
           <span class="certify"><i>This is to certify that</i></span>
           <br><br>
           <span class="name"><b>
           
           	<%
				out.println(name);
           	%>
           </b></span><br/><br/>
           <span class="certify"><i>has successfully completed the certification</i></span> <br/><br/>
           <span class="certify"><i>of<br>
           <%
           out.println(session.getAttribute("duration"));
           %>
           </i></span> <br/><br/>
           <span class="fs-30">
           <%
           out.println(session.getAttribute("c_name"));
           %>
           </span>
           
            <br/><br/>
           
           
           <span class="fs-20">with score of <b>
           <%
           out.println(session.getAttribute("s_marks"));
           %>
           </b></span> <br/><br/>
           <span class="certify"><i>under the guidance of</i></span><br>
          
          <span class="fs-30 mb-3">
          
          <%
           out.println(pName);
           %>
          <br>
          </span>
          
    
    </div>
    </div>
    </div>
   
    
                    <!-- Certificate ends -->
                </div>

            </section>

        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="site-footer-inner has-top-divider">
                    
                    <div class="footer-copyright">&copy; Course Management Application. All rights reserved. Digit Insurance</div>
                </div>
            </div>
        </footer>
    </div>

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/dom-to-image/2.6.0/dom-to-image.js"></script>
<script>
$("#download").click(function(e){
    e.preventDefault();
    domtoimage.toJpeg(document.getElementById('hero'), { quality: 1 }).then(function (dataUrl) {
            var link = document.createElement('a');
            link.download = 'certificate_Photo.jpg';
            // link.download="a.jpg";
            link.href = dataUrl;
            link.click();
        });
});

</script>


</html>
