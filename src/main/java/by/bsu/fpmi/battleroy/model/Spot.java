package by.bsu.fpmi.battleroy.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "SPOT", uniqueConstraints = @UniqueConstraint(columnNames = {"SPOT_LATITUDE", "SPOT_LONGITUDE"}))
public class Spot implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SPOT_ID")
    private long id;

    @Column(name = "SPOT_NAME", nullable = false)
    private String name;

    @Column(name = "SPOT_ADDRESS", nullable = true)
    private String address;

    @Column(name = "SPOT_LATITUDE", nullable = false)
    private double latitude;

    @Column(name = "SPOT_LONGITUDE", nullable = false)
    private double longitude;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_MEMBER_ID", nullable = false)
    private Member creator;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "spot", cascade = CascadeType.ALL)
    private Set<Review> reviews = new HashSet<Review>();

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "spot", cascade = CascadeType.ALL)
    private Set<Photo> photos = new HashSet<Photo>();

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

    public Member getCreator() {
        return creator;
    }

    public void setCreator(Member creator) {
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

    public Set<Review> getReviews() {
        return reviews;
    }

    public void setReviews(Set<Review> reviews) {
        this.reviews = reviews;
    }

    public Set<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(Set<Photo> photos) {
        this.photos = photos;
    }

}
