package by.bsu.fpmi.battleroy.controllers;

import by.bsu.fpmi.battleroy.model.Photo;
import by.bsu.fpmi.battleroy.model.Review;
import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.services.PhotoService;
import by.bsu.fpmi.battleroy.services.SpotService;
import by.bsu.fpmi.battleroy.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
public class NewSpotController {

    @Autowired
    UserService userService;

    @Autowired
    SpotService spotService;

    @Autowired
    PhotoService photoService;

    @RequestMapping(value = "/newspot", method = RequestMethod.GET)
    public ModelAndView getNewSpot(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("../../WEB-INF/views/newspot");
        User user = (User)request.getSession().getAttribute("user");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RequestMapping(value = "/createspot", method = RequestMethod.POST)
    public String createSpot(
            @ModelAttribute("spot") Spot spotDto,
            @RequestParam MultipartFile photo,
            HttpServletRequest request) {

        User user = (User)request.getSession().getAttribute("user");
        Spot newSpot = getSpotForDto(spotDto, user);
        newSpot = spotService.createNewSpot(newSpot);

        if (newSpot != null) {
            String reviewText = request.getParameter("review");
            if (reviewText != null && reviewText.length() != 0) {
                Review review = new Review(user, newSpot, reviewText);
                spotService.createNewReview(review);
            }

            if (!photo.isEmpty()) {
                try {
                    byte[] bytes = photo.getBytes();
                    photoService.addPhoto(new Photo(bytes, newSpot));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        return "redirect:/myspots";
    }

    private Spot getSpotForDto(Spot spotDto, User creator) {
        Spot newSpot = new Spot();
        newSpot.setName(spotDto.getName());
        newSpot.setLatitude(spotDto.getLatitude());
        newSpot.setLongitude(spotDto.getLongitude());
        newSpot.setAddress(spotDto.getAddress());
        newSpot.setCreator(creator);
        return newSpot;
    }

}
