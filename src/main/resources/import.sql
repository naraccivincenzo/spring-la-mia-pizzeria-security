-- Pizzas Charging
INSERT INTO `bella-napoli`.pizzas (price, updated_at, name, photo, description) VALUES(3.50, '2024-08-24 12:00:00', 'Margherita', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Pizza_Margherita_stu_spivack.jpg', 'The classic Margherita with fresh basil and mozzarella'),(4.00, '2024-08-24 12:00:00', 'Pepperoni', 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Pepperoni_pizza.jpg', 'Spicy pepperoni with mozzarella cheese'),(5.00, '2024-08-24 12:00:00', 'Hawaiian', 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Hawaiian_pizza.jpg', 'Ham, pineapple, and mozzarella cheese'),(4.50, '2024-08-24 12:00:00', 'Four Cheese', 'https://upload.wikimedia.org/wikipedia/commons/a/a2/Quattro_formaggi_pizza.jpg', 'Mozzarella, gorgonzola, parmesan, and ricotta'),(5.50, '2024-08-24 12:00:00', 'Vegetarian', 'https://upload.wikimedia.org/wikipedia/commons/3/39/Vegetarian_pizza.jpg', 'Fresh vegetables with mozzarella and tomato sauce'),(4.75, '2024-08-24 12:00:00', 'BBQ Chicken', 'https://upload.wikimedia.org/wikipedia/commons/b/bb/BBQ_Chicken_Pizza.jpg', 'Grilled chicken with BBQ sauce and red onions'),(6.00, '2024-08-24 12:00:00', 'Meat Lovers', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Meat_Lover%27s_Pizza.jpg', 'Pepperoni, sausage, bacon, and ham'),(5.25, '2024-08-24 12:00:00', 'Buffalo Chicken', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Buffalo_Chicken_Pizza.jpg', 'Spicy buffalo chicken with blue cheese dressing'),(5.00, '2024-08-24 12:00:00', 'Mushroom and Truffle', 'https://upload.wikimedia.org/wikipedia/commons/4/45/Truffle_pizza.jpg', 'Mushrooms and truffle oil with mozzarella'),(4.75, '2024-08-24 12:00:00', 'Quattro Stagioni', 'https://upload.wikimedia.org/wikipedia/commons/7/77/Quattro_Stagioni_Pizza.jpg', 'Four different sections representing the seasons'),(5.50, '2024-08-24 12:00:00', 'Seafood Delight', 'https://upload.wikimedia.org/wikipedia/commons/0/07/Seafood_pizza_with_scallops%2C_shrimp%2C_squid%2C_mussels%2C_and_tomatoes.jpg', 'Shrimp, calamari, and mussels with tomato sauce'),(4.25, '2024-08-24 12:00:00', 'Prosciutto and Arugula', 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Prosciutto_arugula_pizza.jpg', 'Prosciutto, arugula, and parmesan'),(5.75, '2024-08-24 12:00:00', 'Napoletana', 'https://upload.wikimedia.org/wikipedia/commons/3/32/Napoletana_Pizza.jpg', 'Anchovies, capers, and olives with tomato sauce'),(6.00, '2024-08-24 12:00:00', 'Calabrese', 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Calabrese_pizza.jpg', 'Spicy Calabrian salami with chili flakes'),(4.50, '2024-08-24 12:00:00', 'Funghi and Sausage', 'https://upload.wikimedia.org/wikipedia/commons/5/58/Pizza_with_sausage_and_mushrooms.jpg', 'Sausage and mushrooms with mozzarella'),(5.25, '2024-08-24 12:00:00', 'Zucchini and Ricotta', 'https://upload.wikimedia.org/wikipedia/commons/6/60/Zucchini_pizza.jpg', 'Zucchini slices with ricotta cheese'),(4.75, '2024-08-24 12:00:00', 'Mediterranean', 'https://upload.wikimedia.org/wikipedia/commons/e/e1/Mediterranean_pizza.jpg', 'Feta, olives, sun-dried tomatoes, and red onions'),(5.50, '2024-08-24 12:00:00', 'Pesto Chicken', 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Pesto_chicken_pizza.jpg', 'Grilled chicken with pesto sauce and mozzarella'),(6.25, '2024-08-24 12:00:00', 'Eggplant Parmesan', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Eggplant_pizza.jpg', 'Roasted eggplant with parmesan and tomato sauce'),(4.00, '2024-08-24 12:00:00', 'Bianca', 'https://upload.wikimedia.org/wikipedia/commons/6/64/White_pizza_bianca.jpg', 'White pizza with garlic, olive oil, and mozzarella'),(5.75, '2024-08-24 12:00:00', 'Marinara', 'https://upload.wikimedia.org/wikipedia/commons/9/97/Marinara_Pizza.jpg', 'Tomato sauce, garlic, oregano, and olive oil'),(6.50, '2024-08-24 12:00:00', 'Siciliana', 'https://upload.wikimedia.org/wikipedia/commons/1/12/Sicilian_pizza_with_pepperoni_and_mushrooms.jpg', 'Thick crust with tomatoes, onions, anchovies, and herbs'),(5.00, '2024-08-24 12:00:00', 'Gorgonzola and Pear', 'https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza_with_gorgonzola_and_pear.jpg', 'Gorgonzola cheese with sliced pears and walnuts'),(5.50, '2024-08-24 12:00:00', 'Spinach and Feta', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Spinach_feta_pizza.jpg', 'Spinach, feta cheese, and mozzarella'),(6.75, '2024-08-24 12:00:00', 'Truffle and Prosciutto', 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Truffle_prosciutto_pizza.jpg', 'Black truffles, prosciutto, and mozzarella');

-- Charging special offers
INSERT INTO `bella-napoli`.discounts (discount_name, start_date, end_date, pizza_id)
VALUES ('Super Sconto 10%', '2024-09-18', '2024-09-30', 1),
       ('Mega Offerta 15%', '2024-09-20', '2024-10-05', 2),
       ('Promo Settembre 20%', '2024-09-22', '2024-09-28', 3),
       ('Sconto Ritorno a Scuola', '2024-09-25', '2024-10-01', 4),
       ('Autunno Goloso 5%', '2024-10-01', '2024-10-10', 5),
       ('Weekend del Gusto 12%', '2024-09-23', '2024-09-25', 6),
       ('Promo Esclusiva 25%', '2024-09-19', '2024-09-22', 7),
       ('Sconto Famiglia 18%', '2024-09-26', '2024-10-02', 8),
       ('Offerta Sorpresa 8%', '2024-09-21', '2024-09-24', 9),
       ('Halloween Special 30%', '2024-10-15', '2024-10-31', 10);

-- Charging ingredients
INSERT INTO `bella-napoli`.ingredients (name)
VALUES ('Mozzarella'),
       ('Pomodoro'),
       ('Basilico'),
       ('Salame Piccante'),
       ('Prosciutto'),
       ('Funghi'),
       ('Olive'),
       ('Origano'),
       ('Gorgonzola'),
       ('Parmigiano'),
       ('Ricotta'),
       ('Zucchine'),
       ('Melanzane'),
       ('Peperoni'),
       ('Pollo'),
       ('Salsiccia'),
       ('Ananas'),
       ('Cipolla'),
       ('Tonno'),
       ('Acciughe');

-- Many-to-Many relations between pizzas and ingredients
INSERT INTO `bella-napoli`.pizza_ingredient (pizza_id, ingredient_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 1),
       (2, 4),
       (3, 1),
       (3, 5),
       (3, 17),
       (4, 1),
       (4, 9),
       (4, 10),
       (4, 11),
       (5, 1),
       (5, 6),
       (5, 7),
       (5, 12),
       (5, 13),
       (6, 1),
       (6, 15),
       (6, 18),
       (7, 1),
       (7, 4),
       (7, 16),
       (7, 5),
       (8, 1),
       (8, 15),
       (8, 18),
       (9, 1),
       (9, 6),
       (10, 1),
       (10, 6),
       (10, 7),
       (10, 13),
       (11, 1),
       (11, 19),
       (11, 20),
       (12, 1),
       (12, 5),
       (13, 1),
       (13, 20),
       (13, 7),
       (14, 1),
       (14, 4),
       (15, 1),
       (15, 6),
       (15, 16),
       (16, 1),
       (16, 12),
       (16, 11),
       (17, 1),
       (17, 7),
       (17, 14),
       (17, 18),
       (18, 1),
       (18, 15),
       (18, 14),
       (19, 1),
       (19, 13),
       (19, 10),
       (20, 1),
       (20, 8),
       (21, 1),
       (21, 8),
       (21, 20),
       (22, 1),
       (22, 7),
       (22, 6),
       (23, 1),
       (23, 9),
       (23, 19),
       (24, 1),
       (24, 7),
       (24, 6),
       (25, 1),
       (25, 20),
       (25, 11);