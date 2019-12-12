<%@ page import="java.net.URLEncoder" %>
<html>
<head>
	<title>Confirmation JSP</title>

	<%
	// read form data
	String favLang = request.getParameter("favoriteLang");
	
	// encode cookie data ... handle case of languages with spaces in them
    favLang = URLEncoder.encode(favLang, "UTF-8");
	
	// create Cookie and save form data on Cookie.
	Cookie aCookie = new Cookie("myApp.favoriteLang", favLang);
	
	// set lifespan of cookie in second, which is 6 months.
	aCookie.setMaxAge(60*60*24*180);
	
	// send cookie to browser.
	response.addCookie(aCookie);
	
	//out.println("<h4>Thanks! We set your favorite programming language to: "+favLang+"</h4>");
	%>	
</head>
<body>
	<h4>Thanks We set your favorite programming language to: ${param.favoriteLang} </h4>
	<hr/>
	<a href="cookie-homepage.jsp">Return to Home Page!</a>
</body>
</html>