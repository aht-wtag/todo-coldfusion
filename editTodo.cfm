<cfset myVar = createObject("component","todoArray")>
<cfset getQuery = myVar.getTodo(url.todo_id)>
<cfoutput query="getQuery">
    <form action="updateTask.cfm" method="POST">
        <input type="hidden" name="todo_id" value="#url.todo_id#">
        <table>
            <tr>
                <td>
                    <input type="text" name="task" value="#getQuery.task#">
                </td>
            </tr>

            <tr>
                <td>
                    Finished?
                    <label>
                        <input type="radio" name="myBooleanInput" value="true"> Yes
                    </label>
                    <label>
                        <input type="radio" name="myBooleanInput" value="false"> No
                    </label>
                </td>
            </tr>
        </table>
        <input type="submit" value="Update">
    </form>
</cfoutput>