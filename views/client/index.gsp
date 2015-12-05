<resource:include components="" />
<%@ page import="grailstestproject.Client" %>
<!DOCTYPE html>
<html>
	<head>

		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		%{--<resource:map type="MicrosoftVirtualEarth"  />key="AIzaSyCRcEVCxp0PYpZHl5K9q2d42PRf3IqL4NY" />--}%
	</head>
	<body>
		<a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	<richui:map   zoomLevel="5" markers="${markers}" />
		<div id="list-client" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'client.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'client.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="street" title="${message(code: 'client.street.label', default: 'Street')}" />
					
						<g:sortableColumn property="zip" title="${message(code: 'client.zip.label', default: 'Zip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: clientInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "street")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "zip")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clientInstanceCount ?: 0}" />
			</div>
		<g:form action="readerCSV" >
			<div style="width:220px">
				<input type="file" name="filename"/>
				<label>&nbsp;</label><input type="submit" value="import"/>
			</div>
		</g:form>
		</div>
	</body>
</html>
