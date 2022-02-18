<%@ page errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment 1</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-10 flex flex-col items-center justify-center">
<div class="flex flex-col w-full max-w-prose">
    <div class="bg-white shadow px-8 py-6 rounded">
        <h1 class="text-center">Calculator</h1>
    </div>
    <%-- Provide a link to another JSP page where you show the detailed report about the client (i.e., the browser, OS, etc.) using request object.  --%>
    <a href="/client-info.jsp" class="mt-1 text-sm font-semibold text-purple-500 hover:text-purple-800">Client information</a>    
</div>
</body>
</html>