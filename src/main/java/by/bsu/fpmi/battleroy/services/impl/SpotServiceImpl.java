package by.bsu.fpmi.battleroy.services.impl;

import by.bsu.fpmi.battleroy.dao.SpotDao;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.services.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

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
}
