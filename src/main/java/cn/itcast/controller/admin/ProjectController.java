package cn.itcast.controller.admin;

import cn.itcast.domain.Project;
import cn.itcast.domain.User;
import cn.itcast.service.ProjectService;
import cn.itcast.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * 账户
 */
@Controller
@RequestMapping("/project")
public class ProjectController {

    private String pagePath = "/admin/";

    @Autowired
    private ProjectService projectService;


    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Project> userList = projectService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"project-list");
        return mv;

    }
    @RequestMapping("/edit")
    public ModelAndView edit() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName(pagePath+"ueditor");
        return mv;

    }
    @RequestMapping("/save")
    public String upload( MultipartFile file, HttpServletRequest request) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("static/uploads");
       String title = request.getParameter("title");
        String price = request.getParameter("price");
        String pages = request.getParameter("pages");
        String content = request.getParameter("content");

        System.out.println("content==="+content);
        String fileName = file.getOriginalFilename();
        Project project = new Project();
        project.setImg("/static/uploads/"+fileName);
        project.setTitle(title);
        project.setPages(pages);
        project.setPrice(price);
        project.setContent(content);
        project.setViews(0);
        projectService.save(project);
        File dir = new File(path,fileName);
        if(!dir.exists()){
            dir.mkdirs();
        }

        file.transferTo(dir);
        //Project project,
       // project.setImg("/static/upload"+fileName);
    //    projectService.save(project);
        return "redirect:findAll";
    }

//    @RequestMapping("/save")
//    public String save(Project project) throws Exception{
//        System.out.println(project);
//
//
//
//        projectService.save(project);
//        return "redirect:findAll";
//    }
    @RequestMapping("/delete")
    public String delete(int id) throws Exception{
        projectService.delete(id);
        return "redirect:findAll";
    }

    @RequestMapping("/update")
    public String update(Project project) throws Exception{
        System.out.println(project);
        projectService.update(project);
        return "redirect:findAll";
    }
}
