package com.hxci.mahongyu.controller;

import com.hxci.mahongyu.dao.BookDao;
import com.hxci.mahongyu.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("bk")
public class BookController {
    @Autowired
    BookDao bookDao;

    @RequestMapping("index")
    public String index(Model model) {
        return "index";
    }

    @RequestMapping("query")
    public String query(Model model){
        List<Book> list = bookDao.query();
        model.addAttribute("list",list);
        return "query";
    }

    @RequestMapping("add")
    public String add(){
        return "add";
    }

    @RequestMapping("save")
    public String save(Book book){
        int a=bookDao.save(book);
        return "redirect: query";
    }

    @RequestMapping("del")
    public String del(Integer id){
        int a =bookDao.del(id);
        return "redirect: query";
    }
}
