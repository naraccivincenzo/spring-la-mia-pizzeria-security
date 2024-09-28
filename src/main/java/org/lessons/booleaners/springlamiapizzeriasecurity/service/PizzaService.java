package org.lessons.booleaners.springlamiapizzeriasecurity.service;

import org.lessons.booleaners.springlamiapizzeriasecurity.model.Pizza;
import org.lessons.booleaners.springlamiapizzeriasecurity.repo.PizzaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.List;
import java.util.Optional;

@Service
public class PizzaService {

    @Autowired
    private PizzaRepository repository;

    public List<Pizza> findAll() {
        return repository.findAll();
    }

    public List<Pizza> findByName(String name) {
        return repository.findByNameContainingIgnoreCaseOrderByNameAsc(name);
    }

    public Optional<Pizza> getById(Integer id) {
        return repository.findById(id);
    }

    public Pizza create(Pizza pizza) {
        return repository.save(pizza);
    }

    public Pizza update(Pizza pizza) {
        pizza.setUpdatedAt(Instant.now());
        return repository.save(pizza);
    }

    public void delete(int id) {
        repository.deleteById(id);
    }
}
