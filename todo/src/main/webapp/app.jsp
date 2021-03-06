<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <jsp:include page="parts/header.jsp"/>
<head>
<body>
<div class="container">
  <jsp:include page="parts/navigation.jsp"/>
  <div class="panel panel-default">
    <div class="panel-heading">Tasks List</div>
    <table class="table">
      <c:forEach items="${tasks}" var="task">
        <tr>
          <td>
            <c:out value="${task.id}"/>
          </td>
          <td>
            <c:out value="${task.name}"/>
          </td>
          <td>
            <fmt:formatDate value="${task.dueDateTime.toDate()}" pattern="yyyy-MM-dd HH:mm" />
          </td>
        </tr>
      </c:forEach>
    </table>
  </div>

</div>
</body>
</html>
