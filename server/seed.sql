DROP TABLE IF EXISTS tickets cascade;

CREATE TABLE tickets(
  id serial primary key,
  author VARCHAR(15),
  subject VARCHAR(50),
  issue VARCHAR(255),
  chatUrl VARCHAR(255),
  createdAt datetime,
  archive BOOLEAN,
  status BOOLEAN
);


DROP TABLE IF EXISTS users cascade;

CREATE TABLE users(
  id serial primary key,
  name VARCHAR(255) not null,
  email VARCHAR(255) unique not null,
  location VARCHAR(255), --where's the user from
  investmentType VARCHAR(255) not null,
  amount numeric (11,8) not null,
  depositConfirmed boolean not null, --make sure what we need is in there
  lastUpdated VARCHAR(100) not null
);
