%{--<resource:include components="" />--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
    <style type="text/css">
    label {
        float: left;
        width: 65px;
    }
    </style>
    %{--<resource:map key="A" />--}%
</head>

<body>
    <g:if test="${flash.message}">
        <div class="message">
            ${flash.message}
        </div>
    </g:if>
%{--<richui:map lat="40.6" lng="-74.04"/>--}%
    <g:if test="${session.user}">
       <br/>
       Login as: ${session.user} | <g:link action="logout">Logout</g:link>
    </g:if>
    <g:form action="login" style="padding-left:200px">
        <div style="width:220px">
        <label>Name</label><input type="text" name="login"/>
        <label>Password</label><input type="text" name="password"/>
        <label>&nbsp;</label><input type="submit" value="Login"/>
        </div>
    </g:form>
</body>
</html>