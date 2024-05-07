<cfset myVar = createObject("component", "todoArray")>

<cfoutput>
    #myVar.addTodo(form.task)#
    Your task #form.task# has been added in the list
</cfoutput>
