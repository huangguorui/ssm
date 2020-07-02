package cn.itcast.controller.admin;


import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import cn.itcast.service.PermissionService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

//少了就出问题
@Controller
@RequestMapping("/permission")
public class PermissionController {

    private String pagePath = "/admin/";


    @Autowired
    private PermissionService permissionService;


    @RequestMapping("/save")
    public String save(Permission permission) throws Exception{
        permissionService.save(permission);
        return "redirect:findAll";
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page, @RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Permission> userList = permissionService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"permission-list");
        return mv;

    }

    @RequestMapping("/delete")
    public String delete(int id) throws Exception{
        permissionService.delete(id);
        return "redirect:findAll";
    }

    @RequestMapping("/update")
    public String update(Permission permission) throws Exception{
        System.out.println(permission);
        permissionService.update(permission);
        return "redirect:findAll";
    }


}
