<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Login</title>
    <link href="https://fonts.googleapis.com/css?family=Heebo:400,500,700|Playfair+Display:700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="resource/css/style.css">
    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>
<body class="is-boxed has-animations">
    <div class="body-wrap boxed-container">
        <header class="site-header">
            <div class="d-flex justify-content-between">
            <a href="welcome.jsp" style="">
            	<img alt="" class="ml-5" src="https://www.pinclipart.com/picdir/big/178-1785162_white-home-icon-png-vector-royalty-free-download.png" style="width:40px;">
        	</a>
        	
        	
        	</div>
        </header>

        <main>
            <section class="hero">
                <div class="container">
                    <div class="hero-inner">
						<div class="hero-copy" style="padding:30px !important; margin-top: -80px; border-radius: 10px;  box-shadow: 0px 8px 24px #2f2222;">
                            <h2 class="text-center">Student Login</h2>
	                        
                            <br>
                            <form action="studentLogin" method="post">
              
                                <div class="form-outline mb-4">
                                    <!-- <label class="form-label" for="form2Example11">Username</label> -->
                                  <input type="text" class="form-control" name="username" placeholder="Enter Username" />
                                  
                                </div>
              
                                <div class="form-outline mb-4">
                                    <!-- <label class="form-label" for="form2Example22">Password</label> -->
                                  <input type="password" class="form-control" name="password" placeholder="Enter Password"/>
                                  
                                </div>
              
                                <div class="text-center pt-1 mb-2 pb-1">
                                  <input type="submit" value="Login" class="btn btn-success btn-block fa-lg gradient-custom-2 mb-3">                                  <!-- <a class="text-muted" href="#!">Forgot password?</a> -->
                                </div>
              
                                <div class="d-flex align-items-center justify-content-center pb-4">
                                  <p class="mb-0 me-2">Don't have an account? </p> &nbsp;&nbsp;
                                  <a href="#" class="">Create new</a>
                                </div>
              
                              </form>
              

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
