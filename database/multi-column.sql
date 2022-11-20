CREATE TABLE Transactions (
    id serial primary key,
    debitedAccountId int not null,
    creditedAccountId int not null,
    value int,
    createdAt timestamp,
    FOREIGN KEY (debitedAccountId) REFERENCES Accounts(id)
)

ALTER TABLE transactions 
add constraint fk_creditedAccountId FOREIGN KEY (creditedAccountId) REFERENCES Accounts(id)