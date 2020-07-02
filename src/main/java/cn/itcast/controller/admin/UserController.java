package cn.itcast.controller.admin;

import cn.itcast.domain.Account;
import cn.itcast.domain.Role;
import cn.itcast.domain.User;
import cn.itcast.service.AccountService;
import cn.itcast.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * 账户
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    private String pagePath = "/admin/";


    //给用户添加角色
    @RequestMapping("/addRoleToUser")
  public String addRoleToUser(@RequestParam(name="userId",required = true) Integer userId,@RequestParam(name="ids",required = true) Integer[] roleIds){
   // public String addRoleToUser(Integer userId,String[] roleIds){

       userService.addRoleToUser(userId,roleIds);
        return "redirect:findAll";
    }


    //查询用户以及用户可以添加的角色
    @RequestMapping("/findUserByIdAndAllRole")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name="id",required = true) Integer userId) throws Exception {
        //根据id查询用户
        //通过id查询角色
        ModelAndView mv = new ModelAndView();
        User userInfo = userService.findById(userId);
        List<Role> otherRoles= userService.findOtherRoles(userId);
        mv.addObject("userInfo",userInfo);
        mv.addObject("roleList",otherRoles);
        mv.setViewName(pagePath+"user-role-add");
        return mv;
    }


//    @RequestMapping("/findAll")
//    public ModelAndView findAll() throws Exception {
//        ModelAndView mv = new ModelAndView();
//        List<User> userList = userService.findAll();
//        mv.addObject("userList",userList);
////        for(User user:userList) {
////            System.out.println(user);
////        }
//        mv.addObject("userList", userList);
//        mv.setViewName("user-list");
//        return mv;
//
//    }




    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1")int page,@RequestParam(name = "size",required = true,defaultValue = "10")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<User> userList = userService.findAll(page,size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName(pagePath+"user-list");
        return mv;

    }
    @RequestMapping("/save")
    public String save(User user) throws Exception{
        userService.save(user);
        return "redirect:findAll";
    }

    @RequestMapping("/login")
    public ModelAndView login() throws Exception{
        ModelAndView mv = new ModelAndView();
        mv.setViewName(pagePath+"login");
        return mv;
    }
    @RequestMapping("/adminLogin")
    public ModelAndView isLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {
        ModelAndView mv = new ModelAndView();
        //获取用户名和密码
        String nickname = req.getParameter("nickname");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        String messages = null;

        if("root".equals(nickname)&&"root".equals(password)){
            session.setAttribute("admin",nickname);
            mv.setViewName("redirect:" + "/admin");
        }else{
            messages = "登录失败，请检查用户名和密码";
            mv.setViewName("/admin/login");
        }
        mv.addObject("message",messages);
        return mv;
    }

    @RequestMapping("/loginOut")
    public ModelAndView loginOut(HttpServletRequest req, HttpServletResponse res) throws Exception {
        //session.removeAttribute("sessionname")
        ModelAndView mv = new ModelAndView();
        HttpSession session = req.getSession();
        session.removeAttribute("admin");
        mv.setViewName("redirect:" + "/");
        return mv;
    }

    @RequestMapping("/delete")
    public String delete(int id) throws Exception{
        userService.delete(id);
        return "redirect:findAll";
    }

    @RequestMapping("/update")
    public String update(User user) throws Exception{
            System.out.println(user);
        userService.update(user);
        return "redirect:findAll";
    }
}
