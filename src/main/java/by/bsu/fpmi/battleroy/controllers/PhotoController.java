package by.bsu.fpmi.battleroy.controllers;

import by.bsu.fpmi.battleroy.services.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PhotoController {

    @Autowired
    PhotoService photoService;

    @RequestMapping(value = "/photo/{photoId}", method = RequestMethod.GET)
    @ResponseBody
    public byte[] getPhoto(@PathVariable String photoId) {
        return photoService.getPhotoById(Long.parseLong(photoId)).getImageBytes();
    }

}
