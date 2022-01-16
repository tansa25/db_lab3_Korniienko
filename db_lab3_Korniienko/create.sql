-- Create Genre table --

CREATE TABLE Genre
(
  genre_id      char(10)  NOT NULL ,
  genre_name    char(60)      NOT NULL  
);


-- Create Author table --


CREATE TABLE Author
(
  author_id      char(10)  NOT NULL ,
  author_name    char(60)  NOT NULL 
);



-- Create Period table --


CREATE TABLE Period
(
  period_id      char(10)  NOT NULL ,
  period_year    char(10)  NOT NULL 
);


-- Create Books table --


CREATE TABLE Books
(
  books_id           char(10)   NOT NULL ,
  genre_id            char(10)   NOT NULL ,
  author_id           char(10)   NOT NULL ,
  period_id          char(10)   NOT NULL ,
  books_name         char(100)  NOT NULL,
  books_price         char(50)  NOT NULL,
  books_reviews_num   char(200)  NOT NULL,
  books_user_rating  char(10) NOT NULL 
);


-- Define primary keys --

ALTER TABLE Genre ADD CONSTRAINT PK_Genre PRIMARY KEY (genre_id);
ALTER TABLE Author ADD CONSTRAINT PK_Author PRIMARY KEY (author_id);
ALTER TABLE Period ADD CONSTRAINT PK_Period PRIMARY KEY (period_id);
ALTER TABLE Books ADD CONSTRAINT PK_Books PRIMARY KEY (books_id);



-- Define foreign keys --

ALTER TABLE Books ADD CONSTRAINT FK_Books_Genre FOREIGN KEY (genre_id) REFERENCES Genre (genre_id);
ALTER TABLE Books ADD CONSTRAINT FK_Books_Author FOREIGN KEY (author_id) REFERENCES Author (author_id);
ALTER TABLE Books ADD CONSTRAINT FK_Books_Period FOREIGN KEY (period_id) REFERENCES Period (period_id);