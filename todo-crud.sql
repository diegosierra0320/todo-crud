CREATE TABLE "todos" (
  "id" serial PRIMARY KEY,
  "title" varchar(100) NOT NULL,
  "description" text NOT NULL,
  "is_completed" boolean DEFAULT false,
  "deadline" timestamp NOT NULL,
  "category" varchar(30),
  "created_at" timestamp DEFAULT 'now()',
  "updated_at" timestamp DEFAULT 'now()'
);

insert into todos
(
	title, 
	description, 
	deadline, 
	category
) values (
	'lavar los platos',
	'lavarlos con jabon',
	'2022-07-31',
	'house task'
),
(
	'limpiar la casa',
	'trapear y barrer',
	'2022-08-20',
	'house task'
),
(
	'terminar proyecto',
	'hacer el crud',
	'2022-07-22',
	'academlo'
);

select * from todos;  

select * from todos where is_completed = true;