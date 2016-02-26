<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
		<%
			for(int i = 1; i <= 10; i++){
				out.write(i + " x 5 = " + i*5 + "<br>");
			}
		%>
    </body>
</html>