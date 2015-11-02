package by.bsu.fpmi.battleroy.dao.impl;

import by.bsu.fpmi.battleroy.dao.UserDao;
import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.model.UserRole;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User findByName(String username) {
        return (User)getCurrentSession().get(User.class, username);
    }

    @Override
    public Set<User> getAllUsers() {
        List users = getCurrentSession().createCriteria(User.class).list();
        Set<User> userSet = new HashSet<User>();
        for (Object object : users) {
            userSet.add((User) object);
        }
        return userSet;
    }

    @Override
    public User save(User user) {
        getCurrentSession().save(user);
        getCurrentSession().flush();
        return user;
    }

    @Override
    public void update(User user) {

    }

    @Override
    public void addUserRoleForUser(User user, String role) {
        UserRole userRole = new UserRole(user, role);
        getCurrentSession().save(userRole);
        getCurrentSession().flush();
    }

    @Override
    public Set<UserRole> getUserRolesByUserId(String userId) {
        Criteria criteria = getCurrentSession().createCriteria(UserRole.class);
        criteria.add(Restrictions.eq("user.username", userId));
        List userRoles = criteria.list();
        Set<UserRole> userRoleSet = new HashSet<UserRole>();
        for (Object object : userRoles) {
            userRoleSet.add((UserRole) object);
        }
        return userRoleSet;
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

}
