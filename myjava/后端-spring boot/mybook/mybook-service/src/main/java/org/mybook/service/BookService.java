package org.mybook.service;

import org.mybook.dao.mapper.t_bookMapper;
import org.mybook.model.t_book;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class BookService {
    @Autowired
    t_bookMapper _t_bookMapper;
    public  t_book selectByPrimaryKey(Integer id)
    {
        return  _t_bookMapper.selectByPrimaryKey(id);
    }
}
