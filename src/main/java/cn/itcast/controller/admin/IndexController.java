package cn.itcast.controller.admin;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 账户
 */
@Controller
public class IndexController {

    @Autowired
    private UserService userService;

    @RequestMapping("/admin")
    //不带分页不要带参数
   // public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/admin/index");
        return mv;

    }

}
