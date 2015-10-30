package by.bsu.fpmi.battleroy.dao;

import by.bsu.fpmi.battleroy.model.User;

import java.util.Set;

public interface UserDao {

    User findByName(String userName);
    User save(User user);
    void update(User user);
    Set<User> getAllUsers();

}
