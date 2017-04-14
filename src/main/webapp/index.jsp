<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Home</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="welcome" class="navbar-brand">icsse2017</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-task">Send messages</a></li>
					<li><a href="all-tasks">All messases</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Home Page</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_TASKS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All messages</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Title</th>
								<th>Messages</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="task" items="${tasks}">
								<tr>
									<td>${task.title}</td>
									<td>${task.messages}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Send messages page</h3>
				<hr>
				
				<div class="fluid-container" style="margin-left: 100px">
		<div class="row">
			<form action="save-task" method="post">
				<div class="row" >
					
					<input type="hidden" name="id" value="${task.id}"/>
				<li>Title:<input size="76" type="text" name="title" value="${task.title}"/><li>
				</div>
				<div class="row">
					<br>
					<textarea cols="85" rows="15" name="messages" value="${task.messages}"></textarea>
				</div>
				<button type="submit">submit</button>
			</form>
		</div>
	</div>
		</c:when>		
	</c:choose>

	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>