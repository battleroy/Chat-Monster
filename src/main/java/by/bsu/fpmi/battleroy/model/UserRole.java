package by.bsu.fpmi.battleroy.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "USER_ROLE", uniqueConstraints = @UniqueConstraint(columnNames = {"ROLE", "FK_USER_NAME"}))
public class UserRole implements Serializable {

    static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USER_ROLE_ID")
    private long id;

    @Column(name = "ROLE")
    private String role;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_USER_NAME", nullable = false)
    private User user;

    public UserRole() {

    }

    public UserRole(User user, String role) {
        this.user = user;
        this.role = role;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
