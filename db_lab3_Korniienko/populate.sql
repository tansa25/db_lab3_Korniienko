--populate table Genre--

INSERT INTO Genre(genre_id, genre_name)
VALUES('GEN1', 'Non Fiction');
INSERT INTO Genre(genre_id, genre_name)
VALUES('GEN2', 'Fiction');


--populate table Author--

INSERT INTO Author(author_id, author_name)
VALUES('AUT1', 'George R. R. Martin');
INSERT INTO Author(author_id, author_name)
VALUES('AUT2', 'Amor Towles');
INSERT INTO Author(author_id, author_name)
VALUES('AUT3', 'James Comey');
INSERT INTO Author(author_id, author_name)
VALUES('AUT4', 'Fredrik Backman');
INSERT INTO Author(author_id, author_name)
VALUES('AUT5', 'Larry Schweikart');
INSERT INTO Author(author_id, author_name)
VALUES('AUT6', 'Blue Star Coloring');
INSERT INTO Author(author_id, author_name)
VALUES('AUT7', 'Anthony Doerr');
INSERT INTO Author(author_id, author_name)
VALUES('AUT8', 'Glenn Beck');
INSERT INTO Author(author_id, author_name)
VALUES('AUT9', 'Bruce Springsteen');

--populate table Period--

INSERT INTO Period(period_id, period_year)
VALUES('PER1', '2009');
INSERT INTO Period(period_id, period_year)
VALUES('PER2', '2010');
INSERT INTO Period(period_id, period_year)
VALUES('PER3', '2011');
INSERT INTO Period(period_id, period_year)
VALUES('PER4', '2012');
INSERT INTO Period(period_id, period_year)
VALUES('PER5', '2013');
INSERT INTO Period(period_id, period_year)
VALUES('PER6', '2014');
INSERT INTO Period(period_id, period_year)
VALUES('PER7', '2015');
INSERT INTO Period(period_id, period_year)
VALUES('PER8', '2016');
INSERT INTO Period(period_id, period_year)
VALUES('PER9', '2017');
INSERT INTO Period(period_id, period_year)
VALUES('PER10', '2018');
INSERT INTO Period(period_id, period_year)
VALUES('PER11', '2019');

--populate table Books--


INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK1', 'GEN1', 'AUT1', 'PER1', '10-Day Green Smoothie Cleanse', '22', '2052', '4.6');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK2', 'GEN1', 'AUT2', 'PER2', '5,000 Awesome Facts (About Everything!) (National Geographic Kids)', '12', '7665', '4.8');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK3', 'GEN2', 'AUT2', 'PER5', 'A Man Called Ove: A Novel', '8', '19735', '4.5');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK4', 'GEN1', 'AUT4', 'PER7', 'A Dance with Dragons (A Song of Ice and Fire)', '17', '12643', '4.7');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK5', 'GEN2', 'AUT5', 'PER9', 'All the Light We Cannot See', '19', '23848', '4.9');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK6', 'GEN2', 'AUT6', 'PER3', 'And the Mountains Echoed', '6', '460', '4.3');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK7', 'GEN2', 'AUT6', 'PER2', 'Baby Touch and Feel: Animals', '29', '2313', '4.3');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK8', 'GEN1', 'AUT6', 'PER6', 'Between the World and Me', '10', '36348', '4.8');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK9', 'GEN2', 'AUT7', 'PER4', 'Capital in the Twenty First Century', '46', '15921', '4.9');
INSERT INTO Books(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
VALUES('BOOK10', 'GEN1', 'AUT8', 'PER11', 'Cutting for Stone', '15', '5360', '4.9');