package cn.itcast.controller.admin;

import cn.itcast.domain.Account;
import cn.itcast.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 账户
 */
@Controller
@RequestMapping("/account")
public class AccountController  {

    @Autowired
    private AccountService accountService;

@RequestMapping("/findAll")
public String findAll(Model model){
    System.out.println("表现层，查询所有的信息");
    List<Account> list = accountService.findAll();
    model.addAttribute("list",list);
    System.out.println("请求list页面");
    System.out.println(list);
    return "list";
}
    @RequestMapping("/save")
    public String save(Account account, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("表现层，保存数据");
        response.sendRedirect(request.getContextPath()+"/account/findAll");
        accountService.saveAccount(account);
        return "list";
    }

}
