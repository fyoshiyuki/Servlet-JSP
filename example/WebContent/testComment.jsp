<%-- JSPコメント：コメントはHTML表示機能でも残りません --%>
<!-- HTMLコメント：コメントがHTML表示機能で残ってしまいます -->

<%-- pageディレクティブの属性(content-Typeヘッダ) --%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%-- pageディレクティブの属性(クラス・インターフェースのインポート) --%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat;"%>

<%-- スクリプトレットの書き方 --%>
<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
String dateStr = sdf.format(date);
%>
<!DOCTYPE html>
<html>
<head>
<title>2種類のコメント比較</title>
</head>
<body>
<%-- スクリプト式の書き方 --%>
<p>本日[<%= dateStr %>]は晴天なりけり
</p>
繰り返し処理で図の作成<br>

<%-- スクリプトレットの書き方2 --%>
<% for(int cnt_X = 1; cnt_X <= 10; cnt_X++){ %>
	<% for(int cnt_Y = 1; cnt_Y <= 10; cnt_Y++){ %>
		<% if(cnt_X >= cnt_Y){ %>
			*
		<% } %>
	<% } %>
	<br>
<% } %>
</body>
</html>