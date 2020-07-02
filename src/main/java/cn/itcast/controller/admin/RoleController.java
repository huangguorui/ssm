package cn.itcast.controller.admin;


import cn.itcast.domain.Permission;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import cn.itcast.service.RoleService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

//少了就出问题
@Controller
@RequestMapping("/role")
public class RoleController {


    private String pagePath = "/admin/";

    @Autowired
    private RoleService roleService;

    //添加权限

    @RequestMapping("/addPermissionToRole")
    public String addPermissionToRole(@RequestParam(name="roleId",required = true) Integer roleId,@RequestParam(name="ids",required = true) Integer[] permissionIds) throws Exception {
        roleService.addPermissionToRole(roleId,permissionIds);
        return "redirect:findAll";
    }


    //根据roleId查询role，并查询出可以添加的权限
    @RequestMapping("/findRoleByIdAllPermission")
    public ModelAndView findRoleByIdAllPermission(@RequestParam(name="id",required = true) Integer roleId) throws Exception {
        ModelAndView mv = new ModelAndView();

        Role role = roleService.findById(roleId);
        List<Permission> OtherPermissions = roleService.findOtherPermissions(roleId);
        mv.addObject("role",role);
        mv.addObject("permissionList",OtherPermissions);
        mv.setViewName(pagePath+"role-permission-add");
        return mv;
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page, @RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Role> userList = roleService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"role-list");
        return mv;

    }

    @RequestMapping("/save")
    public String save(Role role) throws Exception{
        roleService.save(role);
        return "redirect:findAll";
    }

    @RequestMapping("/delete")
    public String delete(int id) throws Exception{
        roleService.delete(id);
        return "redirect:findAll";
    }

    @RequestMapping("/update")
    public String update(Role role) throws Exception{
        roleService.update(role);
        return "redirect:findAll";
    }
}
