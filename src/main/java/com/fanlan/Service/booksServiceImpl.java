package com.fanlan.Service;

import com.fanlan.Dao.booksMapper;
import com.fanlan.Pojo.Books;

import java.util.List;

/**
 * @author fengxun
 * @version 1.0
 * @date 2020/7/29 19:26
 */
public class booksServiceImpl implements booksService {
    //service 调用Dao 层
    private booksMapper booksMapper;

    public void setBooksMapper(com.fanlan.Dao.booksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    public int insertBook(Books books) {
        return booksMapper.insertBook(books);
    }

    public int deleteBook(int bookID) {
        return booksMapper.deleteBook(bookID);
    }

    public int updateBook(Books books) {
        return booksMapper.updateBook(books);
    }

    public Books selectBook(int bookID) {
        return booksMapper.selectBook(bookID);
    }

    public List<Books> selectBooks() {
        return booksMapper.selectBooks();
    }

    public Books queryBookByName(String bookNamename) {
        return booksMapper.queryBookByName(bookNamename);
    }
}
