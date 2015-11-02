package by.bsu.fpmi.battleroy.dao;

import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;

import java.util.Set;

public interface SpotDao {

    Spot createNewSpot(Spot newSpot);
    Spot getSpotById(long spotId);
    boolean spotExists(Spot spot);
    Review createNewReview(Review review);
    void update(Spot spot);
    void deleteSpotById(long spotId);
    Set<Spot> getSpotsByUserId(String userId);
    Set<Spot> getAllSpots();

}
