package com.twoheart.user.dao;

import com.twoheart.user.model.User;

/**
 * Created by Usuario on 05/02/2016.
 */
public interface UserDao{

    public User save(User user)throws Exception;
}
