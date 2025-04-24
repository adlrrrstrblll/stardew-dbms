CREATE TABLE townspeople (
    person_id INT PRIMARY KEY,
    person_name VARCHAR(100) NOT NULL,
    birthday DATE,
    favorite_gift VARCHAR(100),
    heart_level TINYINT CHECK (heart_level BETWEEN 0 AND 10),
    occupation VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE crops (
    crop_id INT PRIMARY KEY,
    crop_name VARCHAR(100) NOT NULL,
    growth_time INT NOT NULL, -- in days
    season ENUM('Spring', 'Summer', 'Fall', 'Winter') NOT NULL,
    base_sell_price DECIMAL(10, 2),
    quantity INT DEFAULT 0,
    regrowable BOOLEAN,
    category VARCHAR(50) -- e.g., fruit, veggie, flower
);

CREATE TABLE animals (
    animal_id INT PRIMARY KEY,
    animal_name VARCHAR(100),
    animal_type VARCHAR(50),
    animal_product VARCHAR(100),
    farm_owner INT,
    age INT, -- in days
    heart_level TINYINT CHECK (heart_level BETWEEN 0 AND 10),
    FOREIGN KEY (farm_owner) REFERENCES townspeople(person_id)
);

CREATE TABLE items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100) NOT NULL,
    item_type ENUM('crop', 'animal_product', 'tool', 'seed') NOT NULL
);

CREATE TABLE store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    store_owner INT,
    FOREIGN KEY (store_owner) REFERENCES townspeople(person_id)
);

CREATE TABLE store_inventory (
    inventory_id INT PRIMARY KEY,
    store_id INT,
    item_id INT,
    item_type ENUM('crop', 'animal_product', 'tool', 'seed', 'other'),
    item_name VARCHAR(100),
    quantity INT DEFAULT 0,
    price DECIMAL(10, 2),
    restock_date DATE,
    last_updated DATE,
    FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)  -- Fixing reference to 'items'
);

CREATE TABLE festivals (
    festival_id INT PRIMARY KEY AUTO_INCREMENT,
    festival_name VARCHAR(100) NOT NULL,
    season ENUM('Spring', 'Summer', 'Fall', 'Winter') NOT NULL,
    festival_date DATE NOT NULL
);

CREATE TABLE item_transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  person_id INT NOT NULL,
  store_id INT,
  transaction_type ENUM('buy', 'sell') NOT NULL,
  transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  total_amount DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (person_id) REFERENCES townspeople(person_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id)
);

CREATE TABLE transaction_items (
  transaction_item_id INT PRIMARY KEY AUTO_INCREMENT,
  transaction_id INT NOT NULL,
  item_id INT NOT NULL,
  quantity INT NOT NULL,
  price_per_unit DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (transaction_id) REFERENCES item_transactions(transaction_id),
  FOREIGN KEY (item_id) REFERENCES store_inventory(item_id)
);

CREATE TABLE item_production (
  log_id INT PRIMARY KEY AUTO_INCREMENT,
  person_id INT NOT NULL,
  item_created_id INT NOT NULL,
  quantity INT NOT NULL,
  ingredients_used TEXT, -- textual list of ingredients
  production_type ENUM('crafting', 'cooking', 'artisan'),
  production_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (person_id) REFERENCES townspeople(person_id),
  FOREIGN KEY (item_created_id) REFERENCES store_inventory(item_id)
);

CREATE TABLE festival_rewards (
    festival_reward_id INT PRIMARY KEY AUTO_INCREMENT,
    player_id INT NOT NULL,
    festival_id INT NOT NULL,
    reward_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    reward_type ENUM('item', 'money', 'special_reward'),
    reward_item_id INT DEFAULT NULL, -- Nullable if reward is money
    quantity INT,
    FOREIGN KEY (player_id) REFERENCES townspeople(person_id),
    FOREIGN KEY (festival_id) REFERENCES festivals(festival_id),
    FOREIGN KEY (reward_item_id) REFERENCES items(item_id)
);

CREATE TABLE item_trade (
    trade_id INT PRIMARY KEY AUTO_INCREMENT,
    trader_1_id INT NOT NULL,
    trader_2_id INT NOT NULL,
    trade_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    trade_status ENUM('pending', 'completed', 'cancelled') DEFAULT 'pending',
    FOREIGN KEY (trader_1_id) REFERENCES townspeople(person_id),
    FOREIGN KEY (trader_2_id) REFERENCES townspeople(person_id)
);

CREATE TABLE trade_items (
    trade_item_id INT PRIMARY KEY AUTO_INCREMENT,
    trade_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    trader_id INT NOT NULL,
    FOREIGN KEY (trade_id) REFERENCES item_trade(trade_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    FOREIGN KEY (trader_id) REFERENCES townspeople(person_id)
);
