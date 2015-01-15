<!-- 4.6 練習問題 -->
<!-- ブラウザが受け取るデータ(body部の内容)をContent-Typeヘッダにより指定する -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Employee" %>
<%
Employee[] emp = new Employee[10];
emp[0] = new Employee("id0001","yoshiyuki1");
emp[1] = new Employee("id0002","yoshiyuki2");
emp[2] = new Employee("id0003","yoshiyuki3");
emp[3] = new Employee("id0004","yoshiyuki4");
emp[4] = new Employee("id0005","yoshiyuki5");
emp[5] = new Employee("id0006","yoshiyuki6");
emp[6] = new Employee("id0007","yoshiyuki7");
emp[7] = new Employee("id0008","yoshiyuki8");
emp[8] = new Employee("id0009","yoshiyuki9");
emp[9] = new Employee("id00010","yoshiyuki10");
%>
<!DOCTYPE html>
<html>
<head>
<!-- HTMLの文字コード -->
<meta charset="UTF-8">
<title>練習問題4.6</title>
</head>
<body>
<%
String colorName = "color:black";
int cnt = 1;
for(Employee data : emp){
	if(cnt == 1 || cnt == 4 || cnt == 7 || cnt == 10){
		colorName = "color:red";
	}else{
		colorName = "color:black";
	}
%>
<p>
<%= cnt %>番目のID:<font style="<%= colorName %>"><%= data.getId() %></font>
名前：<font style="<%= colorName %>"><%= data.getName() %></font>
</p>
<%
	cnt++;
}
%>
</body>
</html>