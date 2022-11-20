REATE TABLE Users (
    id serial primary key,
    username varchar(100),
    password varchar(100),
    accountId int
)

CREATE TABLE Accounts (
    id serial primary key,
    balance varchar(100),
  	FOREIGN KEY (id) REFERENCES Users(id)
)