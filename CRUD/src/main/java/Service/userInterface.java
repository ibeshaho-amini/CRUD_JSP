package Service;

import Model.User;

import java.util.List;

public interface userInterface {
    User recordUser(User userobj);
    User update_User(User userobj);
    User delete_User(User userobj);
    User searchbyId(User userobj);
    List<User> display_All();
}
