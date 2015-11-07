package by.bsu.fpmi.battleroy.dao;

import by.bsu.fpmi.battleroy.model.Photo;

import java.util.List;

public interface PhotoDao {

    Photo addPhoto(Photo newPhoto);
    List<Photo> getPhotosForSpot(long spotId);
    Photo getPhotoById(long photoId);

}
