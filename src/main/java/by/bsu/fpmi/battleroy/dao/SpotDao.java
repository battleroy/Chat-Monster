package by.bsu.fpmi.battleroy.dao;

import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;

public interface SpotDao {

    Spot createNewSpot(Spot newSpot);
    Spot getSpotById(long spotId);
    boolean spotExists(Spot spot);
    Review createNewReview(Review review);
    void update(Spot spot);
    void deleteSpotById(long spotId);
}
