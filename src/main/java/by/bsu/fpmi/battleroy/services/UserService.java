package by.bsu.fpmi.battleroy.services;

import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.model.UserRole;

import java.util.Set;

public interface UserService {

    void update(User user);
    User readByUserName(String userName);
    User registerNewUserAccount(User newUser);
    Set<User> getAllUsers();
    Set<UserRole> getUserRolesByUserId(String userId);

}
