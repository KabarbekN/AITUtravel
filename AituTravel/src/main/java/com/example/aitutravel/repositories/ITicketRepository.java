package com.example.aitutravel.repositories;

import com.example.aitutravel.models.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface ITicketRepository extends JpaRepository<Ticket, Long> {
    List<Ticket> findByDepartureLocation(String departureLocation);
    List<Ticket> findTicketByDepartureLocationAndArriveLocationAndDepartureDate(String departureLocation, String arriveLocation, LocalDate departureDay);
}
