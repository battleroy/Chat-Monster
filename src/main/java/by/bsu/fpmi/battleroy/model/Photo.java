package by.bsu.fpmi.battleroy.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "PHOTO")
public class Photo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PHOTO_ID")
    private long id;

    @Lob
    @Column(name = "PHOTO_IMAGE_BYTES", nullable = false, length = 10 * 1024 * 1024)
    private byte[] imageBytes;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_SPOT_ID", nullable = false)
    private Spot spot;

    public Photo() {

    }

    public Photo(byte[] imageBytes, Spot spot) {
        this.imageBytes = imageBytes;
        this.spot = spot;
    }

    public byte[] getImageBytes() {
        return imageBytes;
    }

    public void setImageBytes(byte[] imageBytes) {
        this.imageBytes = imageBytes;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Spot getSpot() {
        return spot;
    }

    public void setSpot(Spot spot) {
        this.spot = spot;
    }
}
