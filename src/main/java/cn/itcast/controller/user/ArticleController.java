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


    @RequestMapping("/article")
    public ModelAndView article(@RequestParam(name="id",required = true) Integer id) throws Exception {
        ModelAndView mv = new ModelAndView();
         Project projectInfo = projectService.findById(id);
         //显示为null，表示改id不存在，跳转主页
         if(projectInfo==null){
             mv.setViewName("/user/404");
             return mv;
         }
        System.out.println("projectInfo=="+projectInfo);
        projectInfo.setViews(projectInfo.getViews()+1);
        projectService.update(projectInfo);

        mv.addObject("projectInfo",projectInfo);
        mv.setViewName("/user/article");
        return mv;
    }

}
