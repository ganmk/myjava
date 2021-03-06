package cn.dao;

import cn.model.t_book;

public interface t_bookMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(t_book record);

    int insertSelective(t_book record);

    t_book selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(t_book record);

    int updateByPrimaryKey(t_book record);
}