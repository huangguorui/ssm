package cn.itcast.controller.admin;

import cn.itcast.domain.Project;
import cn.itcast.service.ProjectService;
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
@RequestMapping("/show")
public class ShowController {

    @Autowired
    private ProjectService projectService;
    private String pagePath = "/admin/";


    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Project> userList = projectService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"show");
        return mv;

    }

    @RequestMapping("/save")
    public String upload( MultipartFile file, HttpServletRequest request) throws IOException {
        String path = request.getSession().getServletContext().getRealPath("static/uploads");
       String title = request.getParameter("title");
        String price = request.getParameter("price");
        String pages = request.getParameter("pages");
        String fileName = file.getOriginalFilename();
        Project project = new Project();
        project.setTitle(title);
        project.setImg("/static/uploads/"+fileName);
        project.setPages(pages);
        project.setPrice(price);
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
        projectService.update(project);
        return "redirect:findAll";
    }
}
