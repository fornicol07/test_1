/*creare tabel*/
create TABLE DetaliiPersoane (
ID int, 
Nume varchar(255),
Prenume varchar(255),
Adresa varchar(255),
Oras varchar (255),
)
/*insert into*/
insert into DetaliiPersoane (ID, Nume, Prenume, Adresa, Oras)
Values ('1', 'Popescu', 'Ion', 'Str. Florilor', 'Constanta');

update DetaliiPersoane
Set Oras = 'Sibiu', Adresa = 'Str.Lalelelor'
Where ID =1;

/*Delete row*/
insert into DetaliiPersoane (ID, Nume, Prenume, Adresa, Oras)
Values ('1', 'Popescu', 'Ion', 'Str. Florilor', 'Constanta');

Delete From DetaliiPersoane Where ID=1;

insert into DetaliiPersoane (ID, Nume, Prenume, Adresa, Oras)
Values ('1', 'Popescu', 'Ion', 'Str. Florilor', 'Constanta');
insert into DetaliiPersoane (ID, Nume, Prenume, Adresa, Oras)
Values ('2', 'Pop', 'Ion', 'Str. Lalelelor', 'Sibiu');

/*stergere toate liniile din tabel*/
delete from DetaliiPersoane;