component {
    
    public void function seedDB() {

        queryExecute(sql: "INSERT INTO todo (task, taskStatus) VALUES ('Go to School', FALSE)", options:{ datasource="todo" });
        queryExecute(sql: "INSERT INTO todo (task, taskStatus) VALUES ('Wake Up', TRUE)", options:{ datasource="todo" });
    }

    public query function showAll() {
        return queryExecute(sql: "SELECT * FROM todo", options:{datasource="todo"});
    }

    public void function addTodo(taskDetails) {
        queryExecute(sql: "INSERT INTO todo (task, taskStatus) VALUES (?, false)", params=[{value: taskDetails, cfsqltype: "cf_sql_varchar"}], options: {datasource="todo"});        
    }

    
    public query function getTodo(taskId) {
        return queryExecute(sql: "SELECT * FROM todo WHERE id = ?", params = [{value: arguments.taskId, cfsqltype: "cf_sql_integer"}], options: {datasource="todo"} )
    }

    
    public void function updateTodo(id, task, done) {
        queryExecute(sql: "UPDATE todo SET task = ?, taskstatus = ? WHERE id = ?",
        params = [
        {value: task, cfsqltype: "cf_sql_varchar"},
        {value: done, cfsqltype: "cf_sql_bit"},
        {value: id, cfsqltype: "cf_sql_integer"}],
        options: {datasource="todo"}
        )
    }



}