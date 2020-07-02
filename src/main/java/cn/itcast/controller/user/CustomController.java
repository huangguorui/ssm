package cn.itcast.controller.user;

import cn.itcast.domain.Project;
import cn.itcast.service.ProjectService;
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
public class CustomController {

    @Autowired
    private ProjectService projectService ;

    @RequestMapping("/custom")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/user/custom");
        return mv;

    }

}
