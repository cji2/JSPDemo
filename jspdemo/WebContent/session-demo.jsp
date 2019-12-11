<%@ page import="java.util.*" %>
<html>
	<body>
	<!--  Step 1: Create HTML form -->
	<form action="session-demo.jsp">
		Add new item: <input type="text" name="theItem" />
		
		<input type="submit" value="Submit" />
	</form>
	<!--  hr/><hr/>
	Item entered:  //request.getParameter("theItem") %>  -->
	<!--  Step 2: Add new item to "To Do" List -->
	<%
		// get the To Do items from the session.
		List<String> items = (List<String>) session.getAttribute("myToDoList");
		
		// if the To Do items doesn't exists, the create a new one.
		if (items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		// see if there is form data to add
		String theItem = request.getParameter("theItem");
		if ((theItem != null)&&(!theItem.trim().equals(""))) {
			items.add(theItem);
			response.sendRedirect("session-demo.jsp");
		}
	%>
	<!--  Step 3: Display all "To Do" item from session. -->
	<hr>
	<b>Item Listing:</b>
	<ol>
	<% 
	if(items != null)
		for(String temp : items)
			out.println("<li>" + temp + "</li>");
	%>
	</ol>
	</body>
</html>