package cn.itcast.test;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestSql {

    @Test
    public void run1() throws IOException {
       InputStream in =Resources.getResourceAsStream("SqlMapConfig.xml");

        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);

        SqlSession session = factory.openSession();
        AccountDao dao = session.getMapper(AccountDao.class);
        List<Account> list = dao.findAll();
        for (Account account:list)
        {
            System.out.println(account);
        }
        session.close();
        in.close();
    }

    @Test
    public void run2() throws IOException {
        Account account = new Account();
        account.setName("张三");
        account.setMoney(400d);

        InputStream in =Resources.getResourceAsStream("SqlMapConfig.xml");

        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);

        SqlSession session = factory.openSession();
        AccountDao dao = session.getMapper(AccountDao.class);
        dao.saveAccount(account);
        session.commit();
//        List<Account> list = dao.findAll();
//        for (Account account:list)
//        {
//            System.out.println(account);
//        }
        session.close();
        in.close();
    }

}
