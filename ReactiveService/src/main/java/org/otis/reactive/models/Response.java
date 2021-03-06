package org.otis.reactive.models;

import java.util.List;

public class Response
{
    private String status;
    private String message;
    private List<Todo> todoList;
    private Transactions transactions;

    public Response()
    {}

    public Response(String status, String message)
    {
        this.status = status;
        this.message = message;
    }

    public Response(String status, String message, List<Todo> todoList)
    {
        this.status = status;
        this.message = message;
        this.todoList = todoList;
    }

    public Response(String status, String message, Transactions transactions)
    {
        this.status = status;
        this.message = message;
        this.transactions = transactions;
    }

    public String getStatus()
    {
        return status;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getMessage()
    {
        return message;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }

    public List<Todo> getTodoList()
    {
        return todoList;
    }

    public void setTodoList(List<Todo> todoList)
    {
        this.todoList = todoList;
    }

    public Transactions getTransactions()
    {
        return transactions;
    }

    public void setTransactions(Transactions transactions)
    {
        this.transactions = transactions;
    }
}