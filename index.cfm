<cfset myVar = createObject("component","todoArray")>
<cfset result = myVar.showAll()>
<table>
    <tr>
        <th>Task-Id</th>
        <th>Task-Details</th>
        <th>Task-Status</th>
    </tr>

    <cfoutput query="result">
        <tr>
            <td>#result.id#</td>
            <td>#result.task#</td>
            <td>#result.taskStatus#</td>
        </tr>
    </cfoutput>
</table>

<form method="POST" action="addTodo.cfm">
    <table>
        <tr>
            <td>Task</td>
            <td>
                <input type="text" name ="task" required>
            </td>
        </tr>    
    </table>

    <input type="submit" value="Add">
</form>

<style>
    body {
	text-align: center;
	}
	table {
	border-collapse: collapse;
	width: 100%;
	}

	th, td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
	}

	th {
	background-color: #f2f2f2;
	}

    input[type="submit"],
	button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 10px;
	text-decoration: none;
	display: inline-block;
	border: none;
	text-align: center;
	font-size: 16px;
	}

    input[type="text"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	}
</style>