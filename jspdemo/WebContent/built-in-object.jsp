<html>
	<body>
		<h3>JSP Built-In Objects</h3>
		<!-- the following informs the browser name and operating system that user is using! -->
		Request user agent: <%= request.getHeader("User-Agent") %>
		
		<br/><br/>
		Request language: <%= request.getLocale() %>
	</body>
</html>   