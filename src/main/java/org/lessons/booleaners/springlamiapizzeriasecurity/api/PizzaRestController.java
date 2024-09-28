package org.lessons.booleaners.springlamiapizzeriasecurity.api;

import jakarta.validation.Valid;
import org.lessons.booleaners.springlamiapizzeriasecurity.model.Pizza;
import org.lessons.booleaners.springlamiapizzeriasecurity.service.PizzaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin
@RequestMapping("/api/pizzas")
public class PizzaRestController {

    @Autowired
    private PizzaService service;

    @GetMapping
    public List<Pizza> index(@RequestParam(name = "query", required = false) String query) {
        List<Pizza> result;
        if (query != null && ! query.isEmpty()) {
            result = service.findByName(query);
        } else {
            result = service.findAll();
        }
        return result;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Pizza> show(@PathVariable("id") Integer id) {
        Optional<Pizza> pizza = service.getById(id);
        if (pizza.isPresent()) {
            return ResponseEntity.ok(pizza.get());
        }else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public Pizza store(@Valid @RequestBody Pizza pizza) {
        return service.create(pizza);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Pizza> update(@Valid @PathVariable("id") Integer id, @RequestBody Pizza pizza) {
        Optional<Pizza> oldPizza = service.getById(id);
        if (oldPizza.isPresent()) {
            Pizza newPizza = service.update(pizza);

            return ResponseEntity.ok(newPizza);
        }else{
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable("id") Integer id) {
        service.delete(id);
    }

}
