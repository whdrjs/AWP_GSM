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

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
      <link href="css/request.css" rel="stylesheet">
  </head>

  <body style="background-color:#F8F9FA;">
 
    <!-- Navigation -->
    <nav class="navbar navbar-light bg-light static-top" style="margin: 15px 1px 15px 1px;">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">Gachon Study Maker</a>
        <a class="btn btn-primary" href="create.jsp">Make New study</a>
      </div>
    </nav>

<%
String title = request.getParameter("title");
String content = request.getParameter("content");
String name = request.getParameter("name");
String kakao = request.getParameter("kakao");
String pw = request.getParameter("pw");
%>
<!-- detail of study 
study title:<p id="title"> </p>
study content:<p id="content"> </p>-->

<form action="detail.jsp">
<div class="container register">
    <div class="row">
        <div class="col-md-6 register-left" style="text-align: center">
            <script type="text/javascript" src="js/countingdown.js"></script>
           <h2>Study Title</h2>
            <h3 id="head">Study Deadline</h3>
            <ul>
                <li><span id="days"></span>days</li>
                <li><span id="hours"></span>Hours</li>
                <li><span id="minutes"></span>Minutes</li>
                <!--<li><span id="seconds"></span>Seconds</li>-->
            </ul>
            <p>Study contents.......</p>
            <!-- member list -->
			<span id="span1"> </span><br/>
        </div>

        <div class="col-md-6 register-right static-top">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <h3 class="register-heading">Apply to Study</h3>
                    <br/>
                    <div class="row register-form">
                        <div class="col-md-11 my-auto">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Name *" value="" />
                            </div>
                            </br>
                            <div class="form-group">
                                <input type="text" name="studentID" class="form-control" placeholder="Student ID *" value="" />
                            </div>
                             </br>
                            <div class="form-group">
                                <input type="text" name="kakao" class="form-control"  placeholder="Kakao ID *" value="" />
                            </div>
                             </br>
                            <input type="hidden" name="title" value="<%=title %>">
							<input type="hidden" name="content" value="<%=content%>">
                            <button id="register" type="submit" class="btn btn-block btn-lg btn-primary">Register</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!--
<p>name:<input type="text" name="name"/> </p>
<p>kakao:<input type="text" name="kakao"/> </p>
<p>pw:<input type="text" name="pw"/> </p>

<input type="hidden" name="title" value="<%=title %>">
<input type="hidden" name="content" value="<%=content%>">
<input type="submit" value="신청"/>
</form>
    -->
 <script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
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
  var memeberRef = database.ref('member/');
  
//show detail of study group
<%
if(title!=null && content!=null)
{%>
  $("#title").append("<%=title %>");
  $("#content").append("<%=content %>");
<%}%>

//join

<%if((title !=null) && (name!=null) && (kakao!=null))
  {%>
     <%if(!(title.trim().equals("")) && !(name.trim().equals(""))&& !(kakao.trim().equals(""))&& !(pw.trim().equals("")))
     {%>
         memeberRef.push({"title" : "<%=title%>", "name": "<%=name%>", "kakao": "<%=kakao%>", "pw":"<%=1234%>"});
     <%}%>  
  <%}%>



//show member list   
    memeberRef.orderByChild("title").equalTo("<%=title%>").on("child_added", function(data) {   
        var memberData=data.val();
        var name = memberData.name;
        var kakao = memberData.kakao;
        var html="name: "+name+" kakao: "+kakao +"</br>";
      $("#span1").append(html);
     });
    

</script>
</body>
</html>