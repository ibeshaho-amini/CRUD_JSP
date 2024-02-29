package Service.Implemantation;

import DAO.UserDao;
import Model.User;
import Service.userInterface;
import org.hibernate.SessionFactory;

import java.util.List;

public class user_Imple implements userInterface {
    UserDao dao = new UserDao();

    public user_Imple(SessionFactory sessionFactory) {
    }

    @Override
    public User recordUser(User userobj) {
        return dao.register(userobj);
    }

    @Override
    public User update_User(User userobj) {
        return dao.update(userobj);
    }

    @Override
    public User delete_User(User userobj) {
        return dao.delete(userobj);
    }

    @Override
    public User searchbyId(User userobj) {
        return dao.Search(userobj);
    }

    @Override
    public List<User> display_All() {
        return dao.all_users();
    }
}
