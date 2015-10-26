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
    private Member creator;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_SPOT_ID", nullable = false)
    private Spot spot;

    @Column(name = "REVIEW_TEXT", nullable = false)
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Member getCreator() {
        return creator;
    }

    public void setCreator(Member creator) {
        this.creator = creator;
    }
}
