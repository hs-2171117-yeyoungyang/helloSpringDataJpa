package kr.ac.hansung.cse.hellospringdatajpa.service;

import kr.ac.hansung.cse.hellospringdatajpa.entity.MyUser;

public interface RegistrationService {
    MyUser registerNewUser(String email, String password, String role);
}
