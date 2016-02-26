<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
    <%
    	String hoogster = "";
    	String laagster = "";
    	String schermTekstHoog = "";
    	String schermTekstLaag = "";
    	String foutboodschap = "";
    	String invoer = "";
    	int checkGetal;
    	int checkLaag = 0;
    	int checkHoog = 0;
    	if(request.getParameter("knop") != null){
    		invoer = request.getParameter("getal");
    		if(request.getParameter("hoogste") != null
    			||request.getParameter("laagste") != null){
    	    		hoogster = request.getParameter("hoogste");
    	    		laagster = request.getParameter("laagste");
    			}
    		try {
				checkGetal = Integer.parseInt(invoer);
	    		if(request.getParameter("hoogste") != ""
	        			||request.getParameter("laagste") != ""){
							checkHoog = Integer.parseInt(hoogster);
							checkLaag = Integer.parseInt(laagster);
	        			}
				if(request.getParameter("hoogste") == ""){
					checkHoog = checkGetal;
					hoogster = "" + checkHoog;
				}
				if(request.getParameter("laagste") == ""){
					checkLaag = checkGetal;
					laagster = "" + checkLaag;
				}
				if(checkGetal > checkHoog){
					checkHoog = checkGetal;
					hoogster = "" + checkHoog;
				}
				if(checkGetal < checkLaag){
					checkLaag = checkGetal;
					laagster = "" + checkLaag;
				}
				schermTekstHoog = "Hoogste Getal: " + checkHoog;
				schermTekstLaag = "Laagste Getal: " + checkLaag;
			} catch (NumberFormatException e){
				foutboodschap = "Voer een geldige waarde in";
			}
    	}
    %>
		<h3>Hoogste en laagste</h3>
		<form action="hogerlager.jsp" methode="get">
			<label for="getal">Voer een geheel getal</label>
			<input type="text" name="getal">
			<input type="hidden" name="hoogste" value="<%=hoogster%>">
			<input type="hidden" name="laagste" value="<%=laagster%>">
			<input type="submit" name="knop" value="Check Getal">
			<p class="hoog"><%=schermTekstHoog%></p>
			<p class="laag"><%=schermTekstLaag%></p>
			<p class="fout"><%=foutboodschap%></p>
		</form>
    </body>
</html>