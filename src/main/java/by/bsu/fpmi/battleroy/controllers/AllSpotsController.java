package by.bsu.fpmi.battleroy.controllers;

import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.services.PhotoService;
import by.bsu.fpmi.battleroy.services.SpotService;
import by.bsu.fpmi.battleroy.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Controller
public class AllSpotsController {

    @Autowired
    SpotService spotService;

    @Autowired
    UserService userService;

    @Autowired
    PhotoService photoService;

    @RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
    public ModelAndView getIndex() {
        ModelAndView modelAndView = new ModelAndView("../../index");
        Set<Spot> allSpots = spotService.getAllSpots();
        modelAndView.addObject("spots", allSpots);
        modelAndView.addObject("photos", getPhotoLinksForSpots(allSpots));
        modelAndView.addObject("reviews", getReviewsForSpots(allSpots));
        return modelAndView;
    }

    @RequestMapping(value = { "/myspots" }, method = RequestMethod.GET)
    public ModelAndView getMySpots(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("../../index");
        User user = (User)request.getSession().getAttribute("user");
        Set<Spot> userSpots = spotService.getSpotsByUserId(user.getUsername());
        modelAndView.addObject("spots", userSpots);
        modelAndView.addObject("photos", getPhotoLinksForSpots(userSpots));
        modelAndView.addObject("reviews", getReviewsForSpots(userSpots));
        return modelAndView;
    }

    @RequestMapping(value = { "/spot/{spotId}/delete" }, method = RequestMethod.POST)
    public String deleteSpotById(@PathVariable String spotId) {
        spotService.deleteSpotById(Long.parseLong(spotId));
        return "redirect:/myspots";
    }

    @RequestMapping(value = { "/nearestSpot" }, method = RequestMethod.GET)
    public ModelAndView getNearestSpots(
            @RequestParam(value = "lat") double latitude,
            @RequestParam(value = "lon") double longitude) {
        ModelAndView modelAndView = new ModelAndView("../../index");
        Set<Spot> nearestSpots = spotService.getNearestSpots(latitude, longitude);
        modelAndView.addObject("spots", nearestSpots);
        modelAndView.addObject("photos", getPhotoLinksForSpots(nearestSpots));
        modelAndView.addObject("reviews", getReviewsForSpots(nearestSpots));
        return modelAndView;
    }

    private Map<Spot, String> getPhotoLinksForSpots(Set<Spot> spots) {
        Map<Spot, String> photoMap = new HashMap<Spot, String>();
        for (Spot spot : spots) {
            try {
                long photoId = photoService.getPhotosForSpot(spot.getId()).get(0).getId();
                photoMap.put(spot, "/photo/" + photoId);
            } catch (IndexOutOfBoundsException ex) {
                photoMap.put(spot, "https://browshot.com/static/images/not-found.png");
            }
        }
        return photoMap;
    }

    private Map<Spot, Review> getReviewsForSpots(Set<Spot> spots) {
        Map<Spot, Review> reviewMap = new HashMap<Spot, Review>();
        for (Spot spot : spots) {
            reviewMap.put(spot, spotService.getReviewBySpotId(spot.getId()));
        }
        return reviewMap;
    }

}
