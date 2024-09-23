package org.lessons.booleaners.springlamiapizzeriasecurity.repo;

import org.lessons.booleaners.springlamiapizzeriasecurity.model.Discount;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DiscountRepository extends JpaRepository<Discount, Integer> {

    List<Discount> findByDiscountNameContainingIgnoreCaseOrderByDiscountNameAsc(String name);

}
