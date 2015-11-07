package by.bsu.fpmi.battleroy.services.impl;

import by.bsu.fpmi.battleroy.dao.PhotoDao;
import by.bsu.fpmi.battleroy.model.Photo;
import by.bsu.fpmi.battleroy.services.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service("photoService")
@Transactional
public class PhotoServiceImpl implements PhotoService {

    @Autowired
    PhotoDao photoDao;

    @Override
    public Photo addPhoto(Photo newPhoto) {
        return photoDao.addPhoto(newPhoto);
    }

    public List<Photo> getPhotosForSpot(long spotId) {
        return photoDao.getPhotosForSpot(spotId);
    }

    @Override
    public Photo getPhotoById(long photoId) {
        return photoDao.getPhotoById(photoId);
    }
}
