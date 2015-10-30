package by.bsu.fpmi.battleroy.services;

import by.bsu.fpmi.battleroy.model.User;

import java.util.Set;

public interface UserService {

    void update(User user);
    User readByUserName(String userName);
    User registerNewUserAccount(User newUser);
    Set<User> getAllUsers();

}
