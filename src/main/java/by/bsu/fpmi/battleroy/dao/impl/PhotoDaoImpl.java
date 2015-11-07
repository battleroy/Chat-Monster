package by.bsu.fpmi.battleroy.dao.impl;

import by.bsu.fpmi.battleroy.dao.PhotoDao;
import by.bsu.fpmi.battleroy.dao.SpotDao;
import by.bsu.fpmi.battleroy.model.Photo;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;


@Repository
public class PhotoDaoImpl implements PhotoDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Photo addPhoto(Photo newPhoto) {
        getCurrentSession().save(newPhoto);
        return newPhoto;
    }

    @Override
    public List<Photo> getPhotosForSpot(long spotId) {
        Criteria criteria = getCurrentSession().createCriteria(Photo.class);
        criteria.add(Restrictions.eq("spot.id", spotId));
        List photoList = criteria.list();
        List<Photo> listToReturn = new ArrayList<Photo>();
        for (Object obj : photoList) {
            listToReturn.add((Photo) obj);
        }
        return listToReturn;
    }

    @Override
    public Photo getPhotoById(long photoId) {
        Criteria criteria = getCurrentSession().createCriteria(Photo.class);
        criteria.add(Restrictions.idEq(photoId));
        return (Photo)criteria.list().get(0);
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
