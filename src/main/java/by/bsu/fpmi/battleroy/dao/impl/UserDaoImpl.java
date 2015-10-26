package by.bsu.fpmi.battleroy.dao.impl;

import by.bsu.fpmi.battleroy.dao.UserDao;
import by.bsu.fpmi.battleroy.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User findByName(String username) {
        return (User)getCurrentSession().get(User.class, username);
    }

    @Override
    public User save(User user) {
        getCurrentSession().save(user);
        return user;
    }

    @Override
    public void update(User user) {

    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

}
