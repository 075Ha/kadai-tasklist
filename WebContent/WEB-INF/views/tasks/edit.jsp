<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="task">
        <c:choose>
            <c:when test="${task!=null}">
                <h2>Edit number ${task.id} task</h2>


                <form method="POST"
                    action="${pageContext.request.contextPath}/update">
                    <c:import url="_form.jsp" />
                </form>



                <p>
                    <a href="${pageContext.request.contextPath}/index">Go Back</a>
                </p>



                <p>
                    <a href="#" onclick="confirmDestroy();">Delete</a>
                </p>

                <form method="POST"
                    action="${pageContext.request.contextPath}/destroy">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>

                <script>
                    function confirmDestroy() {
                        if (confirm("Do you really want to delete?")) {
                            document.forms[1].submit();
                        }
                    }
                </script>

            </c:when>
            <c:otherwise>
                <h2>We couldn't find the data</h2>
            </c:otherwise>

        </c:choose>
    </c:param>
</c:import>