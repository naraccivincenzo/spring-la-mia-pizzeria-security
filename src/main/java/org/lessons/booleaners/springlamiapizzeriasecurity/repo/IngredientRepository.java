package org.lessons.booleaners.springlamiapizzeriasecurity.repo;

import org.lessons.booleaners.springlamiapizzeriasecurity.model.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IngredientRepository extends JpaRepository<Ingredient, Integer> {

    List<Ingredient> findByNameContainingIgnoreCaseOrderByNameAsc(String name);

}
