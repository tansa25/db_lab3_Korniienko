SELECT * FROM Books;
CREATE TABLE bookscopy AS SELECT * FROM Books;
SELECT * FROM bookscopy;



DO $$
DECLARE
    books_id   bookscopy.books_id%TYPE;
    genre_id   bookscopy.genre_id%TYPE;
	author_id   bookscopy.author_id%TYPE;
	period_id	bookscopy.period_id%TYPE;
	books_name    bookscopy.books_name%TYPE;
	books_price    bookscopy.books_price%TYPE;
    books_reviews_num    bookscopy.books_reviews_num%TYPE;
    books_user_rating    bookscopy.books_user_rating%TYPE;
	

BEGIN
    books_id := 'BOOK11';
    genre_id := 'GEN1';
	author_id := 'AUT4';
	period_id := 'PER6';
	books_name := 'Goodnight Moon';
	books_price := '4';
    books_reviews_num := '14038';
    books_user_rating := '4.8';
	
    FOR counter IN 1..10
        LOOP
            INSERT INTO bookscopy(books_id, genre_id, author_id, period_id, books_name, books_price, books_reviews_num, books_user_rating)
            VALUES (books_id || counter, genre_id || counter, author_id || counter, period_id || counter, 
            books_name || counter, books_price || counter, books_reviews_num || counter, books_user_rating || counter);
        END LOOP;
END
$$