package by.bsu.fpmi.battleroy.dao.impl;

import by.bsu.fpmi.battleroy.dao.SpotDao;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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
        List spots = getCurrentSession().createCriteria(Spot.class).list();
        for (Object obj : spots) {
            Spot oldSpot = (Spot)obj;
            if (oldSpot.getLatitude() == spot.getLatitude() && oldSpot.getLongitude() == spot.getLongitude())
                return true;
        }
        return false;
    }

    @Override
    public Review createNewReview(Review review) {
        getCurrentSession().save(review);
        return review;
    }

    @Override
    public void update(Spot spot) {
        getCurrentSession().update(spot);
    }

    @Override
    public void deleteSpotById(long spotId) {
        getCurrentSession().delete(getSpotById(spotId));
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
