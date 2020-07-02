package cn.itcast.controller.admin;


import cn.itcast.domain.RolePermission;
import cn.itcast.domain.UsersRole;
import cn.itcast.service.RolePermissionService;
import cn.itcast.service.UsersRoleService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

//少了就出问题
@Controller
@RequestMapping("/role-permission")
public class RolePermissionController {


    private String pagePath = "/admin/";

    @Autowired
    private RolePermissionService rolePermissionService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page, @RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<RolePermission> userList = rolePermissionService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"role-permission");
        return mv;

    }

    @RequestMapping("/save")
    public String save(RolePermission rolePermission ) throws Exception{
        rolePermissionService.save(rolePermission);
        return "redirect:findAll";
    }

    @RequestMapping("/delete")
    public String delete(int id) throws Exception{
        rolePermissionService.delete(id);
        return "redirect:findAll";
    }

    @RequestMapping("/update")
    public String update(RolePermission rolePermission ) throws Exception{
        rolePermissionService.update(rolePermission);
        return "redirect:findAll";
    }
}
