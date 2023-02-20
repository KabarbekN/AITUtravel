package com.example.aitutravel.controllers;

import com.example.aitutravel.forms.UserLoginForm;
import com.example.aitutravel.models.User;
import com.example.aitutravel.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDate;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/signup")
    public String sayHello(Model model){
        return "signup";

    }

    @PostMapping("/user/create")
    public String ticketInfoDelete(User user){
        userService.saveUser(user);
        return "redirect:/";
    }

    @GetMapping("/login")
    public String login(HttpServletRequest request) {
        HttpSession req = request.getSession();
        boolean reg = true;
        Object isRegistered = req.getAttribute("isRegistered");
        if (isRegistered == null) {
            reg = false;
        }
        if (reg == true) {
            return "redirect:/";
        }
        return "login";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request, UserLoginForm user) {
        HttpSession req = request.getSession();
        boolean reg = true;
        Object isRegistered = req.getAttribute("isRegistered");
        if (isRegistered == null) {
            reg = false;
        }
        if (reg == false) {

            Object email = user.getEmail();
            if (email == null) {
//                return "redirect:/signup";
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "HTTP Status will be NOT FOUND (CODE 404)\n");
            }
            req.setAttribute("isRegistered", true);
            User userserv = userService.getUserByEmail(email.toString());

            if (userserv != null) {
                return "redirect:/signup";
            }
        }

        return "redirect:/";
    }

}
