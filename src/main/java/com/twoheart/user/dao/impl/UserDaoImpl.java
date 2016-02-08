package com.twoheart.user.dao.impl;

import com.twoheart.user.dao.UserDao;
import com.twoheart.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

/**
 * Created by Usuario on 05/02/2016.
 */
@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    private MongoOperations mongoOperations;

    private static final String USER_COLLECTION = "usuarios";

    public void setMongoTemplate(MongoOperations mongoOperations) {
        this.mongoOperations = mongoOperations;
    }

    @Override
    public User save(User user) throws Exception {
        mongoOperations.insert(user, USER_COLLECTION);
        return user;
    }
}
