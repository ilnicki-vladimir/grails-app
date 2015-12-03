<%@ page import="grailstestproject.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clientInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="client.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${clientInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'street', 'error')} required">
	<label for="street">
		<g:message code="client.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${clientInstance?.street}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'zip', 'error')} required">
	<label for="zip">
		<g:message code="client.zip.label" default="Zip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zip" required="" value="${clientInstance?.zip}"/>

</div>

