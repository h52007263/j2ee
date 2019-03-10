<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="bootstrap/js/jquery/2.0.0/jquery.min.js"></script>
<link href="bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style>
	.center{
		text-align:center;
		width:200px;
	}
</style>
<body>
<div class="panel panel-default">
<div class="panel-heading" align="center">更新信息</div>
<div  align="center" style="margin-top:50px;" class="panel-body">
	<form action='updateHero' method='post'>
	   <input type='text' name='name' placeholder='${hero.name}' class="form-control center"> <br>
	   <input type='text' name='hp' placeholder='${hero.hp}' class="form-control center"> <br>
	   <input type='text' name='damage' placeholder='${hero.damage}' class="form-control center"> <br>
	   <input type='hidden' name='id' value='${hero.id}'>
	   <input type='submit' value='更新' class="btn btn-success">
	</form>
</div>
</div>
</body>
</html>