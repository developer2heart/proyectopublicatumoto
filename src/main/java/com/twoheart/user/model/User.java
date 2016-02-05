package com.twoheart.user.model;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * Created by Usuario on 05/02/2016.
 */
@Document(collection = "usuarios")
public class User implements UserDetails {

    @Id
    private String id;
    @Indexed(unique = true)
    private String username;
    private String password;
    private List<GrantedAuthority> authorities;
    private boolean enabled = true;
    private boolean credentialsNonExpired = false;
    private boolean accountNonLocked = false;
    private boolean accountNonExpired = false;
    @CreatedDate
    private Date createUserDate;
    @LastModifiedDate
    private Date lastModifiedUserDate;

    public void setId(String id) {this.id = id;}
    public void setUsername(String username) {this.username = username;}
    public void setPassword(String password) {this.password = password;}
    public void setRoles(List<GrantedAuthority> authorities) {this.authorities = authorities;}
    public void setEnabled(boolean enabled) {this.enabled = enabled;}
    public void setCredentialsNonExpired(boolean credentialsNonExpired) {this.credentialsNonExpired = credentialsNonExpired;}
    public void setAccountNonLocked(boolean accountNonLocked) {this.accountNonLocked = accountNonLocked;}
    public void setAccountNonExpired(boolean accountNonExpired) {this.accountNonExpired = accountNonExpired;}
    public Date getCreatedate() {return createUserDate;}
    public void setCreatedate(Date createdate) {this.createUserDate = createdate;}
    public Date getLastModified() {return lastModifiedUserDate;}
    public void setLastModified(Date lastModified) {this.lastModifiedUserDate = lastModified;}

    public String getId() {
        return id;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.authorities;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return this.accountNonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.accountNonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }
}
