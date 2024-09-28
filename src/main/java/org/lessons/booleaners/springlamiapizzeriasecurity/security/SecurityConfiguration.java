package org.lessons.booleaners.springlamiapizzeriasecurity.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration {


    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .requestMatchers("/user").hasAuthority("USER")
                .requestMatchers("/admin").hasAuthority("ADMIN")
                .requestMatchers("/pizzas/edit/**").hasAuthority("ADMIN")
                .requestMatchers("/discounts").hasAuthority("ADMIN")
                .requestMatchers("/ingredients").hasAuthority("ADMIN")
                .requestMatchers("/pizzas/create").hasAuthority("ADMIN")
                .requestMatchers("/pizzas/delete/**").hasAuthority("ADMIN")
                .requestMatchers("/pizzas/show/*/discount").hasAuthority("ADMIN")
                .requestMatchers("/").permitAll()
                .and().formLogin()
                .and().logout()
                .and().exceptionHandling()
                .and().csrf().disable();

        return http.build();
    }

    @Bean
    DatabaseUserDetailsService userDetailsService() {
        return new DatabaseUserDetailsService();
    }

    @Bean
    PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

    @Bean
    DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();

        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());

        return authProvider;
    }
}
