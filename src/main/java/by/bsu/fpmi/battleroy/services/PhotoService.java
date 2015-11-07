package by.bsu.fpmi.battleroy.services;

import by.bsu.fpmi.battleroy.model.Photo;

import java.util.List;
import java.util.Set;

public interface PhotoService {

    Photo addPhoto(Photo newPhoto);
    Photo getPhotoById(long photoId);
    List<Photo> getPhotosForSpot(long spotId);
}
