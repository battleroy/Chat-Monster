package by.bsu.fpmi.battleroy.services.impl;

import by.bsu.fpmi.battleroy.dao.SpotDao;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.services.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Set;

@Service("spotService")
@Transactional
public class SpotServiceImpl implements SpotService {

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
    public boolean spotExists(long spotId) {
        return spotDao.getSpotBySpotId(spotId) != null;
    }
}
