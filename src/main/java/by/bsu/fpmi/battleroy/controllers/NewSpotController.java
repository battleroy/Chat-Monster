package by.bsu.fpmi.battleroy.controllers;

import by.bsu.fpmi.battleroy.dao.UserDao;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.services.SpotService;
import by.bsu.fpmi.battleroy.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class NewSpotController {

    @Autowired
    UserService userService;

    @Autowired
    SpotService spotService;

    @RequestMapping(value = "/newspot", method = RequestMethod.GET)
    public ModelAndView getNewSpot(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("../../WEB-INF/views/newspot");
        User user = (User)request.getSession().getAttribute("user");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RequestMapping(value = "/createspot", method = RequestMethod.POST)
    public String createSpot(HttpServletRequest request) {
        Spot newSpot = new Spot();
        User user = (User)request.getSession().getAttribute("user");
        newSpot.setName(request.getParameter("name"));
        newSpot.setLatitude(Double.parseDouble(request.getParameter("latitude")));
        newSpot.setLongitude(Double.parseDouble(request.getParameter("longitude")));
        newSpot.setAddress("Ulica Esenina, dom Karuselina");
        newSpot.setCreator(user);

        newSpot = createNewSpot(newSpot);
        if (newSpot != null) {
            String reviewText = request.getParameter("review");
            if (reviewText != null && reviewText.length() != 0) {
                Review review = new Review(user, newSpot, reviewText);
                createNewReview(review);
                newSpot.getReviews().add(review);
                spotService.update(newSpot);
            }
        }
        return "redirect:/myspots";
    }

    private Spot createNewSpot(Spot newSpot) {
        return spotService.createNewSpot(newSpot);
    }

    private Review createNewReview(Review newReview) {
        return spotService.createNewReview(newReview);
    }

}
