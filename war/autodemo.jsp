<!doctype html>
<html>
    <head>
        <title>Gello</title>
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    </head>
    <body>
    <%@page import="com.jsp.opdrachten.Auto" %>
    <%@page import="com.jsp.opdrachten.AutoLijst" %>
    <%@page import="java.util.ArrayList" %>
    <%
    		AutoLijst al = new AutoLijst();
    		ArrayList<Auto> autos = al.getLijst();
    		ArrayList<Auto> schermauto = new ArrayList<Auto>();
    		ArrayList<String> merken = al.getMerken();
			
    		//gaat pas gegevens bewerken als er op de knop is gedrukt
			if(request.getParameter("verstuur") != null){
				
				//zet een tijdelijke waarden voor min en max prijs
				int minimumprijs = 0;
	    		int maximumprijs = Integer.MAX_VALUE;
	    		
	    		//vraagt de waarde op van getaleen en getaltwee en controleerd dan
	    		//of ze niet leeg zijn, zo ja zet de waarde naar prijsen
	    		if(!request.getParameter("getaleen").equals("")){
	    			minimumprijs = Integer.parseInt(request.getParameter("getaleen"));
	    		}
	    		if(!request.getParameter("getaltwee").equals("")){
	    			maximumprijs = Integer.parseInt(request.getParameter("getaltwee"));
	    		}
	    		
	    		//loopt door alle autos als auto
	    		for(Auto auto : autos){
	    			//contole voor de merken
	    			if(request.getParameter("merk").equals("Alle Merken")){
	    				//vraagt de prijs op van de auto en vergelijkt het met de minimum en maximum
	    				//prijs die de gebruiker heeft opgeven.
	    				if(auto.getPrijs() >= minimumprijs && auto.getPrijs() <= maximumprijs){
	    					//zit er een auto tussen die bij de criteria past?, voeg deze toe aan een array.
		    				schermauto.add(auto);
		    			}
	    			}else {
	    				String merk = auto.getMerk();
	    				//naast prijs wordt er ook gekeken of het merk klopt
	    				if(auto.getMerk().equals(request.getParameter("merk")) &&
	    						auto.getPrijs() >= minimumprijs && 
	    						auto.getPrijs() <= maximumprijs){
	    					schermauto.add(auto);
	    				}
	    			}
	    			
	    		}
	    		//als de knop niet ingedrukt is worden alle auto's geprint.
			}else {
				schermauto = autos;
			}
    	%>
    	<h1 style="text-align: center; background-color: lightblue;">Mrwheely Autoshop</h1>
    	<div style="max-width: 870px; background-image: url(maxresdefault.jpg); background-size: cover; display: flex; flex-wrap: wrap; margin: auto;">
    	<form action="autodemo.jsp" method="GET" style="margin: auto;">
	    	<table style="background-color: lightblue; border:5px solid lightblue; border-radius: 20px;">
	    		<thead>
	    			<tr>
	    				<td style="text-align:center; background-color: red; border:5px solid red; border-radius: 20px;" colspan="2">Autos</td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr style="text-align:center;">
	    				<td>Laagste Prijs</td>
	    				<td>Hoogste Prijs</td>
	    			</tr>
	    			<tr>
	    				<td><input type="number" name="getaleen" value=""></td>
	    				<td><input type="number" name="getaltwee" value=""></td>
	    			</tr>
	    			<tr>
	    				<td colspan="2">
	    					<select name="merk">
	    					<option value="Alle Merken">Alle Merken</option>
	    					<%
	    						//print alle auto merken voor dme selector
	    						for(String optie : merken){
	    							%>
							<option value="<%=optie %>"><%=optie %></option>
									<%
	    						}
	    					%>
	    				</select>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td style="text-align:center;" colspan="2">
	    					<input type="submit" name="verstuur" value="verstuur">
	    				</td>
	    			</tr>
	    		</tbody>
	    	</table>
		</form>
		</div>
		<br>
	    	<div style="max-width: 870px; background-color: #00CCFF; display: flex; flex-wrap: wrap; margin: auto;">
	    	<%
	    		//voor alle auto's die in de selectie schermauto zitten worden op het scherm geprint
	    		for(Auto a : schermauto){
	    	%>
	    	<table style="background-color:lightblue; border:5px solid lightblue; border-radius: 20px; color: white; margin: 10px;">
	    		<thead>
	    			<tr>
	    				<td style="text-align:center; background-color: red; border:5px solid red; border-radius: 20px;" colspan="2"><%=a.getMerk() %> <%=a.getType() %></td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr>
	    				<td><img src="<%=a.getFoto() %>" style="width:250px;"></td>
	    			</tr>
	    			<tr>
	    				<td style="text-align:center;"><%=a.getPrijsFormat() %>
	    			</tr>
	    		</tbody>
	    	</table>
	    	<br>
	    	<%
	    		}
	    		//zijn er geen autos gevonden die passen bij de gegevens?,
	    		//print dan een error bericht op het scherm.
	    		if(schermauto.isEmpty()){
	    			%>
					<h3>Geen Auto('s') gevonden</h3>
					<%
	    		}
	    	%>
	    	</div>
    </body>
</html>