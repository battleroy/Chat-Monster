package by.bsu.fpmi.battleroy.services.impl;

import by.bsu.fpmi.battleroy.dao.SpotDao;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.services.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.HashSet;
import java.util.Set;

@Service("spotService")
@Transactional
public class SpotServiceImpl implements SpotService {

    private final static double NEAREST_DISTANCE_THRESHOLD_KM = 20;
    private final static double EARTH_RADIUS_KM = 6371;

    @Autowired
    SpotDao spotDao;

    @Override
    public Spot createNewSpot(Spot newSpot) {
        if (!spotDao.spotExists(newSpot))
            return spotDao.createNewSpot(newSpot);
        return null;
    }

    @Override
    public Review createNewReview(Review review) {
        return spotDao.createNewReview(review);
    }

    @Override
    public void update(Spot spotToUpdate) {
        spotDao.update(spotToUpdate);
    }

    @Override
    public void deleteSpotById(long spotId) {
        spotDao.deleteSpotById(spotId);
    }

    @Override
    public Set<Spot> getSpotsByUserId(String userId) {
        return spotDao.getSpotsByUserId(userId);
    }

    @Override
    public Spot getSpotBySpotId(long spotId) {
        return spotDao.getSpotBySpotId(spotId);
    }

    @Override
    public Set<Spot> getAllSpots() {
        return spotDao.getAllSpots();
    }

    @Override
    public Review getReviewBySpotId(long spotId) {
        return spotDao.getReviewBySpotId(spotId);
    }

    @Override
    public Set<Spot> getNearestSpots(double latitude, double longitude) {
        Set<Spot> allSpots = getAllSpots();
        Set<Spot> result = new HashSet<Spot>();
        for (Spot spot : allSpots) {
            if (getDistanceBetweenPoints(
                    latitude, spot.getLatitude(),
                    longitude, spot.getLongitude())
                    < NEAREST_DISTANCE_THRESHOLD_KM) {
                result.add(spot);
            }
        }
        return result;
    }

    @Override
    public boolean spotExists(long spotId) {
        return spotDao.getSpotBySpotId(spotId) != null;
    }

    double getDistanceBetweenPoints(double lat1, double lat2, double lon1, double lon2) {
        lat1 = Math.toRadians(lat1);
        lat2 = Math.toRadians(lat2);
        double deltaLon = Math.toRadians(lon2 - lon1);
        return Math.abs(Math.acos(
                Math.sin(lat1) * Math.sin(lat2) +
                Math.cos(lat1) * Math.cos(lat2) * Math.cos(deltaLon)
        ) * EARTH_RADIUS_KM);
    }
}
