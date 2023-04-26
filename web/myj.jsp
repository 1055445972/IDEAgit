<%@ page contentType="text/html;charset=GBK" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>jstl_core.jsp</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
</style>
<body>

<p>-----------遍历数组---------------</p>
<%
    String[] strings = {"北京","上海","广州","天津"};
    pageContext.setAttribute("arr",strings);
%>
<c:forEach items="${pageScope.arr}" var="str">
    <p>${str}</p>
</c:forEach>

<br>

<p>-----------遍历list---------------</p>
<table width="200px" align="center" border="1" cellspacing="0">
    <tr>
        <td>序号</td>
        <td>姓名</td>
    </tr>

    <c:forEach items="${'刘德华,张学友,黎明,郭富城'}" var="hero" varStatus="st"  >
        <tr>
            <td><c:out value="${st.count}" /></td>
            <td><c:out value="${hero}" /></td>
        </tr>
    </c:forEach>
</table>
<br>

<p>-----------遍历set---------------</p>
<%
    Set<String> set = new TreeSet<String>(); // Set
    set.add("python");
    set.add("java");
    set.add("c");
    set.add("php");
%>
<c:forEach var="entry" items="<%= set %>">
   <p><c:out value="${entry}" /></p>
</c:forEach>
<br />
<%--<c:set var="abc1" value="中国，北京" scope="request"></c:set>--%>
<%--<p><c:out value="${abc1 }"></c:out></p>--%>
<br>


<p>-----------遍历map---------------</p>
<%
    Map<String, Object> map = new HashMap<>();
    map.put("第一名","中国");
    map.put("第二名","美国");
    map.put("第三名","德国");
    request.setAttribute("map",map);
    //        for ( Map.Entry<String,Object> entry : map.entrySet()) {
    //        }
%>
<c:forEach items="${requestScope.map}" var="entry">
    ${entry.key}:${entry.value}<br/>
</c:forEach>
<br>

<p>-----------指定遍历起始至步长---------------</p>
<%--遍历数组--%>
<%
    request.setAttribute("arr", new String[]{"1美国","日本","3法国","4挪威","5瑞士","6芬兰","7意大利"});
%>
<c:forEach items="${ requestScope.arr }" var="item" step="2" end="8">
     ${ item } <br>
</c:forEach>

</body>
</html>
