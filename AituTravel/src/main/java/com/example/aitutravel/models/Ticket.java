package com.example.aitutravel.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Calendar;

@Entity
@Table(name = "tickets")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Ticket {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "cost",
            nullable = false)
    private int cost;
    @Column(name = "typeOfTicket",
            nullable = false)
    private String typeOfTicket;
    @Column(name = "ticketClass",
            nullable = false)
    private String ticketClass;
    @Column(name = "departureLocation",
            nullable = false)
    private String departureLocation;
    @Column(name = "arriveLocation",
            nullable = false)
    private String arriveLocation;
    @Column(name = "departureTime",
            nullable = false)
    private LocalTime departureTime;
    @Column(name = "departureDate",
            nullable = false)
    private LocalDate departureDate;
    @Column(name = "arriveTime",
            nullable = false)
    private LocalTime arriveTime;
    @Column(name = "arriveDate",
            nullable = false)
    private LocalDate arriveDate;

}
