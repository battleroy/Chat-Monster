package by.bsu.fpmi.battleroy.dao.impl;

import by.bsu.fpmi.battleroy.dao.SpotDao;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import org.hibernate.*;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Repository
public class SpotDaoImpl implements SpotDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Spot createNewSpot(Spot newSpot) {
        getCurrentSession().save(newSpot);
        return newSpot;
    }

    @Override
    public Spot getSpotById(long spotId) {
        return (Spot)getCurrentSession().get(Spot.class, spotId);
    }

    @Override
    public boolean spotExists(Spot spot) {
        Criteria criteria = getCurrentSession().createCriteria(Spot.class);
        criteria.add(Restrictions.eq("latitude", spot.getLatitude())).add(Restrictions.eq("longitude", spot.getLongitude()));
        List spots = criteria.list();
        return spots.size() == 1;
    }

    @Override
    public Review createNewReview(Review review) {
        getCurrentSession().save(review);
        getCurrentSession().flush();
        return review;
    }

    @Override
    public void update(Spot spot) {
        getCurrentSession().update(spot);
        getCurrentSession().flush();
    }

    @Override
    public void deleteSpotById(long spotId) {
        deleteById(Spot.class, spotId);
        getCurrentSession().flush();
    }

    @Override
    public Set<Spot> getSpotsByUserId(String userId) {
        Criteria criteria = getCurrentSession().createCriteria(Spot.class);
        criteria.add(Restrictions.eq("creator.username", userId));
        criteria.setFetchMode("creator", FetchMode.JOIN);
        List spots = criteria.list();
        Set<Spot> spotSet = new HashSet<Spot>();
        for (Object object : spots) {
            spotSet.add((Spot) object);
        }
        return spotSet;
    }

    @Override
    public Set<Spot> getAllSpots() {
        Criteria criteria = getCurrentSession().createCriteria(Spot.class);
        List spots = criteria.list();
        Set<Spot> spotSet = new HashSet<Spot>();
        for (Object object : spots) {
            spotSet.add((Spot) object);
        }
        return spotSet;
    }

    private boolean deleteById(Class<?> type, Serializable id) {
        Object persistentInstance = getCurrentSession().load(type, id);
        if (persistentInstance != null) {
            getCurrentSession().delete(persistentInstance);
            return true;
        }
        return false;
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
