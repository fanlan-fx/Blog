package com.fanlan.Controller;

import com.fanlan.Pojo.Books;
import com.fanlan.Service.booksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * @author fengxun
 * @version 1.0
 * @date 2020/7/30 9:58
 */
@Controller
@RequestMapping("/book")
public class bookController {
    //Controler层调用service层
    @Autowired
    @Qualifier("booksServiceImpl")
    private booksService booksService;


    //查询全部书籍,并返回一个页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> books = booksService.selectBooks();
        model.addAttribute("list",books);
        return "allBook";
    }
    //跳转到增加书籍页面
    @RequestMapping("/toaddBook")
    public String toAddPaper(){
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("addBook")
    public String addBook(Books books){
        System.out.println("addBook=>"+books);
        booksService.insertBook(books);
        return "redirect:/book/allBook";//重定向到@RequestMapping("/allBook")
    }
    //跳转到修改页面
    @RequestMapping("toupdateBook")
    public String toUpdatePaper(int id,Model model){
        Books books = booksService.selectBook(id);
        model.addAttribute("Sbook",books);
        return "updateBook";
    }
    //修改书籍页面
    @RequestMapping("updateBook")
    public String updateBook(Books books){
        System.out.println("updateBook=>"+books);
        booksService.updateBook(books);
        return "redirect:/book/allBook";//重定向到@RequestMapping("/allBook")
    }
    //删除书籍
    @RequestMapping("/deleteBook")
    public String deleteBook(int id){
        booksService.deleteBook(id);
        return "redirect:/book/allBook";//重定向到@RequestMapping("/allBook")
    }
    //根据书籍名查询
    @RequestMapping("/queryBookName")
    public String queryBookName(String name,Model model){
        Books book = booksService.queryBookByName(name);
        List<Books> list=new ArrayList<Books>();
        list.add(book);

        if (book==null){
            list=booksService.selectBooks();
            model.addAttribute("error","输入值为空");
        }
        model.addAttribute("list",list);
        return "allBook";
    }
}
