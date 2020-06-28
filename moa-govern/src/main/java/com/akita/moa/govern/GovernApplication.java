package com.akita.moa.govern;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication(scanBasePackages = "com.akita.moa")
public class GovernApplication {
    public static void main(String[] args) {
        SpringApplication.run(GovernApplication.class, args);
    }
}
