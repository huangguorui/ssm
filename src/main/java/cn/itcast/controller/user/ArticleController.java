package cn.itcast.controller.user;

import cn.itcast.domain.Permission;
import cn.itcast.domain.Project;
import cn.itcast.domain.Role;
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
public class ArticleController {

    @Autowired
    private ProjectService projectService ;

//    @RequestMapping("/article")
//    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
//        ModelAndView mv = new ModelAndView();
//        List<Project> userList = projectService.findAll(page,size);
//        PageInfo pageInfo = new PageInfo(userList);
//        mv.addObject("pageInfo",pageInfo);
//        mv.setViewName("/user/article");
//        return mv;
//
//    }
    //可以通过ID获取到文章
    //根据roleId查询role，并查询出可以添加的权限
//    @RequestMapping("/findById")
    @RequestMapping("/article")
    public ModelAndView article(@RequestParam(name="id",required = true) Integer id) throws Exception {
        ModelAndView mv = new ModelAndView();
         Project projectInfo = projectService.findById(id);
        projectInfo.setViews(projectInfo.getViews()+1);
        projectService.update(projectInfo);

        mv.addObject("projectInfo",projectInfo);
        mv.setViewName("/user/article");
        return mv;
    }

}
