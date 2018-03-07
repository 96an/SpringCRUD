package com.eban.springmvccrud.service;

import java.util.List;

import com.eban.springmvccrud.model.UserProfile;


public interface UserProfileService {

    UserProfile findById(int id);

    UserProfile findByType(String type);

    List<UserProfile> findAll();

}
