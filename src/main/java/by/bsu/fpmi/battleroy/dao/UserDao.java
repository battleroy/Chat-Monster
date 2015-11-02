package by.bsu.fpmi.battleroy.dao;

import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.model.UserRole;

import java.util.Set;

public interface UserDao {

    User findByName(String userName);
    User save(User user);
    void update(User user);
    Set<User> getAllUsers();
    void addUserRoleForUser(User user, String role);
    Set<UserRole> getUserRolesByUserId(String userId);

}
