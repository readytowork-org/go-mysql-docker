CREATE TABLE `users`
(
    id bigint auto_increament,
    name varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `users` VALUES ('John Doe'), ('Jane Doe');