package by.bsu.fpmi.battleroy.services.impl;

import by.bsu.fpmi.battleroy.dao.UserDao;
import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.model.UserRole;
import by.bsu.fpmi.battleroy.services.UserService;
import by.bsu.fpmi.battleroy.util.CustomPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Set;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private CustomPasswordEncoder passwordEncoder;

    @Override
    public Set<UserRole> getUserRolesByUserId(String userId) {
        return userDao.getUserRolesByUserId(userId);
    }

    @Override
    public void update(User user) {

    }

    @Override
    public User readByUserName(String userName) {
        return userDao.findByName(userName);
    }

    @Override
    public Set<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    public User registerNewUserAccount(User newUser) {
        if (usernameExists(newUser.getUsername())) {
            throw new NullPointerException("There is an account with that username: " + newUser.getUsername());
        }
        User user = new User();

        user.setUsername(newUser.getUsername());
        user.setPassword(passwordEncoder.encodePassword(newUser.getPassword(), newUser.getUsername()));
        user.setFirstName(newUser.getFirstName());
        user.setLastName(newUser.getLastName());
        //user.getUserRoles().add(new UserRole(user, "USER"));
        user = userDao.save(user);
        userDao.addUserRoleForUser(user, "USER");
        return user;
    }

    private boolean usernameExists(final String name) {
        final User user = userDao.findByName(name);
        return user != null;
    }
}
