<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
    <%
			String invoer;
			String celsius = "";
			String fahrenheit = "";
			int tijdelijk = 0;
			String foutboodschap = "";
			if(request.getParameter("knop") != null);
				if(request.getParameter("cel") != "" 
						&& request.getParameter("fah") != ""){
					foutboodschap = "Voer maar 1 waarde in";
				} else if(request.getParameter("cel") != ""){
					invoer = request.getParameter("cel");
					try {
						tijdelijk = Integer.parseInt(invoer);
						fahrenheit =  "" + (int)Math.round(tijdelijk * 1.8 + 32);
					} catch (NumberFormatException e){
						foutboodschap = "U moet een geheel getal invoeren!";
					}
				} else if(request.getParameter("fah") != ""){
					invoer = request.getParameter("fah");
					try {
						tijdelijk = Integer.parseInt(invoer);
						celsius =  "" + (int)Math.round((tijdelijk - 32 )/ 1.8);
					} catch (NumberFormatException e){
						foutboodschap = "U moet een geheel getal invoeren!";
					}
				}
    	%>
    	<form action="gradenconverter.jsp" methode="get">
	    	<table>
	    		<thead>
	    			<tr>
	    				<td style="text-align:center;">Graden</td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr>
	    				<td>Celsius</td>
	    				<td>Fahrenheit</td>
	    			</tr>
	    			<tr>
	    				<td><input type="text" name="cel" value="<%=celsius%>"></td>
	    				<td><input type="text" name="fah" value="<%=fahrenheit%>"></td>
	    			</tr>
	    			<tr>
	    				<td style="text-align:center;">
	    					<input type="submit" name="knop" value="Omrekenen">
	    				</td>
	    			</tr>
	    		</tbody>
	    	</table>
	    	<p class="fout"><%=foutboodschap%></p>
		</form>
    </body>
</html>