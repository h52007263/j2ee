<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="bootstrap/js/jquery/2.0.0/jquery.min.js"></script>
<link href="bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script>
$(function(){
    $(".green").addClass("btn btn-success btn-xs");
    $(".red").addClass("btn btn-danger btn-xs");
});
</script>
</head>
<body>
	<table align="center" border="1" cellspacing="0" style="width:500px;margin:44px auto"
	class="table table-striped table-bordered table-hover table-condensed"> 
		<tr align="center">
			<td>序号</td>
			<td>name</td>
			<td>hp</td>
			<td>damage</td>
			<td>edit</td>
			<td>delete</td>
		</tr>
	<c:forEach items="${heros }" var="hero" varStatus="st">
		<tr align="center">
			<td>${start+st.count }</td>
			<td>${hero.name }</td>
			<td>${hero.hp }</td>
			<td>${hero.damage }</td>
			<td><a class="green" href="editHero?id=${hero.id }">编辑</a></td>
			<td><a class="red" href="deleteHero?id=${hero.id }">删除</a></td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="6" align="center">
			<a href="?start=0">[首 页]</a>
			<a href="?start=${pre }">[上一页]</a>
			<a href="?start=${next }">[下一页]</a>
			<a href="?start=${last }">[末 页]</a>
		</td>
	</tr>
	</table>
</body>
</html>