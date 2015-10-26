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

    @Column(name = "PHOTO_IMAGE_BYTES", nullable = false)
    private byte[] imageBytes;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_SPOT_ID", nullable = false)
    private Spot spot;

    public byte[] getImageBytes() {
        return imageBytes;
    }

    public void setImageBytes(byte[] imageBytes) {
        this.imageBytes = imageBytes;
    }

}
