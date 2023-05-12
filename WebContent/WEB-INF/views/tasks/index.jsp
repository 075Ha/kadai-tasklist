<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="task">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>Task List</h2>
        <ul>
            <c:forEach var="t" items="${tasks}">
                <li><a
                    href="${pageContext.request.contextPath}/show?id=${t.id}"> <c:out
                            value="${t.content}" />
                </a></li>
            </c:forEach>
        </ul>

        <div id="pagination">
            （All ${tasks_count} ）<br />
            <c:forEach var="i" begin="1" end="${((tasks_count - 1) / 15) + 1}"
                step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out
                                value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>


        <p>
            <a href="${pageContext.request.contextPath}/new">Add Task</a>
        </p>

    </c:param>
</c:import>