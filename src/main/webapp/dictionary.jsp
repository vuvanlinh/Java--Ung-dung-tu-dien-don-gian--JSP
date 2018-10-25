<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.lang.String" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dict = new HashMap<>();
%>

<%
    dict.put("hello", "xin chao");
    dict.put("book", "quyen sach");
    dict.put("computer", "may tinh");

    String search = request.getParameter("inputword");

    String result = dict.get(search);

    if (result != null) {
        out.print("Word: " + search+"<br>");
        out.print("Result: " + result);
    } else {
        out.print("Not found");
    }

%>
</body>
</html>
