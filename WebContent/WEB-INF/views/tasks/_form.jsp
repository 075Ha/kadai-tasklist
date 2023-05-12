<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${errors != null}">
    <div id="flush_error">
        Error has been found.<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" />
            <br />
        </c:forEach>

    </div>
</c:if>
<label for="task_id">Task</label>
<br />
<input type="text" name="task_content" id="task_id"
    value="${task.content}" />
<br />
<br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">push</button>