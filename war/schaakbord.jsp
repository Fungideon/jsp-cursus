<!doctype html>
<html>
    <head>
        <title>Gello</title>
        <style>
        	td.black{
        		background-color: black;
        		width: 50px;
        		height: 50px;
        	}
        	td.white{
        		background-color: white;
        		width: 50px;
        		height: 50px;
        	}
        </style>
    </head>
    <body>
    	<table style="width:400px; height:400px;" border="1">
    		<tr>
		<%
			for(int rij = 0; rij < 8; rij++){
				if(rij%2 == 0){
					for(int kolom = 0; kolom < 8; kolom++){
						if(kolom%2 == 0){
							out.write("<td class=\"black\"></td>");
						}else {
							out.write("<td class=\"white\"></td>");
						}
					}
					out.write("</tr><tr>");
				}else {
					for(int kolom = 0; kolom < 8; kolom++){
						if(kolom%2 == 0){
							out.write("<td class=\"white\"></td>");
						}else {
							out.write("<td class=\"black\"></td>");
						}
					}
					out.write("</tr><tr>");
				}
			}
		%>
			</tr>
		</table>
    </body>
</html>