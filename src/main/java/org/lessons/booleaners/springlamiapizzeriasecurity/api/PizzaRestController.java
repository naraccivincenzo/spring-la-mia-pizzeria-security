package org.lessons.booleaners.springlamiapizzeriasecurity.api;

import org.lessons.booleaners.springlamiapizzeriasecurity.model.Pizza;
import org.lessons.booleaners.springlamiapizzeriasecurity.service.PizzaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public Pizza show(@PathVariable("id") Integer id) {
        return service.getById(id);
    }

    @PostMapping
    public Pizza store(@RequestBody Pizza pizza) {
        return service.create(pizza);
    }

    @PutMapping("/{id}")
    public Pizza update(@PathVariable("id") Integer id, @RequestBody Pizza pizza) {
        return service.update(pizza);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable("id") Integer id) {
        service.delete(id);
    }
}
