package by.bsu.fpmi.battleroy.services;

import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;

import java.util.Set;

public interface SpotService {

    Spot createNewSpot(Spot newSpot);
    Review createNewReview(Review review);
    void update(Spot spotToUpdate);
    void deleteSpotById(long spotId);
    Set<Spot> getSpotsByUserId(String userId);
    Set<Spot> getAllSpots();

}
