package by.bsu.fpmi.battleroy.controllers;

import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.model.User;
import by.bsu.fpmi.battleroy.services.SpotService;
import by.bsu.fpmi.battleroy.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;
import java.util.Set;

@Controller
public class AllSpotsController {

    @Autowired
    SpotService spotService;

    @Autowired
    UserService userService;

    @RequestMapping(value = { "/" }, method = RequestMethod.GET)
    public ModelAndView getIndex() {
        ModelAndView modelAndView = new ModelAndView("../../index");
        modelAndView.addObject("spots", getAllSpots());
        return modelAndView;
    }

    @RequestMapping(value = { "/myspots**" }, method = RequestMethod.GET)
    public ModelAndView getMySpots(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("../../index");
        User user = (User)request.getSession().getAttribute("user");
        modelAndView.addObject("spots", user.getSpots());
        return modelAndView;
    }

    @RequestMapping(value = { "/spot/{spotId}" }, method = RequestMethod.PUT)
    public String deleteSpotById(@PathVariable String spotId) {
        spotService.deleteSpotById(Long.parseLong(spotId));
        return "redirect:/myspots";
    }

    private Set<Spot> getAllSpots() {
        Set<User> allUsers = userService.getAllUsers();
        Set<Spot> spots = new HashSet<Spot>();
        for (User user : allUsers) {
            for (Spot spot : user.getSpots()) {
                spots.add(spot);
            }
        }
        return spots;
    }

}
