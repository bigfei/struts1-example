<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
</head>
<body>
<h1><bean:write name="inputForm" property="message"/>
</h1>
<html:form>
    <h3>Use of nested:text tag with dot notation</h3>

    DEP. ID: <nested:text property="department.id"/> <br/>
    NAME: <nested:text property="department.name"/> <br/>

    <h3>Use of nested:nest tag with dot notation</h3>
    <nested:nest property="department">
        DEP. ID: <nested:text property="id"/> <br/>
        NAME: <nested:text property="name"/> <br/>
    </nested:nest>

    <h3>Use of nested:iteration tag</h3>

    <nested:nest property="department">
        DEP. ID: <nested:text property="id"/> <br/>
        NAME: <nested:text property="name"/> <br/><br/>
        <nested:iterate property="customers">
            <b>Customer info</b><br/>
            CUST. ID: <nested:text property="id"/> <br/>
            NAME: <nested:text property="name"/> <br/>
        </nested:iterate>
    </nested:nest>

</html:form>
<br/>

</body>
</html>
