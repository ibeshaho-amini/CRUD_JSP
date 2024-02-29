package DAO;

import Controller.HibernateUtil;
import Model.User;
import org.hibernate.Session;

import java.util.List;

public class UserDao {
    public User register(User userobject) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.save(userobject);
            session.beginTransaction().commit();
            session.close();
            return userobject;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    public User update(User userobject) {
        try {
            Session ss = HibernateUtil.getSessionFactory().openSession();
            ss.update(userobject);
            ss.beginTransaction().commit();
            ss.close();
            return userobject;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    public User delete(User userobject) {
        try {
            Session ss = HibernateUtil.getSessionFactory().openSession();
            ss.delete(userobject);
            ss.beginTransaction().commit();
            ss.close();
            return userobject;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    public User Search(User userobj)
    {
        try
        {
            Session ss = HibernateUtil.getSessionFactory().openSession();
            User user = ss.get(User.class, userobj.getUser_id());
            ss.close();
            return user;
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        return null;
    }
    public List<User> all_users()
    {
        try
        {
            Session session = HibernateUtil.getSessionFactory().openSession();
            List<User> userList = session.createQuery("select us from User us").list();
            session.close();
            return userList;
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        return null;
    }
}
