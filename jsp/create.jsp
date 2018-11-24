<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="jk">

    <title>Gachon Study Maker</title>   
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!------ Include the above in your HEAD tag ---------->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <link href="css/request.css" rel="stylesheet">
</head>

<body style="background-color:#F8F9FA;">
<!-- nav -->
<nav class="navbar navbar-light bg-light static-top"style="margin: 15px 1px 15px 1px;">
    <div class="container">
        <a class="navbar-brand" href="index.html">Gachon Study Maker</a>
        <a class="btn btn-primary" href="#">Make New study</a>
    </div>
</nav>

<form action="index.jsp">

<div class="container register">
    <div class="row">
        <div class="col-md-3 register-left">
            <script type="text/javascript" src="js/countingdown.js"></script>
            <h2 id="head">Make Your Study</h2>
            <br/>
            <p>You are 30 seconds away from earning your own money!</p>
            <br/>
        </div>
        <div class="col-md-9 register-right">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <h3 class="register-heading">Write Study Info.</h3>
                    <div class="row register-form">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="title" placeholder="Title" value="" />
                            </div>
                            <div class="form-group">
                                <input type="date" class="form-control" placeholder="Deadline" value="" />
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Student ID" value="" />
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control"  placeholder="number of member" min="2" value="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <textarea class="form-control input-sm " name="content" type="textarea" id="message" placeholder="Message" maxlength="140" rows="8"></textarea>
                            </div>
                      		<input type="submit" class="btnRegister" id="create" value="Register"/> <input type="submit" class="btnRegister" id="cancel" value ="cancle"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Firebase -->
   <script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBWxWPMx03teCUuLwG0db4Ay9xuXnm39V0",
    authDomain: "gachonstudymaker.firebaseapp.com",
    databaseURL: "https://gachonstudymaker.firebaseio.com",
    projectId: "gachonstudymaker",
    storageBucket: "gachonstudymaker.appspot.com",
    messagingSenderId: "490179660109"
  };
  firebase.initializeApp(config);
  
  var database = firebase.database();
  
  $(document).ready(function(){
  $("#cancel").click(function(){
     //response.sendRedirect("index.html");
     return;
  });
  
  });

     
  </script>

</body>
</html>