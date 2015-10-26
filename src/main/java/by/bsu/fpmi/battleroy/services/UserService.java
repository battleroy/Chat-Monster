package by.bsu.fpmi.battleroy.services;

import by.bsu.fpmi.battleroy.model.User;

public interface UserService {

    void update(User user);
    User readByUserName(String userName);
    User registerNewUserAccount(User newUser);

}
