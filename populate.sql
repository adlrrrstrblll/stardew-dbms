INSERT INTO townspeople (person_id, person_name, birthday, favorite_gift, heart_level, occupation, address) VALUES
(1, 'Alex', '1992-07-15', 'Coffee', 5, 'Farmer', '123 Farm St.'),
(2, 'Abigail', '1992-11-13', 'Spicy Eel', 8, 'Farmer', '45 Village Rd.'),
(3, 'Harvey', '1990-01-16', 'Super Cucumber', 6, 'Doctor', 'Clinic Street'),
(4, 'Leah', '1993-05-15', 'Salad', 7, 'Artist', '25 Artist Way'),
(5, 'Sebastian', '1991-07-15', 'Frozen Tear', 9, 'Programmer', '12 Tech Ln.'),
(6, 'Penny', '1994-10-12', 'Red Plate', 8, 'Teacher', '56 School Ave.'),
(7, 'Elliott', '1988-09-05', 'Tom Kha Soup', 4, 'Writer', 'Ocean Side House'),
(8, 'Sam', '1993-12-17', 'Pizza', 5, 'Musician', '67 Main St.'),
(9, 'Marnie', '1985-06-20', 'Mead', 3, 'Store Owner', '123 Barn Rd.'),
(10, 'Clint', '1991-02-17', 'Emerald', 2, 'Blacksmith', '58 Forge Ave.');

INSERT INTO crops (crop_id, crop_name, growth_time, season, base_sell_price, quantity, regrowable, category) VALUES
(1, 'Parsnip', 4, 'Spring', 10.00, 100, FALSE, 'Veggie'),
(2, 'Tomato', 11, 'Summer', 20.00, 150, TRUE, 'Veggie'),
(3, 'Melon', 12, 'Summer', 50.00, 120, FALSE, 'Fruit'),
(4, 'Wheat', 4, 'Spring', 5.00, 200, TRUE, 'Veggie'),
(5, 'Blueberry', 13, 'Summer', 40.00, 80, TRUE, 'Fruit'),
(6, 'Corn', 14, 'Summer', 25.00, 90, TRUE, 'Veggie'),
(7, 'Pumpkin', 12, 'Fall', 60.00, 50, FALSE, 'Veggie'),
(8, 'Cabbage', 9, 'Spring', 30.00, 75, FALSE, 'Veggie'),
(9, 'Eggplant', 5, 'Fall', 20.00, 110, TRUE, 'Veggie'),
(10, 'Artichoke', 8, 'Fall', 40.00, 60, FALSE, 'Veggie');

INSERT INTO animals (animal_id, animal_name, animal_type, animal_product, farm_owner, age, heart_level) VALUES
(1, 'Cow', 'Livestock', 'Milk', 1, 365, 8),
(2, 'Sheep', 'Livestock', 'Wool', 2, 450, 7),
(3, 'Goat', 'Livestock', 'Goat Milk', 3, 500, 9),
(4, 'Chicken', 'Poultry', 'Egg', 1, 200, 6),
(5, 'Duck', 'Poultry', 'Duck Egg', 2, 180, 5),
(6, 'Rabbit', 'Poultry', 'Rabbit Foot', 3, 400, 8),
(7, 'Horse', 'Livestock', 'None', 4, 1000, 10),
(8, 'Pig', 'Livestock', 'Truffle', 1, 600, 4),
(9, 'Goose', 'Poultry', 'Goose Egg', 2, 350, 7),
(10, 'Turkey', 'Poultry', 'Turkey Egg', 3, 450, 6);

INSERT INTO store (store_id, store_name, location, store_owner) VALUES
(1, 'Pierre\'s General Store', 'Pelican Town', 1),
(2, 'Joja Mart', 'Pelican Town', 5),
(3, 'Clint\'s Blacksmith', 'Pelican Town', 10),
(4, 'Marnie\'s Ranch', 'Pelican Town', 9),
(5, 'Robin\'s Carpenter Shop', 'Pelican Town', 8),
(6, 'The Oasis', 'Desert', 2),
(7, 'Willy\'s Fish Shop', 'Pelican Town', 3),
(8, 'The Star Drop Saloon', 'Pelican Town', 4),
(9, 'Artisan Goods Shop', 'Pelican Town', 6),
(10, 'Sandy\'s Shop', 'Desert', 7);

INSERT INTO store_inventory (inventory_id, store_id, item_id, item_type, item_name, quantity, price, restock_date, last_updated) VALUES
(1, 1, 1, 'crop', 'Parsnip', 50, 10.00, '2023-03-01', '2023-03-15'),
(2, 1, 2, 'crop', 'Tomato', 100, 20.00, '2023-07-01', '2023-07-10'),
(3, 3, 3, 'tool', 'Pickaxe', 10, 50.00, '2023-06-01', '2023-06-10'),
(4, 4, 4, 'crop', 'Wheat', 75, 5.00, '2023-05-10', '2023-05-15'),
(5, 2, 5, 'tool', 'Watering Can', 15, 25.00, '2023-03-10', '2023-03-18'),
(6, 6, 6, 'other', 'Wallpaper', 10, 100.00, '2023-04-15', '2023-04-20'),
(7, 8, 7, 'other', 'Cask', 10, 200.00, '2023-06-20', '2023-06-22'),
(8, 9, 8, 'seed', 'Melon Seed', 100, 5.00, '2023-03-12', '2023-03-25'),
(9, 7, 9, 'crop', 'Cabbage', 50, 15.00, '2023-06-30', '2023-07-05'),
(10, 5, 10, 'seed', 'Artichoke Seed', 80, 7.00, '2023-05-01', '2023-05-05');

