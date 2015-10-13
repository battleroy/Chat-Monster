package by.bsu.fpmi.battleroy.model;

public class Spot {

    private String name;
    private String address;
    private User creator;
    private double latitude;
    private double longitude;
    private Review[] reviews;
    private Photo[] photos;
    private Photo thumbnail;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User getCreator() {
        return creator;
    }

    public void setCreator(User creator) {
        this.creator = creator;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public Review[] getReviews() {
        return reviews;
    }

    public void setReviews(Review[] reviews) {
        this.reviews = reviews;
    }

    public Photo[] getPhotos() {
        return photos;
    }

    public void setPhotos(Photo[] photos) {
        this.photos = photos;
    }

    public Photo getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(Photo thumbnail) {
        this.thumbnail = thumbnail;
    }
}
