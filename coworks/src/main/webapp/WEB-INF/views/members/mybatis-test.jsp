<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: JKM
  Date: 2022-06-10
  Time: 오후 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
${member.toString()}

<form:form action="/admin/my-test" method="post">
    <input type="text" id="a" value="" name="membershipNumber"/>
    <button type="button" onclick="foo()">json</button>
</form:form>
<script>
    function foo() {
        let data = {
            "membershipNumber" : $('#a').val()
        };

        $.ajax({
            type: 'post',
            url: '/admin/my-test',
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            data: JSON.stringify(data), // JavaScript -> JSON String
            success: function(result) {
                if(result) alert(result.firstName);
            }
        })
    }
</script>
result.firstName : ${result.firstName}

</body>
</html>
