<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
session = request.getSession();
String loginType = (String) session.getAttribute("loginType");
if(loginType!="student"){
	response.sendRedirect("welcome.jsp");
}
%>
  
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Marks</title>
    <link href="https://fonts.googleapis.com/css?family=Heebo:400,500,700|Playfair+Display:700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="resource/css/style.css">
    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
    <style>
    .success-icon {
        /* width: 200px; */
      font-size: 80px;
      color: #3c763d;
      animation: scaleUp 0.6s;
    }
    .success-message {
      font-size: 24px;
      font-weight: bold;
      color: #3c763d;
      animation: fadeIn 1s;
    }
    .return-home {
      margin-top: 40px;
      font-size: 18px;
      color: #888;
      animation: fadeIn 1s;
    }
    /* Animations */
    @keyframes scaleUp {
      0% {
        transform: scale(0);
        opacity: 0;
      }
      100% {
        transform: scale(1);
        opacity: 1;
      }
    }
    @keyframes fadeIn {
      0% {
        opacity: 0;
      }
      100% {
        opacity: 1;
      }
    }
    </style>
</head>
<body class="is-boxed has-animations">
    <div class="body-wrap boxed-container">
        <header class="site-header">
            <div class="d-flex justify-content-between">
				<a href="welcome.jsp" style=""> <img alt="" class="ml-5" src="https://www.pinclipart.com/picdir/big/178-1785162_white-home-icon-png-vector-royalty-free-download.png" style="width:40px;">
				</a> <a href="logout" class="mr-3" style="color:red; font-weight:700;">
        	<img class="" src="https://themayanagari.com/wp-content/uploads/2021/04/Exit-button-Transparent-1.png" style="width:40px; margin-left:11px;">
        	<div>Logout</div>
        		
        	</a>
			</div>
        </header>

        <main>
            <section class="hero mt-5">
                <div class="container">
                    <div class="hero-inner">
						<div class="hero-copy" style="text-align: center; padding:30px !important; margin-top: -80px; border-radius: 10px; box-shadow: 3px 3px 20px 1px #000; height:fit-content;">
                            <h2 class="text-center">Your Marks is</h2>
	                        
                            <div class="success-icon text-center" style="color:#bdb9ff;">
                            <%
								out.println(session.getAttribute("s_marks"));
							%>
                            </div>
                            <div class="success-message">
                           
                             </div>
                            
                             
                             <br>
                            <div class="d-flex align-items-center justify-content-center pb-4">
                                
                               <!-- <p class="mb-0 me-2">Goto Home Page. </p> &nbsp;&nbsp;  --> 
                                <a href="welcome.jsp" class="">Goto Home Page</a>
                              </div>
                            <!-- End -->

						</div>
						<div class="hero-app">
							<div class="hero-app-illustration">
								
							</div>
							<img class="device-mockup" src="https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/1998567/coding-svg-clipart-md.png" alt="App preview">
                           
							
						</div>
                    </div>
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
</html>