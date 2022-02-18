<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client (browser) information</title>
</head>
<body>
    <%-- Provide a link to another JSP page where you show the detailed report about the client (i.e., the browser, OS, etc.) using request object.  --%>
    <p><% out.print(request.getHeader("User-Agent")); %></p>
</body>
</html>