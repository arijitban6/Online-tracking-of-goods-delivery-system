package com.wase6.Onlinetrackingofgoodsdeliverysystem;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.SendEmail;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.mail.MailSenderAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.ErrorPageFilter;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;


@SpringBootApplication
public class Application extends SpringBootServletInitializer {


	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

    @Bean
    public SendEmail mail(){
	    return new SendEmail();
    }

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
