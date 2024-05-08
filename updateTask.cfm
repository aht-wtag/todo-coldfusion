<cfset myVar = createObject("component", "todoArray")>
<cfset task = form.task>
<cfset id = form.todo_id>
<cfset done = form.MyBooleanInput>
<cfoutput>
    #myVar.updateTodo(id, task, done)#
    Your task has been updated
    <br>
    <a href="./">Home</a>
</cfoutput>