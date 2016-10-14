<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html:html>
<head>
<title><bean:message key="welcome.title"/></title>
<html:base/>
</head>
<body bgcolor="white">

<logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
  <font color="red">
    ERROR:  Application resources not loaded -- check servlet container
    logs for error messages.
  </font>
</logic:notPresent>

<h3><bean:message key="welcome.heading"/></h3>
<p><bean:message key="welcome.message"/></p>
<c:out value="User Agent: ${header['User-Agent']}"/>
<c:choose>
    <c:when test="${fn:contains(header['user-agent'], 'Firefox')}">
        You're using Mozilla.
    </c:when>
    <c:otherwise>
        You are using some browser other than Firefox.
    </c:otherwise>
</c:choose>
<c:set var="browser" value="${header['User-Agent']}" scope="session"/>
Your browser is : <B><c:out value="${browser}"/></B>
<p>${4 > 3}</p>
</body>
</html:html>
