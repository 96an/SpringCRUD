package com.eban.springmvccrud.dao;

import java.util.List;

import com.eban.springmvccrud.model.UserProfile;


public interface UserProfileDao {

    List<UserProfile> findAll();

    UserProfile findByType(String type);

    UserProfile findById(int id);
}