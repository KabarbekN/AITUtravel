package com.example.aitutravel.services;

import com.example.aitutravel.models.Ticket;
import com.example.aitutravel.repositories.ITicketRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class TicketService {
    private final ITicketRepository ticketRepository;

    public List<Ticket> listTickets(String departureLocation, String arriveLocation, LocalDate departureDate){
        if (departureLocation != null && arriveLocation != null && departureDate != null) {
            return ticketRepository.findTicketByDepartureLocationAndArriveLocationAndDepartureDate(departureLocation,arriveLocation,departureDate);
        }
        return ticketRepository.findAll();
    }

    public void deleteTicket(Long id){
        ticketRepository.deleteById(id);
    }

    public void saveTicket(Ticket ticket){
        ticketRepository.save(ticket);
    }

    public Ticket getProductById(Long id){
        return ticketRepository.findById(id).orElse(null);
    }



}
