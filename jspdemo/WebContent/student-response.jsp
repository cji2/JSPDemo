<html>
<body>
	<h4>The student is confirmed: ${param.firstName} ${param.lastName}</h4>
	<h4>The Student's country: ${param.country}</h4>
	<h4>The Student's favorite programming language: ${param.favoriteLanguage}</h4>
	<%
		String[] langs = request.getParameterValues("favoriteFramework");
	    out.println("<h4>The Student's favorite framework: <ul>");
	    /*
	    for (int i=0; i < langs.length; i++) {
	    	out.println("<li>"+langs[i]+"</li><br/>");
	    }
	    */
	    if (langs != null) {
	    	for (String tempLang : langs) {
		    	out.println("<li>"+tempLang+"</li><br/>");
		    }
	    }
	    else {
	    	out.println("<li>you should select one framework at least!</li>");
	    }
		out.println("</ul></h4>");
	%>
</body>
</html>