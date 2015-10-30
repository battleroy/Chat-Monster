package by.bsu.fpmi.battleroy.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "REVIEW")
public class Review implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "REVIEW_ID")
    private long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_REVIEW_CREATOR", nullable = false)
    private User creator;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_SPOT_ID", nullable = false)
    private Spot spot;

    @Column(name = "REVIEW_TEXT", nullable = false)
    private String text;

    public Review() {

    }

    public Review(User creator, Spot spot, String text) {
        this.creator = creator;
        this.spot = spot;
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public User getCreator() {
        return creator;
    }

    public void setCreator(User creator) {
        this.creator = creator;
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
