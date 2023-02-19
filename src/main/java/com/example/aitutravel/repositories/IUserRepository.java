package com.example.aitutravel.repositories;

import com.example.aitutravel.models.Ticket;
import com.example.aitutravel.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IUserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
