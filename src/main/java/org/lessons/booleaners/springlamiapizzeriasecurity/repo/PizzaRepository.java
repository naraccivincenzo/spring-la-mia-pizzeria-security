package org.lessons.booleaners.springlamiapizzeriasecurity.repo;

import org.lessons.booleaners.springlamiapizzeriasecurity.model.Pizza;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PizzaRepository extends JpaRepository<Pizza, Integer> {

    List<Pizza> findByNameContainingIgnoreCaseOrderByNameAsc(String name);
}
