package com.example.aitutravel.controllers;


import com.example.aitutravel.models.Ticket;
import com.example.aitutravel.services.TicketService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@Controller
@RequiredArgsConstructor
public class TicketController {
    private final TicketService ticketService;

    @GetMapping("/")
    public String sayHello(@RequestParam(name = "departureCity", required = false) String departureLocation,
                           @RequestParam(name = "arriveCity", required = false) String arriveLocation,
                           @RequestParam(name = "dateOfTicket", required = false) LocalDate departureDate,
                           Model model){
        model.addAttribute("ticketsList", ticketService.listTickets(departureLocation, arriveLocation, departureDate));
        return "main";
    }
    @PostMapping("/ticket/create")
    public String createTicket(Ticket ticket){
        ticketService.saveTicket(ticket);
        return "redirect:/";
    }

    @GetMapping("/main-ticket-info/{id}")
    public String ticketInfo(@PathVariable Long id, Model model)
    {
        model.addAttribute("ticket", ticketService.getProductById(id));
        return "main-ticket-info";
    }

    @PostMapping("/main/delete/{id}")
    public String ticketInfoDelete(@PathVariable Long id){
        ticketService.deleteTicket(id);
        return "redirect:/";
    }

    @GetMapping("searching")
    public String searchingPage(){
        return "search";
    }

    @GetMapping("newticket")
    public String createPage(){
        return "ticket";
    }





}
