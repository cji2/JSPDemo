<!-- to deal with white space in Cookie -->
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
	<title>Personalized Cookie Home Page</title>
	<%
		// set up the default programming language.
		String favoriteProLang ="Java";
	
		// read the favorite programming language cookie.
		// get the cookies from the browser request.
		Cookie[] Cookies = request.getCookies();
		
		// find the cookie which name is "myApp.favoriteLang" with for-loop.
		if (Cookies != null) {
			for(Cookie aCookie : Cookies) {
				if("myApp.favoriteLang".equals(aCookie.getName())) {
					
					//favoriteProLang = aCookie.getValue();
					
					// decode cookie data ... handle case of languages with spaces in them
	                favoriteProLang = URLDecoder.decode(aCookie.getValue(), "UTF-8");
					
					break;
				}
			}
		}
	%>
</head>
<body>
	<h3>Training Portal</h3>
	<h4>New Books for <%= favoriteProLang %> </h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>Latest News reports for <%= favoriteProLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h4>Hot Jobs for <%= favoriteProLang %></h4>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<hr/>
	<a href="cookie-form.html">Personalize this page!</a>
</body>
</html>