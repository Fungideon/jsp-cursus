<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
    <%
			String tweede;
    		String eerste;
    		String getaleen = "";
    		String getaltwee = "";
    		double a;
    		double b;
			String foutboodschap = "";
			if(request.getParameter("plus") != null
					||request.getParameter("minus") != null
					||request.getParameter("keer") != null
					||request.getParameter("deel") != null
					){
				if(request.getParameter("plus") != null){
					eerste = request.getParameter("getaleen");
					tweede = request.getParameter("getaltwee");
					try {
						a = Double.parseDouble(eerste);
						b = Double.parseDouble(tweede);
						getaleen = "" + (a + b);
					} catch (NumberFormatException e){
						foutboodschap = "Voer twee geldige waarde in.";
					}
				}else if(request.getParameter("minus") != null){
					eerste = request.getParameter("getaleen");
					tweede = request.getParameter("getaltwee");
					try {
						a = Double.parseDouble(eerste);
						b = Double.parseDouble(tweede);
						getaleen = "" + (a - b);
					} catch (NumberFormatException e){
						foutboodschap = "Voer twee geldige waarde in.";
					}
				}else if(request.getParameter("keer") != null){
					eerste = request.getParameter("getaleen");
					tweede = request.getParameter("getaltwee");
					try {
						a = Double.parseDouble(eerste);
						b = Double.parseDouble(tweede);
						getaleen = "" + (a * b);
					} catch (NumberFormatException e){
						foutboodschap = "Voer twee geldige waarde in.";
					}
				}else if(request.getParameter("deel") != null){
					eerste = request.getParameter("getaleen");
					tweede = request.getParameter("getaltwee");
					try {
						a = Double.parseDouble(eerste);
						b = Double.parseDouble(tweede);
						getaleen = "" + (a / b);
					} catch (NumberFormatException e){
						foutboodschap = "Voer twee geldige waarde in.";
					}
				}
			}
    	%>
    	<form action="rekenmachine.jsp" methode="get">
	    	<table>
	    		<thead>
	    			<tr>
	    				<td style="text-align:center;">Rekenmachine</td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr>
	    				<td>Eerste getal</td>
	    				<td>Tweede getal</td>
	    			</tr>
	    			<tr>
	    				<td><input type="text" name="getaleen" value="<%=getaleen%>"></td>
	    				<td><input type="text" name="getaltwee" value="<%=getaltwee%>"></td>
	    			</tr>
	    			<tr>
	    				<td style="text-align:center;">
	    					<input type="submit" name="plus" value="plus">
	    					<input type="submit" name="minus" value="minus">
	    					<input type="submit" name="keer" value="keer">
	    					<input type="submit" name="deel" value="deel">
	    				</td>
	    			</tr>
	    		</tbody>
	    	</table>
	    	<p class="fout"><%=foutboodschap%></p>
		</form>
    </body>
</html>