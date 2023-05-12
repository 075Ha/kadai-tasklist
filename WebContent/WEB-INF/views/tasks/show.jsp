<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="task">


        <c:choose>
            <c:when test="${task != null}">
                <h2>id : ${task.id} -> Detail</h2>
                <table>
                    <tbody>
                        <tr>

                            <th>Task</th>
                            <td><c:out value="${task.content}" /></td>
                        </tr>
                        <tr>
                            <th>Created</th>
                            <td><fmt:formatDate value="${task.created_at}"
                                pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>Updated</th>
                           <td> <fmt:formatDate value="${task.updated_at}"
                                pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>
                <p>
                    <a href="${pageContext.request.contextPath}/index">Go Back</a>
                </p>

                <p>
                    <a href="${pageContext.request.contextPath}/edit?id=${task.id}">Edit
                    </a>
                </p>

            </c:when>
            <c:otherwise>
                <h2>There is no data.</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>