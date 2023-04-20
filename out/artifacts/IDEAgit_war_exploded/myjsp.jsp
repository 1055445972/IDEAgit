<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head></head>
<body>
用户名： <%=request.getAttribute("username")%> <br />
密 码： <%=request.getAttribute("password")%> <br />

<hr />
使用EL:<br />
用户名： ${username} <br />
密 码： ${password} <br />
</body>
</html>
