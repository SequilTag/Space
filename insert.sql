INSERT INTO labs.customers (cname, address, contacts) VALUES ('BooksRead', 'Moscow', '79991234567');
INSERT INTO labs.customers (cname, address, contacts) VALUES ('Bookvoed', 'Saint-Petersburg', '78121234567');
INSERT INTO labs.customers (cname, address, contacts) VALUES ('Reader', 'Moscow', '74951234567');
INSERT INTO labs.customers (cname, address, contacts) VALUES ('Knigi', 'Voronezh', '79126431411');
INSERT INTO labs.customers (cname, address, contacts) VALUES ('Bookvi', 'Kirov', '79631246743');

INSERT INTO labs.orders (ask_date, recieve_date, customer) VALUES ((NOW()::date - 2), NOW(), 2);
INSERT INTO labs.orders (ask_date, recieve_date, customer) VALUES ((NOW()::date - 7), NOW(), 4);
INSERT INTO labs.orders (ask_date, recieve_date, customer) VALUES ((NOW()::date - 4), NOW(), 5);
INSERT INTO labs.orders (ask_date, recieve_date, customer) VALUES ((NOW()::date - 17), NOW(), 3);
INSERT INTO labs.orders (ask_date, recieve_date, customer) VALUES ((NOW()::date - 5), NOW(), 1);

INSERT INTO labs.books (author, editor, release_date, book_amount) VALUES ('Igor', 'Bober', (NOW()::date - 364), 220);
INSERT INTO labs.books (author, editor, release_date, book_amount) VALUES ('Egor', 'Svin', (NOW()::date - 214), 360);
INSERT INTO labs.books (author, editor, release_date, book_amount) VALUES ('Semen', 'Rat', (NOW()::date - 114), 140);
INSERT INTO labs.books (author, editor, release_date, book_amount) VALUES ('Petr', 'Cat', (NOW()::date - 915), 600);
INSERT INTO labs.books (author, editor, release_date, book_amount) VALUES ('Dmitry', 'Tigr', (NOW()::date - 614), 500);

INSERT INTO labs.contracts (book_id, ctname, amount, start_date, all_fee) 
	VALUES (6, 'Arthouse', 150, (NOW()::date - 2*364), 100000);
INSERT INTO labs.contracts (book_id, ctname, amount, start_date, all_fee) 
	VALUES (7, 'Isekai', 120, (NOW()::date - 2*214), 80000);
INSERT INTO labs.contracts (book_id, ctname, amount, start_date, all_fee) 
	VALUES (8, 'Skazki', 60, (NOW()::date - 154), 30000);
INSERT INTO labs.contracts (book_id, ctname, amount, start_date, all_fee) 
	VALUES (9, 'Be Clever!', 200, (NOW()::date - 2*915), 1000000);
INSERT INTO labs.contracts (book_id, ctname, amount, start_date, all_fee) 
	VALUES (10, 'Gluposti zhizni', 250, (NOW()::date - 700), 200000);

INSERT INTO labs.order_strings (book_id, order_id, quantity) VALUES (9, 1, 200);
INSERT INTO labs.order_strings (book_id, order_id, quantity) VALUES (9, 2, 100);
INSERT INTO labs.order_strings (book_id, order_id, quantity) VALUES (8, 3, 50);
INSERT INTO labs.order_strings (book_id, order_id, quantity) VALUES (6, 4, 100);
INSERT INTO labs.order_strings (book_id, order_id, quantity) VALUES (10, 5, 500);

INSERT INTO labs.authors (fio, address, contacts) VALUES ('Igor', 'Moscow', '79123513114');
INSERT INTO labs.authors (fio, address, contacts) VALUES ('Egor', 'Moscow', '79121156142');
INSERT INTO labs.authors (fio, address, contacts) VALUES ('Semen', 'Saint-Petersburg', '79411236611');
INSERT INTO labs.authors (fio, address, contacts) VALUES ('Petr', 'Kirov', '79624161354');
INSERT INTO labs.authors (fio, address, contacts) VALUES ('Dmitry', 'Moscow', '79567112345');

INSERT INTO labs.author_book (book_id, author_id, position_number)	VALUES (6, 1, 1);
INSERT INTO labs.author_book (book_id, author_id, position_number)	VALUES (7, 2, 1);
INSERT INTO labs.author_book (book_id, author_id, position_number)	VALUES (8, 3, 1);
INSERT INTO labs.author_book (book_id, author_id, position_number)	VALUES (9, 4, 1);
INSERT INTO labs.author_book (book_id, author_id, position_number)	VALUES (10, 5, 1);

INSERT INTO labs.posts (pname, salary)	VALUES ('CEO', 500000);
INSERT INTO labs.posts (pname, salary)	VALUES ('manager', 80000);
INSERT INTO labs.posts (pname, salary)	VALUES ('editor', 60000);
INSERT INTO labs.posts (pname, salary)	VALUES ('main editor', 80000);

INSERT INTO labs.cabs (cab_number, phone_number) VALUES (11, '78125141156');
INSERT INTO labs.cabs (cab_number, phone_number) VALUES (16, '78125141145');
INSERT INTO labs.cabs (cab_number, phone_number) VALUES (13, '78125141255');
INSERT INTO labs.cabs (cab_number, phone_number) VALUES (12, '78125141200');

INSERT INTO labs.employees (emp_fio, post, contacts) 
	VALUES ('Bober', (SELECT pname FROM labs.posts WHERE pname = 'editor'), 11);
INSERT INTO labs.employees (emp_fio, post, contacts) 
	VALUES ('Svin', (SELECT pname FROM labs.posts WHERE pname = 'editor'), 11);
INSERT INTO labs.employees (emp_fio, post, contacts) 
	VALUES ('Rat', (SELECT pname FROM labs.posts WHERE pname = 'editor'), 11);
INSERT INTO labs.employees (emp_fio, post, contacts) 
	VALUES ('Cat', (SELECT pname FROM labs.posts WHERE pname = 'editor'), 11);
INSERT INTO labs.employees (emp_fio, post, contacts) 
	VALUES ('Tigr', (SELECT pname FROM labs.posts WHERE pname = 'editor'), 11);