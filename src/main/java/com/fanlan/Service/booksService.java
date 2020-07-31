package com.fanlan.Service;

import com.fanlan.Pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface booksService {
    //添加书
    int insertBook(Books books);
    //删除
    int deleteBook( int bookID);
    //修改
    int updateBook(Books books);
    //根据查询
    Books selectBook(int bookID);
    //查询全部
    List<Books> selectBooks();
    //根据用户查询
    Books queryBookByName(String bookNamename);
}
