<!doctype html>
<html>
    <head>
        <title>Gello</title>
        <% double bedrag = 113.0; %>
    </head>
    <body>
        <table border="1">
        	<thead>
                <tr>
                    <th>Naam</th>
                    <th>Totaal &euro; <%= bedrag %></th>
                </tr>
            </thead>
            <tbody>
	            <tr>
	                <td>Jan</td>
	                <td>&euro; <%= bedrag/4 %></td>
	            </tr>
	            <tr>
	                <td>Ali</td>
	                <td>&euro; <%= bedrag/4 %></td>
	            </tr>
	            <tr>
	                <td>Jeannette</td>
	                <td>&euro; <%= bedrag/4 %></td>
	            </tr>
	            <tr>
	                <td>Piet</td>
	                <td>&euro; <%= bedrag/4 %></td>
	            </tr>
            </tbody>
        </table>
    </body>
</html>