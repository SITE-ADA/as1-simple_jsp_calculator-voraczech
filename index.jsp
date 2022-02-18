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
<style type="text/tailwindcss">
    .box{
       @apply rounded bg-purple-200 text-purple-800 text-4xl px-8 py-4 flex items-baseline justify-center
    }

    .box--highlighted{
        @apply bg-purple-300 text-purple-900
    }
</style>
<body class="bg-gray-100 flex flex-col items-center justify-center">
<%@page import="java.util.ArrayList"%>
<%
    // Op_codes (can be add, sub, mul, div)
    String opCode = request.getParameter("op");
    // two integers provided in request parameters
    int p1 = Integer.parseInt(request.getParameter("p1"));
    int p2 = Integer.parseInt(request.getParameter("p2"));

    int res = 0;
    String operator = "";

    // Inspitation from https://www.geeksforgeeks.org/list-contains-method-in-java-with-examples/
    ArrayList<String> opCodes = new ArrayList<String>();
    // using add() to initialize values
    opCodes.add("add");
    opCodes.add("sub");
    opCodes.add("mul");
    opCodes.add("div");

    boolean isOpCodeValid = opCodes.contains(opCode);

    if(!isOpCodeValid){
        // There can be some unexpected situations: Op_code is not a valid one or division by zero.
        throw new Exception("Invalid operation code!");
    } else {
        switch(opCode) {
        case "add":
            res = p1 + p2;
            operator = "+";
            break;
        case "sub":
            res = p1 - p2;
            operator = "-";
            break;
        case "mul":
            res = p1 * p2;
            operator = "*";
            break;
        case "div":
            // There can be some unexpected situations: Op_code is not a valid one or division by zero.
            if(p2 == 0){
                throw new Exception("Dividing by 0 is not possible!");
            } else {
                res = p1 / p2;
                operator = "/";
            }
            break;
        default:
            // code block
        }
    }
    
%>

<div class="flex flex-col h-screen p-10">
    <h1 class="text-sm text-gray-600 mb-2 uppercase leading-loose mb-8">Calculator</h1>
    <div class="text-lg mx-auto flex-1 grid grid-cols-5 items-center gap-4">
        <div class="box"><%=p1 %></div>
        <div class="box"><%=operator %></div>
        <div class="box"><%=p2 %></div>
        <div class="box">=</div>
        <div class="box box--highlighted"><%=res %></div>
    </div>
    <%-- Provide a link to another JSP page where you show the detailed report about the client (i.e., the browser, OS, etc.) using request object.  --%>
    <a href="client-info.jsp" class="ml-auto mt-4 text-sm font-semibold text-purple-500 hover:text-purple-800">Client information</a>    
</div>
</body>
</html>