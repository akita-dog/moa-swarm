package com.akita.moa.roster;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class RosterApplication {
    public static void main(String[] args) {
        SpringApplication.run(RosterApplication.class, args);
    }
}
