package com.hxci.mahongyu.dao;

import com.hxci.mahongyu.pojo.Book;

import java.util.List;

public interface BookDao {
    public List<Book> query();
    int save(Book book);
    int del(Integer id);
}

