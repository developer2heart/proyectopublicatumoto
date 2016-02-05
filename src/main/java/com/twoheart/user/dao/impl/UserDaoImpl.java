package com.twoheart.user.dao.impl;

import com.twoheart.user.dao.UserDao;
import com.twoheart.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;

/**
 * Created by Usuario on 05/02/2016.
 */

public class UserDaoImpl implements UserDao{

    @Autowired
    private MongoTemplate mongoTemplate;

    public void setMongoTemplate(MongoTemplate mongoTemplate) {
        this.mongoTemplate = mongoTemplate;
    }

    @Override
    public User save(User user) throws Exception {
        mongoTemplate.insert(user, "usuarios");
        return user;
    }
}
