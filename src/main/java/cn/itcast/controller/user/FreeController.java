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
public class FreeController {

    @Autowired
    private ProjectService projectService ;

    @RequestMapping("/free")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Project> userList = projectService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("/user/free");
        return mv;

    }

}
