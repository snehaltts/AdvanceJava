<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.ltts.Servlet.model.*,com.ltts.Servlet.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PlayerDao pd=new PlayerDao();
List<Player> li=pd.getAllPlayers();
%>
<table>
<tr>
<th>Player Number</th>
<th>Player Name</th>
<th>Country</th>
</tr>
<%
for(Player p:li){
%>
<tr>
<td><%=p.getPlayerById() %></td>
<td><%=p.getName() %></td>
<td><%=p.getCountry() %></td>
<td><a href="editPlaye?id=<%=p.getPlayerId() %>"></a>Update</td>
</tr>

<%} %>
</table>
</body>
</html>