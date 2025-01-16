CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE users_infos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    bio VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (username, email, password) VALUES
('Alice', 'alice@example.com', 'password1'),
('Bob', 'bob@example.com', 'password2'),
('Charlie', 'charlie@example.com', 'password3');


INSERT INTO users_infos (user_id, age, gender, bio) VALUES
(1, 32, 'Femme', 'Je suis Alice, développeuse web.'),
(2, 27, 'Homme', 'Bob, passionné par le cloud computing.'),
(3, 44, 'Homme', 'Charlie, adepte du devops.');