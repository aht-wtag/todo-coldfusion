component {
    
    public void function seedDB() {

        queryExecute(sql: "INSERT INTO todo (task, taskStatus) VALUES ('Go to School', FALSE)", options:{ datasource="todo" });
        queryExecute(sql: "INSERT INTO todo (task, taskStatus) VALUES ('Wake Up', TRUE)", options:{ datasource="todo" });
    }

}