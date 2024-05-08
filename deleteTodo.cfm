<cfset id = url.todo_id>
<cfset myVar = createObject("component", "todoArray")>

<cfoutput>
    #myVar.deleteTodo(id)#
    Your task no #id# has been deleted!
    <br>
    <a href="./">Home</a>
</cfoutput>
