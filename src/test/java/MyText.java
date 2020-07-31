import com.fanlan.Pojo.Books;
import com.fanlan.Service.booksService;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author fengxun
 * @version 1.0
 * @date 2020/7/30 10:23
 */
public class MyText {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicaionContext.xml");

        booksService booksServiceImpl = (booksService) context.getBean("booksServiceImpl");
        for (Books selectBook : booksServiceImpl.selectBooks()) {
            System.out.println(selectBook);
        }
    }
}
