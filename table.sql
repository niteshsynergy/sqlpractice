CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       username VARCHAR(50) UNIQUE,
                       full_name VARCHAR(100),
                       email VARCHAR(100),
                       status TINYINT DEFAULT 1,
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                       updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE posts (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       user_id INT,
                       caption TEXT,
                       image_url VARCHAR(255),
                       status TINYINT DEFAULT 1,
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                       updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                       FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE comments (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          post_id INT,
                          user_id INT,
                          comment_text TEXT,
                          status TINYINT DEFAULT 1,
                          created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                          updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                          FOREIGN KEY (post_id) REFERENCES posts(id),
                          FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE likes (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       user_id INT,
                       post_id INT,
                       status TINYINT DEFAULT 1,
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                       updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                       FOREIGN KEY (user_id) REFERENCES users(id),
                       FOREIGN KEY (post_id) REFERENCES posts(id)
);

CREATE TABLE follows (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         follower_id INT,
                         followee_id INT,
                         status TINYINT DEFAULT 1,
                         created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                         updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                         FOREIGN KEY (follower_id) REFERENCES users(id),
                         FOREIGN KEY (followee_id) REFERENCES users(id)
);
