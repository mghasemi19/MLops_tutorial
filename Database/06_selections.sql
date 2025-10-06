SELECT author_lname FROM books;
 
SELECT DISTINCT author_lname FROM books;
 
SELECT author_fname, author_lname FROM books;
 
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
SELECT DISTINCT author_fname, author_lname FROM books;

SELECT * FROM books
ORDER BY author_lname;

SELECT * FROM books
ORDER BY author_lname DESC;

SELECT * FROM books
ORDER BY released_year;

SELECT book_id, author_fname, author_lname, pages
FROM books ORDER BY 2 desc;

SELECT book_id, author_fname, author_lname, pages
FROM books ORDER BY author_lname, author_fname;

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 14;
 
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;

SELECT title, author_fname, author_lname, pages 
FROM books
WHERE author_fname LIKE '%da%';

SELECT title, author_fname, author_lname, pages 
FROM books
WHERE title LIKE '%:%';

SELECT * FROM books
WHERE author_fname LIKE '____';

SELECT * FROM books
WHERE author_fname LIKE '_a_';

SELECT title FROM books WHERE title LIKE '%stories%';
 
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
 
SELECT 
    CONCAT(title, ' - ', released_year) AS summary 
FROM books ORDER BY released_year DESC LIMIT 3;
 
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
 
SELECT title, released_year, stock_quantity 
FROM books ORDER BY stock_quantity LIMIT 3;
 
SELECT title, author_lname 
FROM books ORDER BY author_lname, title;
 
SELECT title, author_lname 
FROM books ORDER BY 2,1;
 
SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS yell
FROM books ORDER BY author_lname;
