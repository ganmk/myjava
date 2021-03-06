package org.mybook.controller;

import  org.mybook.model.*;
import  org.mybook.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/book/basic")
public class BookBasicController {
  @Autowired
  BookService bookService;

  @GetMapping("/{id}")
    public  t_book getBookById(@PathVariable Integer id)
    {
      return  bookService.selectByPrimaryKey(id);
    }
}
