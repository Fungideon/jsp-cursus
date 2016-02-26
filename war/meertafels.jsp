<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
		<%
			boolean showTable = false;
			String invoer;
			int tafelGetal = 0;
			String foutboodschap = "";
			if(request.getParameter("knop") != null
					|| request.getParameter("min") != null
					|| request.getParameter("plus") != null){
				invoer = request.getParameter("getal");
				try {
					tafelGetal = Integer.parseInt(invoer);
					showTable = true;
				} catch (NumberFormatException e){
					foutboodschap = "U moet een geheel getal invoeren!";
				}
				if(request.getParameter("min") != null){
					tafelGetal--;
				}else if(request.getParameter("plus") != null){
					tafelGetal++;
				}
			}
		%>
		<h3>Kies een tafel</h3>
		<form action="meertafels.jsp" methode="get">
			<input type="text" name="getal">
			
			<p class="fout"><%=foutboodschap%></p>
			
			<input type="submit" name="knop" value="Ok">
		</form>
		<%
			if (showTable){
				out.println("<h3>De tafel van " + tafelGetal + "</h3>");
				for(int i = 1; i <= 10; i++){
					out.write(i + " x " + tafelGetal + " = " + i*tafelGetal + "<br>");
				}

		%>
		<form action="meertafels.jsp" methode="get">
			<input type="hidden" name="getal" value="<%=tafelGetal%>">
			<input type="submit" name="min" value="vorige">
			<input type="submit" name="plus" value="volgende">
		</form>
		<%
			}
		%>
    </body>
</html>