INSERT INTO items (item_name, item_type) VALUES 
('Parsnip', 'crop'),
('Tomato', 'crop'),
('Pickaxe', 'tool'),
('Wheat', 'crop'),
('Watering Can', 'tool'),
('Goat Milk', 'animal_product'),
('Duck Egg', 'animal_product'),
('Melon Seed', 'seed'),
('Cabbage', 'crop'),
('Artichoke Seed', 'seed');

INSERT INTO festivals (festival_id, festival_name, season, festival_date) VALUES
(1, 'Egg Festival', 'Spring', '2023-04-15'),
(2, 'Luau', 'Summer', '2023-07-20'),
(3, 'Fall Festival', 'Fall', '2023-10-01'),
(4, 'Winter Festival', 'Winter', '2023-12-25'),
(5, 'Stardew Valley Fair', 'Fall', '2023-09-27'),
(6, 'Festival of Ice', 'Winter', '2023-01-15'),
(7, 'Dwarf’s Shop Festival', 'Summer', '2023-06-25'),
(8, 'Spicy Eel Festival', 'Fall', '2023-09-12'),
(9, 'Cabbage Festival', 'Spring', '2023-04-20'),
(10, 'Wine Tasting', 'Summer', '2023-08-05');

INSERT INTO item_transactions (transaction_id, person_id, store_id, transaction_type, transaction_date, total_amount) VALUES
(1, 1, 1, 'buy', '2023-03-15 14:30:00', 200.00),
(2, 2, 3, 'sell', '2023-07-10 11:00:00', 150.00),
(3, 3, 5, 'buy', '2023-05-20 16:15:00', 120.00),
(4, 4, 6, 'buy', '2023-06-18 13:30:00', 300.00),
(5, 5, 2, 'sell', '2023-04-12 09:45:00', 250.00),
(6, 6, 4, 'buy', '2023-08-25 17:00:00', 180.00),
(7, 7, 7, 'sell', '2023-10-05 12:00:00', 120.00),
(8, 8, 8, 'buy', '2023-09-15 14:20:00', 100.00),
(9, 9, 9, 'sell', '2023-06-10 10:00:00', 200.00),
(10, 10, 10, 'buy', '2023-05-05 15:00:00', 150.00);

INSERT INTO transaction_items (transaction_id, item_id, quantity, price_per_unit) VALUES
(1, 1, 20, 10.00),
(1, 2, 10, 20.00),
(2, 3, 5, 50.00),
(2, 4, 15, 5.00),
(3, 5, 8, 30.00),
(3, 6, 12, 25.00),
(4, 7, 3, 60.00),
(4, 8, 7, 15.00),
(5, 9, 10, 40.00),
(5, 10, 6, 35.00);

INSERT INTO item_production (person_id, item_created_id, quantity, ingredients_used, production_type) VALUES
(1, 2, 5, 'Tomato, Wheat', 'cooking'),
(2, 3, 4, 'Melon, Sugar', 'cooking'),
(3, 1, 6, 'Parsnip, Water', 'cooking'),
(4, 5, 3, 'Blueberry, Wheat', 'artisan'),
(5, 6, 2, 'Corn, Oil', 'artisan'),
(6, 7, 10, 'Pumpkin, Water', 'crafting'),
(7, 8, 8, 'Cabbage, Oil', 'crafting'),
(8, 9, 5, 'Eggplant, Salt', 'cooking'),
(9, 10, 7, 'Artichoke, Butter', 'artisan'),
(10, 1, 4, 'Parsnip, Oil', 'crafting');

INSERT INTO festival_rewards (player_id, festival_id, reward_type, reward_item_id, quantity) VALUES
(1, 1, 'item', 1, 3),
(2, 2, 'money', NULL, 200),
(3, 3, 'special_reward', NULL, 1),
(4, 4, 'item', 4, 2),
(5, 5, 'money', NULL, 150),
(6, 6, 'item', 7, 5),
(7, 7, 'special_reward', NULL, 1),
(8, 8, 'item', 9, 4),
(9, 9, 'money', NULL, 100),
(10, 10, 'item', 10, 2);

-- Insert data into item_trade
INSERT INTO item_trade (trader_1_id, trader_2_id, trade_date, trade_status)
VALUES
(1, 2, '2025-04-20 10:00:00', 'completed'),
(3, 4, '2025-04-21 12:00:00', 'completed'),
(5, 6, '2025-04-22 15:30:00', 'pending'),
(7, 8, '2025-04-23 17:45:00', 'cancelled'),
(9, 10, '2025-04-24 14:00:00', 'completed');

-- Insert data into trade_items
INSERT INTO trade_items (trade_id, item_id, quantity, trader_id)
VALUES
(1, 1, 10, 1),  -- Trader 1 gives 10 Parsnips to Trader 2
(1, 2, 5, 2),   -- Trader 2 gives 5 Tomatoes to Trader 1
(2, 3, 3, 3),   -- Trader 3 gives 3 Pickaxes to Trader 4
(2, 4, 15, 4),  -- Trader 4 gives 15 Wheat to Trader 3
(3, 5, 8, 5),   -- Trader 5 gives 8 Watering Cans to Trader 6
(3, 6, 12, 6),  -- Trader 6 gives 12 Wallpapers to Trader 5
(4, 7, 3, 7),   -- Trader 7 gives 3 Casks to Trader 8
(4, 8, 7, 8),   -- Trader 8 gives 7 Melon Seeds to Trader 7
(5, 9, 10, 9),  -- Trader 9 gives 10 Cabbages to Trader 10
(5, 10, 6, 10); -- Trader 10 gives 6 Artichoke Seeds to Trader 9

