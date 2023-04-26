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

<p>-----------��������---------------</p>
<%
    String[] strings = {"����","�Ϻ�","����","���"};
    pageContext.setAttribute("arr",strings);
%>
<c:forEach items="${pageScope.arr}" var="str">
    <p>${str}</p>
</c:forEach>

<br>

<p>-----------����list---------------</p>
<table width="200px" align="center" border="1" cellspacing="0">
    <tr>
        <td>���</td>
        <td>����</td>
    </tr>

    <c:forEach items="${'���»�,��ѧ��,����,������'}" var="hero" varStatus="st"  >
        <tr>
            <td><c:out value="${st.count}" /></td>
            <td><c:out value="${hero}" /></td>
        </tr>
    </c:forEach>
</table>
<br>

<p>-----------����set---------------</p>
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
<%--<c:set var="abc1" value="�й�������" scope="request"></c:set>--%>
<%--<p><c:out value="${abc1 }"></c:out></p>--%>
<br>


<p>-----------����map---------------</p>
<%
    Map<String, Object> map = new HashMap<>();
    map.put("��һ��","�й�");
    map.put("�ڶ���","����");
    map.put("������","�¹�");
    request.setAttribute("map",map);
    //        for ( Map.Entry<String,Object> entry : map.entrySet()) {
    //        }
%>
<c:forEach items="${requestScope.map}" var="entry">
    ${entry.key}:${entry.value}<br/>
</c:forEach>
<br>

<p>-----------ָ��������ʼ������---------------</p>
<%--��������--%>
<%
    request.setAttribute("arr", new String[]{"1����","�ձ�","3����","4Ų��","5��ʿ","6����","7�����"});
%>
<c:forEach items="${ requestScope.arr }" var="item" step="2" end="8">
     ${ item } <br>
</c:forEach>

</body>
</html>
