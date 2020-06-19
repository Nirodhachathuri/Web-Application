<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>	
  
  	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
</head>
<body style="font-size:12px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif !important;">

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="navbar-header navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2" >
     <a class="nav-link" href="home.jsp"><img src="image/abc-logo-X2.jpg" height="50px" width="50px"></a>
 <b style="font-family:verdana;color:#999;font-size:42px;">JOBS</b>&nbsp;&nbsp;&nbsp;&nbsp;    </div>
    <div class="mx-auto order-0">
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a>
            </li>
        </ul>
    </div>
    
    <div class="modal" id="myModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Login</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        Are you Login as,
        <div style="text-align:center;">
        	<a href="admin.jsp" class="btn btn-info btn-sm" >
       			Admin
		    </a>
		    <a href="login.jsp" class="btn btn-info btn-sm" >
       			User
		    </a>
        </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
    
    
</nav>

</body>
</html>

