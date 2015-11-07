package by.bsu.fpmi.battleroy.controllers;

import by.bsu.fpmi.battleroy.model.Spot;
import by.bsu.fpmi.battleroy.services.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EditSpotController {

    @Autowired
    SpotService spotService;

    @RequestMapping(value = "/spot/{spotId}/edit", method = RequestMethod.GET)
    public ModelAndView getEditSpot(@PathVariable String spotId) {
        ModelAndView modelAndView = new ModelAndView("../../WEB-INF/views/editspot");
        modelAndView.addObject("spot", spotService.getSpotBySpotId(Long.parseLong(spotId)));
        return modelAndView;
    }

    @RequestMapping(value = "/spot/{spotId}/save", method = RequestMethod.POST)
    public String saveSpot(@ModelAttribute("spot") Spot spotDto, @PathVariable String strSpotId) {
        Spot spotToUpdate = spotService.getSpotBySpotId(Long.parseLong(strSpotId));
        spotToUpdate.setAddress(spotDto.getAddress() != null ? spotDto.getAddress() : "null");
        spotToUpdate.setName(spotDto.getName());
        spotService.update(spotToUpdate);
        return "redirect:/myspots";
    }

}
