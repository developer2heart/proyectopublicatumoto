package com.twoheart.user.service.impl;

import com.twoheart.user.dao.UserDao;
import com.twoheart.user.model.User;
import com.twoheart.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Usuario on 05/02/2016.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User save(User user) throws Exception {
        userDao.save(user);
        return user;
    }
}
