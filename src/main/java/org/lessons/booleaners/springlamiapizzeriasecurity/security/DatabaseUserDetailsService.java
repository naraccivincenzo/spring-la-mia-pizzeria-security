package org.lessons.booleaners.springlamiapizzeriasecurity.security;

import org.lessons.booleaners.springlamiapizzeriasecurity.model.User;
import org.lessons.booleaners.springlamiapizzeriasecurity.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DatabaseUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepository.findByUsername(username);

        if (user.isPresent()) {
            return new DatabaseUserDetails(user.get());
        }
        throw new UsernameNotFoundException("Username " + username + " not found");
    }
}
