package cn.itcast.controller.user;

import cn.itcast.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 账户
 */
@Controller
public class HelpController {

    @Autowired
    private ProjectService projectService ;

    @RequestMapping("/help")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/user/help");
        return mv;

    }

}
