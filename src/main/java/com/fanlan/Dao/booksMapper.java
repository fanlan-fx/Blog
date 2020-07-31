package com.fanlan.Dao;

import com.fanlan.Pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface booksMapper {
    //添加书
    int insertBook(Books books);
    //删除
    int deleteBook(@Param("bookID") int bookID);
    //修改
    int updateBook(Books books);
    //根据id查询
    Books selectBook(@Param("bookID") int bookID);
    //查询全部
    List<Books> selectBooks();
    //根据用户查询
    Books queryBookByName(@Param("bookName") String bookNamename);
}
