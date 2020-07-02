package cn.itcast.controller.user;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 账户
 */
@Controller
public class LoginAndRegController {

    @Autowired
    private UserDao userDao  ;

    @RequestMapping("/login")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/user/login");
        return mv;
    }
    @RequestMapping("/isLogin")
    public ModelAndView isLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {
       ModelAndView mv = new ModelAndView();
       //获取用户名和密码
        String nickname = req.getParameter("nickname");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        System.out.println(nickname);
        System.out.println(password);
        String messages=null;

        List<User> login = userDao.login(nickname,password);
//        System.out.println("login==="+login);
//        System.out.println("login==="+login.size());
//        for (User list:login){
//            System.out.println("list===="+list);
//            System.out.println("list===="+login.get(0));
//        }
        if(login.size()==0){
            messages ="登录失败，请检查用户名和密码";
            mv.setViewName("/user/login");
            mv.addObject("message",messages);

        }else{

            session.setAttribute("user",login.get(0));
            mv.setViewName("redirect:" + "/");
        }
//session.removeAttribute("sessionname")
        return mv;

    }
    @RequestMapping("/loginOut")
    public ModelAndView loginOut(HttpServletRequest req, HttpServletResponse res) throws Exception {
        //session.removeAttribute("sessionname")
        ModelAndView mv = new ModelAndView();
        HttpSession session = req.getSession();
        session.removeAttribute("user");
        mv.setViewName("redirect:" + "/");
        return mv;
    }

//注册页面
    @RequestMapping("/reg")
    public ModelAndView reg() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/user/reg");
        return mv;
    }

//    注册
@RequestMapping("/isReg")
public ModelAndView isReg(HttpServletRequest req, HttpServletResponse res) throws Exception {
    ModelAndView mv = new ModelAndView();

//获取用户名和密码
    String nickname = req.getParameter("nickname");
    String password = req.getParameter("password");

    HttpSession session = req.getSession();
    String messages=null;
    List<User> userInfo = userDao.reg(nickname);



    if(userInfo.size()==0){
//        messages ="注册成功";
        //非空判断
        System.out.println("nickname="+nickname);
//        这里不可以用null，需要用空
        if(nickname==""||password==""){
            messages ="输入不可以为空";
            mv.addObject("message",messages);
            mv.setViewName("/user/reg");
            return mv;
        }
        User user = new User();
        user.setNickname(nickname);
        user.setPassword(password);
        userDao.save(user);
        session.setAttribute("user",user);
        messages ="注册成功，请选择登录进行登录";
        mv.addObject("message",messages);
//                mv.setViewName("redirect:" + "/");
        mv.setViewName("/user/reg");

    }else{
        messages ="你输入的账号昵称重复，请重新写一个";
        mv.addObject("message",messages);
        mv.setViewName("/user/reg");
    }
    return mv;
}

}
