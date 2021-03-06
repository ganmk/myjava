package org.mybook.model;


import java.io.Serializable;

public class t_book implements Serializable {

    private Integer id;

    private String bookname;

    private String bookauthor;

    private Float bookprice;

    public t_book(Integer id, String bookname, String bookauthor, Float bookprice) {
        this.id = id;
        this.bookname = bookname;
        this.bookauthor = bookauthor;
        this.bookprice = bookprice;
    }

    public t_book() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getBookauthor() {
        return bookauthor;
    }

    public void setBookauthor(String bookauthor) {
        this.bookauthor = bookauthor == null ? null : bookauthor.trim();
    }

    public Float getBookprice() {
        return bookprice;
    }

    public void setBookprice(Float bookprice) {
        this.bookprice = bookprice;
    }
}