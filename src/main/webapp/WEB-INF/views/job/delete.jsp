<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.inc" %>
<%@ include file="/WEB-INF/views/job/submenu.inc" %>
<div class="content">

<h1>Job Deleted</h1>

<div class="fixedwidthpane centerpane">

<div class="success">Job ${ data.jobDetail.fullName } has been deleted.</div>

<c:if test="${ not empty data.triggers }">
<div class="center">And these triggers are also removed.</div>
<ul>
<c:forEach items="${ data.triggers }" var="item">
<li>Trigger: ${ item.fullName }</li> 
</c:forEach>
</ul>
</c:if>

</div><!-- div.fixedwidthpane -->
</div><!-- div.content -->
<%@ include file="/WEB-INF/views/footer.inc" %>