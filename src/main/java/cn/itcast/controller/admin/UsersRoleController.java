package cn.itcast.controller.admin;


import cn.itcast.domain.Role;
import cn.itcast.domain.UsersRole;
import cn.itcast.service.RoleService;
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
@RequestMapping("/users-role")
public class UsersRoleController {


    private String pagePath = "/admin/";

    @Autowired
    private UsersRoleService usersRoleService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page, @RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<UsersRole> userList = usersRoleService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"users-role");
        return mv;

    }

    @RequestMapping("/save")
    public String save(UsersRole usersRole) throws Exception{
        usersRoleService.save(usersRole);
        return "redirect:findAll";
    }

    @RequestMapping("/delete")
    public String delete(int id) throws Exception{
        usersRoleService.delete(id);
        return "redirect:findAll";
    }

    @RequestMapping("/update")
    public String update(UsersRole usersRole ) throws Exception{
        usersRoleService.update(usersRole);
        return "redirect:findAll";
    }
}
