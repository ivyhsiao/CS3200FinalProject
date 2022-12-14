-- This file is to bootstrap a database for the CS3200 project. 

-- Create a new database.  You can change the name later.  You'll
-- need this name in the FLASK API file(s),  the AppSmith 
-- data source creation.
create database teamName_db;

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on teamName_db.* to 'webapp'@'%';
flush privileges;

-- Move into the database we just created.
-- TODO: If you changed the name of the database above, you need to
-- change it here too. 
use teamName_db;

DROP TABLE IF EXISTS Movie;
create table Movie (
  MovieID INT NOT NULL,
	Title TEXT,
	MovieLanguage VARCHAR(50),
	Description TEXT,
	MovieLength INT,
	ProductionCost VARCHAR(50),
	YearMade VARCHAR(50),
	NumOfLikes INT,
    
  PRIMARY KEY(MovieID)
);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (1, 'Case of the Whitechapel Vampire, The', 'Macedonian', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 166, '$5901926.87', 1994, 407284525);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (2, 'Resident Evil: Extinction', 'Dari', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 129, '$2051840.85', 2004, 579928488);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (3, 'Three Stooges in Orbit, The', 'Latvian', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 72, '$3870042.04', 1999, 428444780);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (4, 'Dog Pound', 'Swedish', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 123, '$7653640.38', 2009, 213549305);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (5, 'Alice and Martin (Alice et Martin)', 'Sotho', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 103, '$2383968.49', 2007, 133280572);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (6, 'Waiting for Guffman', 'Swedish', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 76, '$8474306.31', 2011, 965469000);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (7, 'Juggernaut', 'Greek', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 100, '$6014226.09', 2004, 646352540);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (8, 'Fairhaven', 'Telugu', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 98, '$9038420.92', 1996, 795777612);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (9, 'Monitor, The (Babycall)', 'Chinese', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 101, '$1738940.74', 1996, 944446592);

insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (10, 'Death of Maria Malibran', 'Sotho', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 173, '$8695948.32', 2009, 775714463);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (11, 'Public Speaking', 'Thai', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 161, '$5886655.23', 1999, 891455610);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (12, 'Evil Dead II (Dead by Dawn)', 'Icelandic', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 155, '$6222529.74', 2007, 39756166);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (13, 'Police Academy 5: Assignment: Miami Beach', 'Korean', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 174, '$5340727.97', 2008, 950699363);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (14, 'Bill Hicks: Sane Man', 'Tamil', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 175, '$2352431.09', 2004, 503780072);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (15, 'Wild Guitar', 'Czech', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 108, '$2812377.12', 1998, 231273418);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (16, 'Fishtales', 'Icelandic', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 177, '$7206679.50', 1977, 979857744);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (17, 'Pathology', 'Gujarati', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 177, '$1494999.50', 1989, 766165865);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (18, 'Overcoat, The (Il cappotto)', 'Maltese', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 88, '$8630186.16', 2007, 391284655);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (19, 'Mr. Thank You (Arigatô-san)', 'Aymara', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 95, '$5100936.34', 1999, 220538761);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (20, 'Vehicle 19', 'Malayalam', 'Fusce consequat. Nulla nisl. Nunc nisl.', 155, '$3002159.96', 1990, 947940110);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (21, 'Women in Love', 'Khmer', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 154, '$5019358.08', 2006, 469833414);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (22, 'Butter', 'Bengali', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 117, '$9670544.30', 1988, 642044800);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (23, 'I Saw Mommy Kissing Santa Claus', 'Macedonian', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 102, '$4506669.09', 1999, 912068655);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (24, 'Big Day, The (We Met on the Vineyard)', 'Malagasy', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 90, '$9872531.97', 1992, 96916411);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (25, 'Remains of the Day, The', 'Somali', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 89, '$2294240.69', 1926, 374661302);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (26, 'Snake Eyes', 'Spanish', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 155, '$6308407.02', 1973, 613236227);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (27, 'Sexual Life', 'Croatian', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 72, '$600093.42', 1990, 806189247);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (28, 'Ffolkes', 'Filipino', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 139, '$8287922.14', 2005, 699471384);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (29, 'Welcome to Australia', 'Haitian Creole', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 107, '$8910791.37', 2010, 206040966);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (30, 'Eyewitness (Janitor, The)', 'Kannada', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 114, '$1922178.80', 2006, 312456607);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (31, 'Hunky Dory', 'Czech', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 117, '$9979776.69', 1969, 197429572);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (32, 'Pornography (Pornografia)', 'Czech', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 138, '$4504606.56', 2009, 989911743);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (33, 'Broken Vessels', 'Dari', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 149, '$7653156.28', 2009, 723504654);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (34, 'Legend of Hercules, The', 'Azeri', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 125, '$8207235.52', 1992, 118587128);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (35, 'Silent Night, Deadly Night III: Better Watch Out!', 'Sotho', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 144, '$8989836.64', 1999, 878171272);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (36, 'Bad Blood: A Cautionary Tale ', 'Malay', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 180, '$1399510.09', 1993, 992567721);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (37, 'Titus', 'Nepali', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 130, '$5057121.82', 2008, 938701346);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (38, 'Casshern', 'Bulgarian', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 100, '$5854418.41', 2011, 201492375);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (39, 'Katze im Sack', 'French', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 162, '$8702164.91', 1999, 868068823);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (40, 'Arabian Nights', 'Māori', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 160, '$644037.86', 2005, 759291753);

DROP TABLE IF EXISTS Genre;
create table Genre (
    GenreID INT NOT NULL,
    GenreName varchar(40) NOT NULL,

    PRIMARY KEY(GenreID)
);

insert into Genre (GenreID, GenreName) values (1, 'Comedy');
insert into Genre (GenreID, GenreName) values (2, 'Drama');
insert into Genre (GenreID, GenreName) values (3, 'Children');
insert into Genre (GenreID, GenreName) values (4, 'Adventure');
insert into Genre (GenreID, GenreName) values (5, 'Action');
insert into Genre (GenreID, GenreName) values (6, 'Crime');
insert into Genre (GenreID, GenreName) values (7, 'Musical');
insert into Genre (GenreID, GenreName) values (8, 'Romance');
insert into Genre (GenreID, GenreName) values (9, 'Mystery');
insert into Genre (GenreID, GenreName) values (10, 'Horror');

DROP TABLE IF EXISTS movie_genre;
create table movie_genre (
	MovieID INT NOT NULL,
	GenreID INT NOT NULL,

  CONSTRAINT fk_1
  FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
  CONSTRAINT fk_2
  FOREIGN KEY (GenreID) REFERENCES Genre (GenreID)
);
insert into movie_genre (MovieID, GenreID) values ('16', 5);
insert into movie_genre (MovieID, GenreID) values ('25', 7);
insert into movie_genre (MovieID, GenreID) values ('4', 6);
insert into movie_genre (MovieID, GenreID) values ('40', 10);
insert into movie_genre (MovieID, GenreID) values ('26', 3);
insert into movie_genre (MovieID, GenreID) values ('32', 6);
insert into movie_genre (MovieID, GenreID) values ('11', 3);
insert into movie_genre (MovieID, GenreID) values ('21', 9);
insert into movie_genre (MovieID, GenreID) values ('34', 7);
insert into movie_genre (MovieID, GenreID) values ('8', 9);
insert into movie_genre (MovieID, GenreID) values ('19', 8);
insert into movie_genre (MovieID, GenreID) values ('9', 4);
insert into movie_genre (MovieID, GenreID) values ('24', 7);
insert into movie_genre (MovieID, GenreID) values ('7', 5);
insert into movie_genre (MovieID, GenreID) values ('39', 10);
insert into movie_genre (MovieID, GenreID) values ('3', 10);
insert into movie_genre (MovieID, GenreID) values ('31', 6);
insert into movie_genre (MovieID, GenreID) values ('5', 1);
insert into movie_genre (MovieID, GenreID) values ('20', 1);
insert into movie_genre (MovieID, GenreID) values ('35', 9);
insert into movie_genre (MovieID, GenreID) values ('12', 8);
insert into movie_genre (MovieID, GenreID) values ('1', 9);
insert into movie_genre (MovieID, GenreID) values ('36', 10);
insert into movie_genre (MovieID, GenreID) values ('33', 2);
insert into movie_genre (MovieID, GenreID) values ('37', 5);
insert into movie_genre (MovieID, GenreID) values ('27', 7);
insert into movie_genre (MovieID, GenreID) values ('2', 8);
insert into movie_genre (MovieID, GenreID) values ('10', 10);
insert into movie_genre (MovieID, GenreID) values ('14', 10);
insert into movie_genre (MovieID, GenreID) values ('6', 6);
insert into movie_genre (MovieID, GenreID) values ('17', 7);
insert into movie_genre (MovieID, GenreID) values ('30', 5);
insert into movie_genre (MovieID, GenreID) values ('22', 8);
insert into movie_genre (MovieID, GenreID) values ('15', 6);
insert into movie_genre (MovieID, GenreID) values ('18', 2);
insert into movie_genre (MovieID, GenreID) values ('13', 4);
insert into movie_genre (MovieID, GenreID) values ('29', 5);
insert into movie_genre (MovieID, GenreID) values ('28', 8);
insert into movie_genre (MovieID, GenreID) values ('38', 2);
insert into movie_genre (MovieID, GenreID) values ('23', 9);
insert into movie_genre (MovieID, GenreID) values ('4', 2);
insert into movie_genre (MovieID, GenreID) values ('15', 10);
insert into movie_genre (MovieID, GenreID) values ('23', 8);
insert into movie_genre (MovieID, GenreID) values ('32', 10);
insert into movie_genre (MovieID, GenreID) values ('13', 6);
insert into movie_genre (MovieID, GenreID) values ('35', 5);
insert into movie_genre (MovieID, GenreID) values ('10', 8);
insert into movie_genre (MovieID, GenreID) values ('38', 4);
insert into movie_genre (MovieID, GenreID) values ('2', 1);
insert into movie_genre (MovieID, GenreID) values ('37', 1);
insert into movie_genre (MovieID, GenreID) values ('8', 9);
insert into movie_genre (MovieID, GenreID) values ('34', 9);
insert into movie_genre (MovieID, GenreID) values ('20', 10);
insert into movie_genre (MovieID, GenreID) values ('7', 6);
insert into movie_genre (MovieID, GenreID) values ('31', 7);
insert into movie_genre (MovieID, GenreID) values ('17', 8);
insert into movie_genre (MovieID, GenreID) values ('26', 4);
insert into movie_genre (MovieID, GenreID) values ('6', 1);
insert into movie_genre (MovieID, GenreID) values ('29', 4);
insert into movie_genre (MovieID, GenreID) values ('1', 2);

DROP TABLE IF EXISTS actors;
create table actors (
  ActorID INTEGER NOT NULL,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	country VARCHAR(50),
	phone VARCHAR(50),

  PRIMARY KEY(ActorID),
  UNIQUE (Email, Phone)
);

insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (1, 'Bucky', 'Bover', 'bbover0@ftc.gov', 'Male', 'Sweden', '504-756-8743');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (2, 'Rozanna', 'Jeffes', 'rjeffes1@t-online.de', 'Female', 'Poland', '611-426-0752');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (3, 'Tiebold', 'Gemeau', 'tgemeau2@ucsd.edu', 'Male', 'Portugal', '641-120-4904');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (4, 'Jacquelin', 'Bolzen', 'jbolzen3@eventbrite.com', 'Female', 'Sweden', '238-766-6349');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (5, 'Carolyn', 'Garvin', 'cgarvin4@mlb.com', 'Female', 'Malaysia', '580-394-8136');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (6, 'Derek', 'Buttrey', 'dbuttrey5@clickbank.net', 'Male', 'Norway', '769-824-5956');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (7, 'Rogerio', 'Holston', 'rholston6@oaic.gov.au', 'Genderfluid', 'Philippines', '349-567-1727');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (8, 'Lonni', 'Pawlett', 'lpawlett7@google.es', 'Female', 'Nigeria', '978-992-4368');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (9, 'Gwenore', 'Abrahim', 'gabrahim8@nature.com', 'Female', 'Japan', '680-567-8030');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (10, 'Tomkin', 'Towll', 'ttowll9@flickr.com', 'Male', 'China', '472-934-0340');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (11, 'Edgard', 'McKissack', 'emckissacka@reference.com', 'Male', 'China', '478-538-7789');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (12, 'Spenser', 'O'' Scallan', 'soscallanb@paginegialle.it', 'Male', 'Russia', '812-747-4480');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (13, 'Margery', 'Waszczyk', 'mwaszczykc@cloudflare.com', 'Female', 'China', '116-936-6672');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (14, 'Alverta', 'Schirach', 'aschirachd@edublogs.org', 'Agender', 'China', '662-543-9473');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (15, 'Trescha', 'Cordoba', 'tcordobae@nih.gov', 'Female', 'Indonesia', '653-122-9757');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (16, 'Grazia', 'Minister', 'gministerf@etsy.com', 'Female', 'Oman', '196-936-6466');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (17, 'Ira', 'Oiller', 'ioillerg@ox.ac.uk', 'Male', 'Bangladesh', '125-933-7601');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (18, 'Salome', 'Adamkiewicz', 'sadamkiewiczh@woothemes.com', 'Genderqueer', 'Greece', '161-622-8688');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (19, 'Brigit', 'Filippyev', 'bfilippyevi@prlog.org', 'Female', 'Japan', '578-975-7905');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (20, 'Chaddy', 'Celle', 'ccellej@flickr.com', 'Male', 'Russia', '529-496-4629');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (21, 'Alethea', 'Skedge', 'askedgek@omniture.com', 'Female', 'Poland', '138-145-8818');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (22, 'Roz', 'Batchellor', 'rbatchellorl@cornell.edu', 'Female', 'Philippines', '714-179-6705');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (23, 'Pierre', 'MacDiarmid', 'pmacdiarmidm@china.com.cn', 'Male', 'Philippines', '795-971-2829');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (24, 'Mildred', 'Maudsley', 'mmaudsleyn@mac.com', 'Female', 'Poland', '839-752-0196');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (25, 'Mollee', 'Hamner', 'mhamnero@boston.com', 'Female', 'Indonesia', '596-432-6321');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (26, 'Karine', 'Marten', 'kmartenp@bizjournals.com', 'Female', 'Indonesia', '621-335-3211');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (27, 'Roselle', 'Haggie', 'rhaggieq@yandex.ru', 'Genderfluid', 'Brazil', '558-346-4375');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (28, 'Aubrie', 'Rydzynski', 'arydzynskir@disqus.com', 'Female', 'Indonesia', '473-350-0966');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (29, 'Ruth', 'Gawne', 'rgawnes@wp.com', 'Female', 'China', '661-789-2513');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (30, 'Rania', 'Moralee', 'rmoraleet@tuttocitta.it', 'Female', 'Argentina', '470-219-7247');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (31, 'Grata', 'Hawarden', 'ghawardenu@macromedia.com', 'Female', 'China', '118-680-7529');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (32, 'Constantin', 'Tabbitt', 'ctabbittv@imgur.com', 'Polygender', 'Indonesia', '642-669-7160');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (33, 'Yul', 'Metzing', 'ymetzingw@google.com', 'Male', 'China', '624-760-0008');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (34, 'Oberon', 'Evison', 'oevisonx@typepad.com', 'Male', 'Kenya', '727-356-5922');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (35, 'Valma', 'Glenwright', 'vglenwrighty@nydailynews.com', 'Female', 'China', '925-233-5869');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (36, 'Reg', 'Hannam', 'rhannamz@mayoclinic.com', 'Male', 'China', '371-272-5429');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (37, 'Riannon', 'Plane', 'rplane10@angelfire.com', 'Female', 'Brazil', '331-343-3362');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (38, 'Jehanna', 'Oldridge', 'joldridge11@nytimes.com', 'Female', 'Comoros', '579-895-7445');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (39, 'Jourdain', 'Farndon', 'jfarndon12@apache.org', 'Male', 'Pakistan', '301-639-9773');
insert into actors (ActorID, FirstName, LastName, email, gender, country, phone) values (40, 'Wait', 'Klimkin', 'wklimkin13@ebay.co.uk', 'Male', 'Poland', '573-104-3120');

DROP TABLE IF EXISTS starred_movies;
create table starred_movies (
	ActorID INT NOT NULL,
	MovieID INT NOT NULL,

  FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
  FOREIGN KEY (ActorID) REFERENCES actors (ActorID)
);
insert into starred_movies (ActorID, MovieID) values ('37', '39');
insert into starred_movies (ActorID, MovieID) values ('18', '29');
insert into starred_movies (ActorID, MovieID) values ('17', '28');
insert into starred_movies (ActorID, MovieID) values ('39', '26');
insert into starred_movies (ActorID, MovieID) values ('22', '4');
insert into starred_movies (ActorID, MovieID) values ('15', '21');
insert into starred_movies (ActorID, MovieID) values ('19', '14');
insert into starred_movies (ActorID, MovieID) values ('4', '7');
insert into starred_movies (ActorID, MovieID) values ('8', '3');
insert into starred_movies (ActorID, MovieID) values ('16', '33');
insert into starred_movies (ActorID, MovieID) values ('40', '5');
insert into starred_movies (ActorID, MovieID) values ('28', '6');
insert into starred_movies (ActorID, MovieID) values ('20', '30');
insert into starred_movies (ActorID, MovieID) values ('21', '2');
insert into starred_movies (ActorID, MovieID) values ('5', '40');
insert into starred_movies (ActorID, MovieID) values ('26', '12');
insert into starred_movies (ActorID, MovieID) values ('7', '19');
insert into starred_movies (ActorID, MovieID) values ('35', '1');
insert into starred_movies (ActorID, MovieID) values ('10', '16');
insert into starred_movies (ActorID, MovieID) values ('13', '11');
insert into starred_movies (ActorID, MovieID) values ('36', '37');
insert into starred_movies (ActorID, MovieID) values ('3', '34');
insert into starred_movies (ActorID, MovieID) values ('30', '20');
insert into starred_movies (ActorID, MovieID) values ('11', '13');
insert into starred_movies (ActorID, MovieID) values ('31', '35');
insert into starred_movies (ActorID, MovieID) values ('6', '38');
insert into starred_movies (ActorID, MovieID) values ('34', '9');
insert into starred_movies (ActorID, MovieID) values ('24', '27');
insert into starred_movies (ActorID, MovieID) values ('27', '15');
insert into starred_movies (ActorID, MovieID) values ('29', '25');
insert into starred_movies (ActorID, MovieID) values ('38', '23');
insert into starred_movies (ActorID, MovieID) values ('32', '32');
insert into starred_movies (ActorID, MovieID) values ('12', '17');
insert into starred_movies (ActorID, MovieID) values ('9', '18');
insert into starred_movies (ActorID, MovieID) values ('1', '36');
insert into starred_movies (ActorID, MovieID) values ('23', '24');
insert into starred_movies (ActorID, MovieID) values ('2', '22');
insert into starred_movies (ActorID, MovieID) values ('33', '8');
insert into starred_movies (ActorID, MovieID) values ('14', '31');
insert into starred_movies (ActorID, MovieID) values ('25', '10');
insert into starred_movies (ActorID, MovieID) values ('4', '2');
insert into starred_movies (ActorID, MovieID) values ('32', '29');
insert into starred_movies (ActorID, MovieID) values ('23', '17');
insert into starred_movies (ActorID, MovieID) values ('26', '33');
insert into starred_movies (ActorID, MovieID) values ('36', '36');
insert into starred_movies (ActorID, MovieID) values ('34', '38');
insert into starred_movies (ActorID, MovieID) values ('21', '28');
insert into starred_movies (ActorID, MovieID) values ('27', '27');
insert into starred_movies (ActorID, MovieID) values ('9', '24');
insert into starred_movies (ActorID, MovieID) values ('15', '10');
insert into starred_movies (ActorID, MovieID) values ('22', '39');
insert into starred_movies (ActorID, MovieID) values ('6', '11');
insert into starred_movies (ActorID, MovieID) values ('14', '8');
insert into starred_movies (ActorID, MovieID) values ('16', '14');
insert into starred_movies (ActorID, MovieID) values ('13', '22');
insert into starred_movies (ActorID, MovieID) values ('33', '18');
insert into starred_movies (ActorID, MovieID) values ('25', '30');
insert into starred_movies (ActorID, MovieID) values ('31', '9');
insert into starred_movies (ActorID, MovieID) values ('1', '40');
insert into starred_movies (ActorID, MovieID) values ('10', '20');
insert into starred_movies (ActorID, MovieID) values ('35', '35');
insert into starred_movies (ActorID, MovieID) values ('30', '32');
insert into starred_movies (ActorID, MovieID) values ('3', '1');
insert into starred_movies (ActorID, MovieID) values ('17', '12');
insert into starred_movies (ActorID, MovieID) values ('11', '16');
insert into starred_movies (ActorID, MovieID) values ('18', '19');
insert into starred_movies (ActorID, MovieID) values ('39', '4');
insert into starred_movies (ActorID, MovieID) values ('37', '21');
insert into starred_movies (ActorID, MovieID) values ('29', '26');
insert into starred_movies (ActorID, MovieID) values ('40', '6');
insert into starred_movies (ActorID, MovieID) values ('12', '37');
insert into starred_movies (ActorID, MovieID) values ('7', '31');
insert into starred_movies (ActorID, MovieID) values ('28', '34');
insert into starred_movies (ActorID, MovieID) values ('2', '15');
insert into starred_movies (ActorID, MovieID) values ('24', '23');
insert into starred_movies (ActorID, MovieID) values ('8', '3');
insert into starred_movies (ActorID, MovieID) values ('19', '25');
insert into starred_movies (ActorID, MovieID) values ('20', '7');
insert into starred_movies (ActorID, MovieID) values ('38', '13');
insert into starred_movies (ActorID, MovieID) values ('5', '5');
insert into starred_movies (ActorID, MovieID) values ('5', '32');
insert into starred_movies (ActorID, MovieID) values ('36', '31');
insert into starred_movies (ActorID, MovieID) values ('28', '22');
insert into starred_movies (ActorID, MovieID) values ('24', '10');
insert into starred_movies (ActorID, MovieID) values ('25', '8');
insert into starred_movies (ActorID, MovieID) values ('34', '26');
insert into starred_movies (ActorID, MovieID) values ('17', '17');
insert into starred_movies (ActorID, MovieID) values ('3', '34');
insert into starred_movies (ActorID, MovieID) values ('19', '2');
insert into starred_movies (ActorID, MovieID) values ('7', '12');
insert into starred_movies (ActorID, MovieID) values ('40', '27');
insert into starred_movies (ActorID, MovieID) values ('33', '24');
insert into starred_movies (ActorID, MovieID) values ('26', '37');
insert into starred_movies (ActorID, MovieID) values ('10', '30');
insert into starred_movies (ActorID, MovieID) values ('27', '33');
insert into starred_movies (ActorID, MovieID) values ('6', '7');
insert into starred_movies (ActorID, MovieID) values ('30', '9');
insert into starred_movies (ActorID, MovieID) values ('15', '6');
insert into starred_movies (ActorID, MovieID) values ('39', '4');
insert into starred_movies (ActorID, MovieID) values ('2', '25');

DROP TABLE IF EXISTS ProductionCompany;
CREATE TABLE ProductionCompany(
  studioid INTEGER NOT NULL,
	StudioName VARCHAR(50),
	Email VARCHAR(50),
	Phone VARCHAR(50),
	Country VARCHAR(50),
	State VARCHAR(50),
	City VARCHAR(50),
	Street VARCHAR(50),

  PRIMARY KEY(studioid),
  UNIQUE(Email, Phone)
);
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (1, 'Jennee', 'jberdale0@newyorker.com', '889-695-9808', 'South Korea', null, 'Ansan-si', '28567 Quincy Avenue');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (2, 'Kara-lynn', 'kjobson1@delicious.com', '847-581-8636', 'Poland', null, 'Piława Górna', '128 Everett Way');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (3, 'Turner', 'triddeough2@ebay.com', '931-890-0696', 'China', null, 'Yangchengzhuang', '270 Michigan Court');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (4, 'Erhard', 'emongeot3@mac.com', '447-217-3604', 'Czech Republic', null, 'Libouchec', '2455 Hauk Hill');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (5, 'Bent', 'brumming4@tinypic.com', '611-613-6479', 'Sweden', 'Stockholm', 'Stocksund', '6445 Ridgeview Junction');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (6, 'Clive', 'catcherley5@soundcloud.com', '262-296-5316', 'China', null, 'Shaxi', '367 Jay Terrace');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (7, 'Olive', 'obrundle6@facebook.com', '146-654-2812', 'China', null, 'Huizhai', '938 Gale Junction');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (8, 'Leslie', 'lbruckstein7@networkadvertising.org', '861-861-4729', 'Portugal', 'Ilha de São Miguel', 'Pico da Pedra', '7048 Donald Avenue');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (9, 'Blair', 'bpolland8@nba.com', '705-924-5442', 'Thailand', null, 'Nong Saeng', '8 Sunfield Center');
insert into ProductionCompany (studioid, StudioName, email, phone, Country, State, City, Street) values (10, 'Giselle', 'ghanks9@dion.ne.jp', '202-372-1240', 'Poland', null, 'Bieliny', '9 Nevada Drive');

DROP TABLE IF EXISTS produced_by_comp;
create table produced_by_comp (
	MovieID INT NOT NULL,
	StudioID INT NOT NULL,

  FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
  FOREIGN KEY (StudioID) REFERENCES ProductionCompany (studioid)
);
insert into produced_by_comp (MovieID, StudioID) values ('12', '3');
insert into produced_by_comp (MovieID, StudioID) values ('10', '4');
insert into produced_by_comp (MovieID, StudioID) values ('6', '10');
insert into produced_by_comp (MovieID, StudioID) values ('13', '9');
insert into produced_by_comp (MovieID, StudioID) values ('27', '8');
insert into produced_by_comp (MovieID, StudioID) values ('19', '6');
insert into produced_by_comp (MovieID, StudioID) values ('36', '5');
insert into produced_by_comp (MovieID, StudioID) values ('3', '1');
insert into produced_by_comp (MovieID, StudioID) values ('4', '2');
insert into produced_by_comp (MovieID, StudioID) values ('16', '7');
insert into produced_by_comp (MovieID, StudioID) values ('34', '4');
insert into produced_by_comp (MovieID, StudioID) values ('17', '3');
insert into produced_by_comp (MovieID, StudioID) values ('28', '6');
insert into produced_by_comp (MovieID, StudioID) values ('15', '5');
insert into produced_by_comp (MovieID, StudioID) values ('18', '8');
insert into produced_by_comp (MovieID, StudioID) values ('40', '1');
insert into produced_by_comp (MovieID, StudioID) values ('20', '7');
insert into produced_by_comp (MovieID, StudioID) values ('11', '9');
insert into produced_by_comp (MovieID, StudioID) values ('23', '10');
insert into produced_by_comp (MovieID, StudioID) values ('39', '2');
insert into produced_by_comp (MovieID, StudioID) values ('21', '2');
insert into produced_by_comp (MovieID, StudioID) values ('7', '9');
insert into produced_by_comp (MovieID, StudioID) values ('8', '5');
insert into produced_by_comp (MovieID, StudioID) values ('30', '8');
insert into produced_by_comp (MovieID, StudioID) values ('2', '1');
insert into produced_by_comp (MovieID, StudioID) values ('32', '4');
insert into produced_by_comp (MovieID, StudioID) values ('5', '6');
insert into produced_by_comp (MovieID, StudioID) values ('38', '10');
insert into produced_by_comp (MovieID, StudioID) values ('33', '3');
insert into produced_by_comp (MovieID, StudioID) values ('29', '7');
insert into produced_by_comp (MovieID, StudioID) values ('22', '10');
insert into produced_by_comp (MovieID, StudioID) values ('37', '5');
insert into produced_by_comp (MovieID, StudioID) values ('24', '4');
insert into produced_by_comp (MovieID, StudioID) values ('25', '7');
insert into produced_by_comp (MovieID, StudioID) values ('35', '3');
insert into produced_by_comp (MovieID, StudioID) values ('31', '1');
insert into produced_by_comp (MovieID, StudioID) values ('14', '8');
insert into produced_by_comp (MovieID, StudioID) values ('9', '2');
insert into produced_by_comp (MovieID, StudioID) values ('1', '9');
insert into produced_by_comp (MovieID, StudioID) values ('26', '6');
insert into produced_by_comp (MovieID, StudioID) values ('28', '5');
insert into produced_by_comp (MovieID, StudioID) values ('35', '7');
insert into produced_by_comp (MovieID, StudioID) values ('15', '6');
insert into produced_by_comp (MovieID, StudioID) values ('4', '1');
insert into produced_by_comp (MovieID, StudioID) values ('6', '9');
insert into produced_by_comp (MovieID, StudioID) values ('17', '10');
insert into produced_by_comp (MovieID, StudioID) values ('27', '8');
insert into produced_by_comp (MovieID, StudioID) values ('1', '2');
insert into produced_by_comp (MovieID, StudioID) values ('11', '4');
insert into produced_by_comp (MovieID, StudioID) values ('22', '3');
insert into produced_by_comp (MovieID, StudioID) values ('10', '8');
insert into produced_by_comp (MovieID, StudioID) values ('31', '3');
insert into produced_by_comp (MovieID, StudioID) values ('29', '10');
insert into produced_by_comp (MovieID, StudioID) values ('19', '7');
insert into produced_by_comp (MovieID, StudioID) values ('32', '6');
insert into produced_by_comp (MovieID, StudioID) values ('9', '4');
insert into produced_by_comp (MovieID, StudioID) values ('16', '5');
insert into produced_by_comp (MovieID, StudioID) values ('5', '9');
insert into produced_by_comp (MovieID, StudioID) values ('24', '1');
insert into produced_by_comp (MovieID, StudioID) values ('2', '2');

DROP TABLE IF EXISTS users;
create table users (
  userid INTEGER NOT NULL,
  FirstName VARCHAR(50),
	LastName VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50),

  PRIMARY KEY(userid),
  UNIQUE(email)
);
insert into users (userid, FirstName, LastName, email, password) values (1, 'Andros', 'Gamble', 'agamble0@acquirethisname.com', 'sWC1DGYfrHC8');
insert into users (userid, FirstName, LastName, email, password) values (2, 'Sonny', 'Beamson', 'sbeamson1@ycombinator.com', 'uJjAibWcE7f');
insert into users (userid, FirstName, LastName, email, password) values (3, 'Barth', 'Antonias', 'bantonias2@state.tx.us', 'X4YDyXaiu');
insert into users (userid, FirstName, LastName, email, password) values (4, 'Mandy', 'Kemery', 'mkemery3@ucoz.ru', 'SMKKkZ');
insert into users (userid, FirstName, LastName, email, password) values (5, 'Stephine', 'Redmore', 'sredmore4@ifeng.com', 'CkaNOjHhLY');
insert into users (userid, FirstName, LastName, email, password) values (6, 'Berk', 'Neljes', 'bneljes5@sina.com.cn', 'LFSoiq');
insert into users (userid, FirstName, LastName, email, password) values (7, 'Susana', 'Hilary', 'shilary6@quantcast.com', 'ngOYE7Ktvz0l');
insert into users (userid, FirstName, LastName, email, password) values (8, 'Elnore', 'Burdis', 'eburdis7@netlog.com', 'rktdRX');
insert into users (userid, FirstName, LastName, email, password) values (9, 'Mervin', 'Tesimon', 'mtesimon8@ca.gov', 'XpDBUis');
insert into users (userid, FirstName, LastName, email, password) values (10, 'Jammie', 'Merritt', 'jmerritt9@ask.com', 'RGL3rih');
insert into users (userid, FirstName, LastName, email, password) values (11, 'Quinn', 'Bortol', 'qbortola@craigslist.org', 'DUToeKsff3');
insert into users (userid, FirstName, LastName, email, password) values (12, 'Teddie', 'Strickler', 'tstricklerb@senate.gov', '81Moviy');
insert into users (userid, FirstName, LastName, email, password) values (13, 'Ingemar', 'Coppens', 'icoppensc@mysql.com', 'FzmC88Hgc9Qr');
insert into users (userid, FirstName, LastName, email, password) values (14, 'Phil', 'Barajaz', 'pbarajazd@mayoclinic.com', 'CixhLvKV0');
insert into users (userid, FirstName, LastName, email, password) values (15, 'Chrisy', 'Standing', 'cstandinge@taobao.com', 'LDiirN');
insert into users (userid, FirstName, LastName, email, password) values (16, 'Ibrahim', 'Matonin', 'imatoninf@newsvine.com', 'zZzq6aFAS');
insert into users (userid, FirstName, LastName, email, password) values (17, 'Riley', 'Kief', 'rkiefg@last.fm', 'ONEFroGOs');
insert into users (userid, FirstName, LastName, email, password) values (18, 'Anna-diana', 'McKearnen', 'amckearnenh@cargocollective.com', 'gUg0ZD7vkO');
insert into users (userid, FirstName, LastName, email, password) values (19, 'Belicia', 'Frere', 'bfrerei@dailymotion.com', 'noL4PIA');
insert into users (userid, FirstName, LastName, email, password) values (20, 'Madonna', 'Kurdani', 'mkurdanij@drupal.org', 'bPtJz9XS');
insert into users (userid, FirstName, LastName, email, password) values (21, 'Daren', 'Chazette', 'dchazettek@gmpg.org', '6wGc2m0W');
insert into users (userid, FirstName, LastName, email, password) values (22, 'Tara', 'Meredyth', 'tmeredythl@senate.gov', 'Sc7VySI');
insert into users (userid, FirstName, LastName, email, password) values (23, 'Kerrie', 'Foreman', 'kforemanm@tumblr.com', 'q4LB6T9');
insert into users (userid, FirstName, LastName, email, password) values (24, 'Jodee', 'Rosenblum', 'jrosenblumn@discovery.com', 'uGeXU2O5');
insert into users (userid, FirstName, LastName, email, password) values (25, 'Donica', 'Kings', 'dkingso@google.com.br', '8PVlhwZ');
insert into users (userid, FirstName, LastName, email, password) values (26, 'Glad', 'Lemmer', 'glemmerp@free.fr', '7VXoXiKbjnWB');
insert into users (userid, FirstName, LastName, email, password) values (27, 'Pat', 'Burgyn', 'pburgynq@nasa.gov', 'HBEPJRjD6xji');
insert into users (userid, FirstName, LastName, email, password) values (28, 'Kirbie', 'Dugood', 'kdugoodr@businessweek.com', 'ws2dd4noNi');
insert into users (userid, FirstName, LastName, email, password) values (29, 'Becca', 'Frusher', 'bfrushers@artisteer.com', 'xLYEIN4');
insert into users (userid, FirstName, LastName, email, password) values (30, 'Johnathan', 'Scholz', 'jscholzt@over-blog.com', 'kPIukgjNg7e');
insert into users (userid, FirstName, LastName, email, password) values (31, 'Gretta', 'Kingsnorth', 'gkingsnorthu@vimeo.com', 'uLnNXw3yFh');
insert into users (userid, FirstName, LastName, email, password) values (32, 'Jori', 'Gunson', 'jgunsonv@answers.com', 'Fs3fUwY');
insert into users (userid, FirstName, LastName, email, password) values (33, 'Elana', 'Venny', 'evennyw@go.com', 'zhtWLrmuWk0');
insert into users (userid, FirstName, LastName, email, password) values (34, 'Melesa', 'Cracoe', 'mcracoex@lulu.com', '70lQXPsnMm2Q');
insert into users (userid, FirstName, LastName, email, password) values (35, 'Daveta', 'Poulney', 'dpoulneyy@hatena.ne.jp', 'BWIYTsk');
insert into users (userid, FirstName, LastName, email, password) values (36, 'Pat', 'Baudains', 'pbaudainsz@epa.gov', 'vWwbBKA');
insert into users (userid, FirstName, LastName, email, password) values (37, 'Nancee', 'Liccardi', 'nliccardi10@dailymotion.com', 'vcpzPdLd');
insert into users (userid, FirstName, LastName, email, password) values (38, 'Barbie', 'Hush', 'bhush11@google.com.au', 'F0gFvc5oaLxC');
insert into users (userid, FirstName, LastName, email, password) values (39, 'Lisbeth', 'Dillingstone', 'ldillingstone12@edublogs.org', 'bS7vrRgdb');
insert into users (userid, FirstName, LastName, email, password) values (40, 'Florence', 'Pankettman', 'fpankettman13@un.org', 'ZpcyyeWM04SC');
insert into users (userid, FirstName, LastName, email, password) values (41, 'Olivier', 'Wigzell', 'owigzell14@exblog.jp', 'Yp9pYvIL1u1');
insert into users (userid, FirstName, LastName, email, password) values (42, 'Brooke', 'Jagielski', 'bjagielski15@hubpages.com', 'OauvWZ5');
insert into users (userid, FirstName, LastName, email, password) values (43, 'Milo', 'Sivell', 'msivell16@ebay.co.uk', 'Je7qx8vpJIAi');
insert into users (userid, FirstName, LastName, email, password) values (44, 'Yancy', 'Allsopp', 'yallsopp17@google.pl', 'DV5ouked');
insert into users (userid, FirstName, LastName, email, password) values (45, 'Dacia', 'Illsley', 'dillsley18@com.com', '1QdEu6h');
insert into users (userid, FirstName, LastName, email, password) values (46, 'Nester', 'Darte', 'ndarte19@utexas.edu', 'k2qyQW9');
insert into users (userid, FirstName, LastName, email, password) values (47, 'Harold', 'Havercroft', 'hhavercroft1a@bbb.org', '6uBdBSFN');
insert into users (userid, FirstName, LastName, email, password) values (48, 'Janna', 'Ewan', 'jewan1b@thetimes.co.uk', 'gfA0ktRpcs');
insert into users (userid, FirstName, LastName, email, password) values (49, 'Dyanna', 'Woodhead', 'dwoodhead1c@nydailynews.com', 'GxL1MrgcU');
insert into users (userid, FirstName, LastName, email, password) values (50, 'Creighton', 'Teers', 'cteers1d@senate.gov', 'w1LIc6s');
insert into users (userid, FirstName, LastName, email, password) values (51, 'Renato', 'Laetham', 'rlaetham1e@narod.ru', 'jKSHdZu');
insert into users (userid, FirstName, LastName, email, password) values (52, 'Kit', 'McCreary', 'kmccreary1f@flickr.com', 'vAyQaYBMA6H');
insert into users (userid, FirstName, LastName, email, password) values (53, 'Hatty', 'Labusquiere', 'hlabusquiere1g@elpais.com', 'ti0Y9O9Z');
insert into users (userid, FirstName, LastName, email, password) values (54, 'Nettie', 'Gosling', 'ngosling1h@java.com', 'k843NNUpCW');
insert into users (userid, FirstName, LastName, email, password) values (55, 'Rouvin', 'Motten', 'rmotten1i@bing.com', 'HNkBTIfyJ');
insert into users (userid, FirstName, LastName, email, password) values (56, 'Orran', 'Crosetto', 'ocrosetto1j@ca.gov', 'iljb6hOZtD1G');
insert into users (userid, FirstName, LastName, email, password) values (57, 'Karlotta', 'Camillo', 'kcamillo1k@hibu.com', 'BRkS2F');
insert into users (userid, FirstName, LastName, email, password) values (58, 'Cami', 'Kedge', 'ckedge1l@so-net.ne.jp', 'PwkmAHmIk');
insert into users (userid, FirstName, LastName, email, password) values (59, 'Ase', 'Fontanet', 'afontanet1m@samsung.com', 'j0dNCyrhR');
insert into users (userid, FirstName, LastName, email, password) values (60, 'Gawen', 'Whorf', 'gwhorf1n@lycos.com', 'q0pjpUc');

DROP TABLE IF EXISTS liked_movies;
CREATE TABLE liked_movies(
    movieId INT NOT NULL,
    userId INT NOT NULL,

    PRIMARY KEY(movieId, userId),
    FOREIGN KEY(userId) references users (userid),
    FOREIGN KEY(movieId) references Movie (movieId)
);
insert into liked_movies (MovieID, UserID) values ('37', '46');
insert into liked_movies (MovieID, UserID) values ('18', '8');
insert into liked_movies (MovieID, UserID) values ('7', '50');
insert into liked_movies (MovieID, UserID) values ('29', '56');
insert into liked_movies (MovieID, UserID) values ('27', '10');
insert into liked_movies (MovieID, UserID) values ('12', '55');
insert into liked_movies (MovieID, UserID) values ('26', '2');
insert into liked_movies (MovieID, UserID) values ('19', '9');
insert into liked_movies (MovieID, UserID) values ('35', '17');
insert into liked_movies (MovieID, UserID) values ('3', '33');
insert into liked_movies (MovieID, UserID) values ('10', '57');
insert into liked_movies (MovieID, UserID) values ('20', '16');
insert into liked_movies (MovieID, UserID) values ('39', '4');
insert into liked_movies (MovieID, UserID) values ('11', '52');
insert into liked_movies (MovieID, UserID) values ('13', '47');
insert into liked_movies (MovieID, UserID) values ('22', '14');
insert into liked_movies (MovieID, UserID) values ('6', '58');
insert into liked_movies (MovieID, UserID) values ('33', '13');
insert into liked_movies (MovieID, UserID) values ('2', '39');
insert into liked_movies (MovieID, UserID) values ('23', '28');
insert into liked_movies (MovieID, UserID) values ('21', '36');
insert into liked_movies (MovieID, UserID) values ('1', '7');
insert into liked_movies (MovieID, UserID) values ('28', '60');
insert into liked_movies (MovieID, UserID) values ('24', '44');
insert into liked_movies (MovieID, UserID) values ('38', '53');
insert into liked_movies (MovieID, UserID) values ('31', '35');
insert into liked_movies (MovieID, UserID) values ('5', '43');
insert into liked_movies (MovieID, UserID) values ('32', '1');
insert into liked_movies (MovieID, UserID) values ('25', '32');
insert into liked_movies (MovieID, UserID) values ('30', '27');
insert into liked_movies (MovieID, UserID) values ('4', '18');
insert into liked_movies (MovieID, UserID) values ('36', '26');
insert into liked_movies (MovieID, UserID) values ('17', '45');
insert into liked_movies (MovieID, UserID) values ('34', '42');
insert into liked_movies (MovieID, UserID) values ('9', '21');
insert into liked_movies (MovieID, UserID) values ('16', '24');
insert into liked_movies (MovieID, UserID) values ('15', '51');
insert into liked_movies (MovieID, UserID) values ('14', '41');
insert into liked_movies (MovieID, UserID) values ('8', '5');
insert into liked_movies (MovieID, UserID) values ('40', '34');
insert into liked_movies (MovieID, UserID) values ('7', '15');
insert into liked_movies (MovieID, UserID) values ('40', '30');
insert into liked_movies (MovieID, UserID) values ('27', '11');
insert into liked_movies (MovieID, UserID) values ('32', '37');
insert into liked_movies (MovieID, UserID) values ('37', '6');
insert into liked_movies (MovieID, UserID) values ('16', '23');
insert into liked_movies (MovieID, UserID) values ('25', '49');
insert into liked_movies (MovieID, UserID) values ('12', '19');
insert into liked_movies (MovieID, UserID) values ('13', '20');
insert into liked_movies (MovieID, UserID) values ('9', '54');
insert into liked_movies (MovieID, UserID) values ('8', '12');
insert into liked_movies (MovieID, UserID) values ('19', '38');
insert into liked_movies (MovieID, UserID) values ('35', '40');
insert into liked_movies (MovieID, UserID) values ('22', '22');
insert into liked_movies (MovieID, UserID) values ('33', '29');
insert into liked_movies (MovieID, UserID) values ('18', '59');
insert into liked_movies (MovieID, UserID) values ('14', '3');
insert into liked_movies (MovieID, UserID) values ('30', '31');
insert into liked_movies (MovieID, UserID) values ('36', '25');
insert into liked_movies (MovieID, UserID) values ('20', '48');
insert into liked_movies (MovieID, UserID) values ('6', '38');
insert into liked_movies (MovieID, UserID) values ('39', '5');
insert into liked_movies (MovieID, UserID) values ('26', '35');
insert into liked_movies (MovieID, UserID) values ('34', '20');
insert into liked_movies (MovieID, UserID) values ('2', '33');
insert into liked_movies (MovieID, UserID) values ('23', '3');
insert into liked_movies (MovieID, UserID) values ('17', '4');
insert into liked_movies (MovieID, UserID) values ('5', '49');
insert into liked_movies (MovieID, UserID) values ('10', '43');
insert into liked_movies (MovieID, UserID) values ('3', '29');
insert into liked_movies (MovieID, UserID) values ('38', '24');
insert into liked_movies (MovieID, UserID) values ('1', '33');
insert into liked_movies (MovieID, UserID) values ('21', '23');
insert into liked_movies (MovieID, UserID) values ('15', '27');
insert into liked_movies (MovieID, UserID) values ('28', '2');
insert into liked_movies (MovieID, UserID) values ('11', '36');
insert into liked_movies (MovieID, UserID) values ('31', '32');
insert into liked_movies (MovieID, UserID) values ('24', '57');
insert into liked_movies (MovieID, UserID) values ('29', '14');
insert into liked_movies (MovieID, UserID) values ('4', '6');
insert into liked_movies (MovieID, UserID) values ('20', '21');
insert into liked_movies (MovieID, UserID) values ('31', '45');
insert into liked_movies (MovieID, UserID) values ('37', '44');
insert into liked_movies (MovieID, UserID) values ('10', '28');
insert into liked_movies (MovieID, UserID) values ('30', '25');
insert into liked_movies (MovieID, UserID) values ('15', '16');
insert into liked_movies (MovieID, UserID) values ('11', '7');
insert into liked_movies (MovieID, UserID) values ('25', '30');
insert into liked_movies (MovieID, UserID) values ('12', '37');
insert into liked_movies (MovieID, UserID) values ('24', '55');
insert into liked_movies (MovieID, UserID) values ('22', '8');
insert into liked_movies (MovieID, UserID) values ('19', '1');
insert into liked_movies (MovieID, UserID) values ('35', '50');
insert into liked_movies (MovieID, UserID) values ('13', '48');
insert into liked_movies (MovieID, UserID) values ('4', '33');
insert into liked_movies (MovieID, UserID) values ('6', '19');
insert into liked_movies (MovieID, UserID) values ('38', '46');
insert into liked_movies (MovieID, UserID) values ('27', '42');
insert into liked_movies (MovieID, UserID) values ('21', '54');
insert into liked_movies (MovieID, UserID) values ('3', '47');

DROP TABLE IF EXISTS watched_movies;
CREATE TABLE watched_movies(
    MovieID INT NOT NULL,
    UserID INT NOT NULL,

    PRIMARY KEY(MovieID, UserID),
    FOREIGN KEY(userId) references users (userId),
    FOREIGN KEY(movieId) references Movie (movieId)
);

insert into watched_movies (MovieID, UserID) values ('23', '23');
insert into watched_movies (MovieID, UserID) values ('13', '33');
insert into watched_movies (MovieID, UserID) values ('6', '38');
insert into watched_movies (MovieID, UserID) values ('34', '11');
insert into watched_movies (MovieID, UserID) values ('10', '17');
insert into watched_movies (MovieID, UserID) values ('9', '24');
insert into watched_movies (MovieID, UserID) values ('26', '27');
insert into watched_movies (MovieID, UserID) values ('40', '15');
insert into watched_movies (MovieID, UserID) values ('33', '54');
insert into watched_movies (MovieID, UserID) values ('4', '13');
insert into watched_movies (MovieID, UserID) values ('17', '45');
insert into watched_movies (MovieID, UserID) values ('35', '48');
insert into watched_movies (MovieID, UserID) values ('20', '39');
insert into watched_movies (MovieID, UserID) values ('39', '10');
insert into watched_movies (MovieID, UserID) values ('24', '4');
insert into watched_movies (MovieID, UserID) values ('37', '53');
insert into watched_movies (MovieID, UserID) values ('16', '32');
insert into watched_movies (MovieID, UserID) values ('2', '37');
insert into watched_movies (MovieID, UserID) values ('22', '52');
insert into watched_movies (MovieID, UserID) values ('12', '50');
insert into watched_movies (MovieID, UserID) values ('38', '41');
insert into watched_movies (MovieID, UserID) values ('1', '47');
insert into watched_movies (MovieID, UserID) values ('18', '42');
insert into watched_movies (MovieID, UserID) values ('28', '34');
insert into watched_movies (MovieID, UserID) values ('5', '20');
insert into watched_movies (MovieID, UserID) values ('25', '14');
insert into watched_movies (MovieID, UserID) values ('3', '30');
insert into watched_movies (MovieID, UserID) values ('7', '56');
insert into watched_movies (MovieID, UserID) values ('14', '18');
insert into watched_movies (MovieID, UserID) values ('19', '43');
insert into watched_movies (MovieID, UserID) values ('15', '49');
insert into watched_movies (MovieID, UserID) values ('29', '12');
insert into watched_movies (MovieID, UserID) values ('27', '29');
insert into watched_movies (MovieID, UserID) values ('30', '26');
insert into watched_movies (MovieID, UserID) values ('21', '2');
insert into watched_movies (MovieID, UserID) values ('8', '25');
insert into watched_movies (MovieID, UserID) values ('11', '1');
insert into watched_movies (MovieID, UserID) values ('32', '44');
insert into watched_movies (MovieID, UserID) values ('36', '19');
insert into watched_movies (MovieID, UserID) values ('31', '40');
insert into watched_movies (MovieID, UserID) values ('6', '6');
insert into watched_movies (MovieID, UserID) values ('15', '59');
insert into watched_movies (MovieID, UserID) values ('2', '7');
insert into watched_movies (MovieID, UserID) values ('35', '60');
insert into watched_movies (MovieID, UserID) values ('40', '3');
insert into watched_movies (MovieID, UserID) values ('36', '31');
insert into watched_movies (MovieID, UserID) values ('13', '8');
insert into watched_movies (MovieID, UserID) values ('10', '35');
insert into watched_movies (MovieID, UserID) values ('27', '55');
insert into watched_movies (MovieID, UserID) values ('11', '28');
insert into watched_movies (MovieID, UserID) values ('25', '16');
insert into watched_movies (MovieID, UserID) values ('32', '46');
insert into watched_movies (MovieID, UserID) values ('8', '9');
insert into watched_movies (MovieID, UserID) values ('34', '51');
insert into watched_movies (MovieID, UserID) values ('23', '5');
insert into watched_movies (MovieID, UserID) values ('18', '58');
insert into watched_movies (MovieID, UserID) values ('1', '36');
insert into watched_movies (MovieID, UserID) values ('4', '21');
insert into watched_movies (MovieID, UserID) values ('24', '22');
insert into watched_movies (MovieID, UserID) values ('5', '57');
insert into watched_movies (MovieID, UserID) values ('20', '55');
insert into watched_movies (MovieID, UserID) values ('3', '18');
insert into watched_movies (MovieID, UserID) values ('19', '5');
insert into watched_movies (MovieID, UserID) values ('38', '13');
insert into watched_movies (MovieID, UserID) values ('29', '30');
insert into watched_movies (MovieID, UserID) values ('16', '10');
insert into watched_movies (MovieID, UserID) values ('26', '25');
insert into watched_movies (MovieID, UserID) values ('9', '20');
insert into watched_movies (MovieID, UserID) values ('37', '44');
insert into watched_movies (MovieID, UserID) values ('12', '52');
insert into watched_movies (MovieID, UserID) values ('28', '60');
insert into watched_movies (MovieID, UserID) values ('33', '48');
insert into watched_movies (MovieID, UserID) values ('21', '11');
insert into watched_movies (MovieID, UserID) values ('14', '1');
insert into watched_movies (MovieID, UserID) values ('31', '38');
insert into watched_movies (MovieID, UserID) values ('7', '58');
insert into watched_movies (MovieID, UserID) values ('30', '8');
insert into watched_movies (MovieID, UserID) values ('22', '51');
insert into watched_movies (MovieID, UserID) values ('17', '19');
insert into watched_movies (MovieID, UserID) values ('39', '46');
insert into watched_movies (MovieID, UserID) values ('32', '2');
insert into watched_movies (MovieID, UserID) values ('11', '40');
insert into watched_movies (MovieID, UserID) values ('34', '41');
insert into watched_movies (MovieID, UserID) values ('8', '24');
insert into watched_movies (MovieID, UserID) values ('14', '56');
insert into watched_movies (MovieID, UserID) values ('7', '39');
insert into watched_movies (MovieID, UserID) values ('18', '47');
insert into watched_movies (MovieID, UserID) values ('6', '19');
insert into watched_movies (MovieID, UserID) values ('38', '49');
insert into watched_movies (MovieID, UserID) values ('12', '21');
insert into watched_movies (MovieID, UserID) values ('22', '35');
insert into watched_movies (MovieID, UserID) values ('23', '37');
insert into watched_movies (MovieID, UserID) values ('19', '23');
insert into watched_movies (MovieID, UserID) values ('26', '36');
insert into watched_movies (MovieID, UserID) values ('17', '32');
insert into watched_movies (MovieID, UserID) values ('24', '59');
insert into watched_movies (MovieID, UserID) values ('20', '17');
insert into watched_movies (MovieID, UserID) values ('39', '7');
insert into watched_movies (MovieID, UserID) values ('3', '54');
insert into watched_movies (MovieID, UserID) values ('25', '12');

DROP TABLE IF EXISTS Producer;
CREATE TABLE Producer(
  producerid INTEGER NOT NULL,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
  email VARCHAR(50),
  Gender VARCHAR(50),
	Country VARCHAR(50),
  phone VARCHAR(50),

    PRIMARY KEY(producerid),
    UNIQUE(email, phone)
);

insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (1, 'Jessie', 'Swarbrick', 'jswarbrick0@buzzfeed.com', 'Male', 'Morocco', '732-797-3511');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (2, 'Gideon', 'Janauschek', 'gjanauschek1@domainmarket.com', 'Genderfluid', 'Portugal', '543-204-2041');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (3, 'Rhiamon', 'Kerswell', 'rkerswell2@independent.co.uk', 'Agender', 'Russia', '192-501-2691');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (4, 'Alverta', 'MacCrann', 'amaccrann3@tuttocitta.it', 'Female', 'Latvia', '359-610-4544');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (5, 'Nappy', 'O''Corhane', 'nocorhane4@kickstarter.com', 'Male', 'Canada', '706-346-0701');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (6, 'Norry', 'Ransbury', 'nransbury5@squidoo.com', 'Male', 'Russia', '445-498-9638');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (7, 'Laurette', 'Kentish', 'lkentish6@businessinsider.com', 'Female', 'Poland', '577-371-6406');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (8, 'Ruby', 'Florey', 'rflorey7@newyorker.com', 'Female', 'Indonesia', '733-168-8254');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (9, 'Robyn', 'Gilbane', 'rgilbane8@rediff.com', 'Female', 'China', '262-147-9824');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (10, 'Jennine', 'Eilers', 'jeilers9@paginegialle.it', 'Female', 'China', '343-768-9349');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (11, 'Dudley', 'Joannidi', 'djoannidia@apache.org', 'Male', 'Vietnam', '994-136-2997');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (12, 'Lion', 'Danilishin', 'ldanilishinb@gizmodo.com', 'Male', 'China', '354-437-5412');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (13, 'Bathsheba', 'Pohlak', 'bpohlakc@answers.com', 'Female', 'Thailand', '154-623-5765');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (14, 'Georgiana', 'Espino', 'gespinod@ucoz.ru', 'Female', 'China', '246-467-4621');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (15, 'Pietra', 'Webb-Bowen', 'pwebbbowene@indiatimes.com', 'Female', 'China', '112-907-2783');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (16, 'Anatole', 'Whatley', 'awhatleyf@tiny.cc', 'Male', 'Indonesia', '452-630-4606');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (17, 'Jerome', 'Brok', 'jbrokg@lycos.com', 'Male', 'Tunisia', '272-527-6776');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (18, 'Robin', 'McKevitt', 'rmckevitth@cisco.com', 'Female', 'United States', '850-822-4943');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (19, 'Denny', 'Bleaden', 'dbleadeni@wisc.edu', 'Female', 'Russia', '336-428-8553');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (20, 'Marilee', 'Rosberg', 'mrosbergj@123-reg.co.uk', 'Female', 'China', '189-142-0331');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (21, 'Eric', 'Gowler', 'egowlerk@cbsnews.com', 'Male', 'Philippines', '762-436-6965');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (22, 'Giffy', 'Gowland', 'ggowlandl@europa.eu', 'Male', 'Russia', '918-177-5230');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (23, 'Donica', 'Wybourne', 'dwybournem@blogtalkradio.com', 'Non-binary', 'Sweden', '518-469-2055');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (24, 'Graehme', 'Eversfield', 'geversfieldn@microsoft.com', 'Male', 'Poland', '264-978-1293');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (25, 'Olivia', 'Nottram', 'onottramo@aboutads.info', 'Female', 'Vietnam', '821-774-6158');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (26, 'Herculie', 'Ashe', 'hashep@canalblog.com', 'Male', 'Indonesia', '548-289-6870');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (27, 'Kincaid', 'Morrish', 'kmorrishq@cpanel.net', 'Male', 'Cuba', '131-644-0604');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (28, 'Benjy', 'Juan', 'bjuanr@squidoo.com', 'Male', 'Zambia', '667-522-5401');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (29, 'Goldarina', 'Marney', 'gmarneys@oakley.com', 'Genderfluid', 'China', '696-795-1565');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (30, 'Jory', 'Roggers', 'jroggerst@miitbeian.gov.cn', 'Male', 'China', '246-612-3193');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (31, 'Ermengarde', 'Paliser', 'epaliseru@skyrock.com', 'Female', 'Malaysia', '738-985-5235');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (32, 'Chaddie', 'Sommerton', 'csommertonv@toplist.cz', 'Male', 'France', '933-471-6892');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (33, 'Cody', 'Brennon', 'cbrennonw@tmall.com', 'Male', 'China', '869-538-8243');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (34, 'Renelle', 'Sleep', 'rsleepx@acquirethisname.com', 'Female', 'Grenada', '824-386-9377');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (35, 'Killy', 'Coult', 'kcoulty@cbsnews.com', 'Male', 'Portugal', '807-847-2863');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (36, 'Jean', 'Thurlow', 'jthurlowz@creativecommons.org', 'Female', 'Pakistan', '149-788-4488');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (37, 'Roch', 'Ahmed', 'rahmed10@gnu.org', 'Female', 'United States', '202-764-4063');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (38, 'Leonidas', 'Neave', 'lneave11@sohu.com', 'Male', 'Czech Republic', '738-156-6876');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (39, 'Stephanie', 'Mumberson', 'smumberson12@walmart.com', 'Female', 'China', '918-623-5914');
insert into Producer (producerID, FirstName, LastName, email, gender, country, phone) values (40, 'Lorita', 'Mattiessen', 'lmattiessen13@ucla.edu', 'Female', 'Canada', '343-631-6600');

DROP TABLE IF EXISTS produced_by;
CREATE TABLE produced_by(
  movieId INT NOT NULL,
  producerId INT NOT NULL,

  PRIMARY KEY(movieId, producerId),
  FOREIGN KEY(producerid) references Producer(producerid),
  FOREIGN KEY(movieId) references Movie (movieId)
);
insert into produced_by (MovieID, producerid) values ('37', '32');
insert into produced_by (MovieID, producerid) values ('2', '8');
insert into produced_by (MovieID, producerid) values ('24', '26');
insert into produced_by (MovieID, producerid) values ('33', '1');
insert into produced_by (MovieID, producerid) values ('31', '39');
insert into produced_by (MovieID, producerid) values ('8', '7');
insert into produced_by (MovieID, producerid) values ('18', '23');
insert into produced_by (MovieID, producerid) values ('32', '11');
insert into produced_by (MovieID, producerid) values ('22', '31');
insert into produced_by (MovieID, producerid) values ('27', '25');
insert into produced_by (MovieID, producerid) values ('1', '37');
insert into produced_by (MovieID, producerid) values ('26', '40');
insert into produced_by (MovieID, producerid) values ('25', '10');
insert into produced_by (MovieID, producerid) values ('29', '3');
insert into produced_by (MovieID, producerid) values ('7', '13');
insert into produced_by (MovieID, producerid) values ('28', '5');
insert into produced_by (MovieID, producerid) values ('3', '35');
insert into produced_by (MovieID, producerid) values ('11', '19');
insert into produced_by (MovieID, producerid) values ('39', '2');
insert into produced_by (MovieID, producerid) values ('12', '20');
insert into produced_by (MovieID, producerid) values ('19', '34');
insert into produced_by (MovieID, producerid) values ('40', '33');
insert into produced_by (MovieID, producerid) values ('10', '9');
insert into produced_by (MovieID, producerid) values ('34', '27');
insert into produced_by (MovieID, producerid) values ('17', '18');
insert into produced_by (MovieID, producerid) values ('14', '24');
insert into produced_by (MovieID, producerid) values ('13', '28');
insert into produced_by (MovieID, producerid) values ('15', '4');
insert into produced_by (MovieID, producerid) values ('23', '6');
insert into produced_by (MovieID, producerid) values ('21', '21');
insert into produced_by (MovieID, producerid) values ('6', '12');
insert into produced_by (MovieID, producerid) values ('16', '14');
insert into produced_by (MovieID, producerid) values ('4', '22');
insert into produced_by (MovieID, producerid) values ('9', '15');
insert into produced_by (MovieID, producerid) values ('5', '30');
insert into produced_by (MovieID, producerid) values ('30', '17');
insert into produced_by (MovieID, producerid) values ('20', '29');
insert into produced_by (MovieID, producerid) values ('35', '16');
insert into produced_by (MovieID, producerid) values ('36', '38');
insert into produced_by (MovieID, producerid) values ('38', '36');
insert into produced_by (MovieID, producerid) values ('39', '1');
insert into produced_by (MovieID, producerid) values ('1', '27');
insert into produced_by (MovieID, producerid) values ('26', '38');
insert into produced_by (MovieID, producerid) values ('10', '11');
insert into produced_by (MovieID, producerid) values ('9', '26');
insert into produced_by (MovieID, producerid) values ('27', '16');
insert into produced_by (MovieID, producerid) values ('36', '25');
insert into produced_by (MovieID, producerid) values ('35', '7');
insert into produced_by (MovieID, producerid) values ('31', '12');
insert into produced_by (MovieID, producerid) values ('3', '10');
insert into produced_by (MovieID, producerid) values ('37', '34');
insert into produced_by (MovieID, producerid) values ('21', '39');
insert into produced_by (MovieID, producerid) values ('16', '5');
insert into produced_by (MovieID, producerid) values ('22', '35');
insert into produced_by (MovieID, producerid) values ('23', '40');
insert into produced_by (MovieID, producerid) values ('17', '31');
insert into produced_by (MovieID, producerid) values ('34', '3');
insert into produced_by (MovieID, producerid) values ('24', '29');
insert into produced_by (MovieID, producerid) values ('5', '15');
insert into produced_by (MovieID, producerid) values ('33', '19');

DROP TABLE IF EXISTS StreamingCompany;
CREATE TABLE StreamingCompany(
  companyid INTEGER NOT NULL,
	CompanyName VARCHAR(50),
	email VARCHAR(50),
	Phone VARCHAR(50),
	Link VARCHAR(1000),

  PRIMARY KEY(companyid),
  UNIQUE(email, phone)
);
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (1, 'Lubowitz-Ritchie', 'boates0@princeton.edu', '945-963-7734', 'infoseek.co.jp');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (2, 'Hamill-Ziemann', 'blovejoy1@123-reg.co.uk', '497-774-0977', 'photobucket.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (3, 'Balistreri, Reichel and Kertzmann', 'cjeaves2@nationalgeographic.com', '980-428-2117', 'oakley.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (4, 'Hammes-Glover', 'cpennacci3@stanford.edu', '816-319-4499', 'huffingtonpost.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (5, 'Schmitt-Bernhard', 'cheadan4@wired.com', '207-306-2018', 'businessweek.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (6, 'Gorczany, Wolff and Leffler', 'mtrees5@yellowpages.com', '744-899-7405', 'elpais.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (7, 'Jones, Bauch and Gorczany', 'evreiberg6@engadget.com', '799-777-9203', 'blogspot.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (8, 'Little-Sanford', 'bberriman7@blinklist.com', '679-499-7308', 'house.gov');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (9, 'Dibbert Inc', 'mconnew8@vistaprint.com', '256-932-4954', 'live.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (10, 'Gleason, Little and O''Hara', 'dtroop9@mozilla.org', '131-319-0690', 'free.fr');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (11, 'Schimmel-Crooks', 'kmccarrya@berkeley.edu', '390-367-2397', 'tripod.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (12, 'Kassulke, Jacobs and Bradtke', 'tcortnayb@slashdot.org', '382-258-3510', 'symantec.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (13, 'Strosin LLC', 'davrahmc@networkadvertising.org', '673-326-2432', 'imdb.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (14, 'Cormier, Littel and Breitenberg', 'gfarrensd@example.com', '254-217-6040', 'jugem.jp');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (15, 'Ullrich, Witting and Homenick', 'mgontiere@sbwire.com', '265-500-9820', 'instagram.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (16, 'Schuster Inc', 'jbromontf@ehow.com', '430-402-7772', 'foxnews.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (17, 'Becker Group', 'echillesg@shutterfly.com', '850-553-1316', 'xing.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (18, 'Bartell, Olson and Tremblay', 'zleishmanh@163.com', '848-862-4959', 'phoca.cz');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (19, 'Fahey-Klocko', 'mbielfeldi@nbcnews.com', '452-732-6418', 'ning.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (20, 'Hettinger Group', 'skubisj@techcrunch.com', '258-138-7600', 'sun.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (21, 'Kovacek and Sons', 'tbarnacloughk@archive.org', '958-652-4409', 'over-blog.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (22, 'Smith, Keeling and Goyette', 'claisel@ed.gov', '855-485-5233', 'cmu.edu');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (23, 'Botsford-Hammes', 'gpautardm@dedecms.com', '599-602-1573', 'amazon.co.uk');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (24, 'Reinger, Pollich and Padberg', 'shonischn@chicagotribune.com', '591-182-1818', 'comsenz.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (25, 'Orn Inc', 'lfarncombeo@vk.com', '312-639-0831', 'globo.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (26, 'Fisher, Terry and Kozey', 'lrankcomp@weebly.com', '212-483-2452', 'spiegel.de');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (27, 'Mosciski, Ernser and Leffler', 'jvoadenq@dmoz.org', '642-995-8112', 'newsvine.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (28, 'Windler-O''Keefe', 'gaddeycottr@discovery.com', '177-380-9134', 'hatena.ne.jp');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (29, 'Kuhlman Inc', 'jcarvers@opensource.org', '108-824-7490', 'google.cn');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (30, 'Kessler, Bogan and Simonis', 'bsoggt@e-recht24.de', '224-383-6747', 'drupal.org');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (31, 'Murray, Rodriguez and Lynch', 'kpinckedu@amazon.co.jp', '127-324-0576', 'cdbaby.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (32, 'Swaniawski, Donnelly and Purdy', 'nrennyv@desdev.cn', '839-810-6418', 'dedecms.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (33, 'Krajcik Inc', 'ksansumw@stumbleupon.com', '713-943-0689', 'zimbio.com');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (34, 'Schultz Inc', 'mpesslerx@sciencedaily.com', '694-850-3936', 'goo.gl');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (35, 'Weissnat LLC', 'ydukery@live.com', '347-725-4814', 'google.nl');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (36, 'Mann, Paucek and Koch', 'graxworthyz@github.com', '578-535-6530', 'cmu.edu');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (37, 'Reichert, Ferry and Donnelly', 'trichford10@uiuc.edu', '205-162-8271', 'yahoo.co.jp');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (38, 'Kemmer LLC', 'bday11@4shared.com', '662-114-2997', 'ca.gov');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (39, 'Jakubowski, Schulist and Lind', 'cmccoughan12@yellowbook.com', '912-212-5715', 'ustream.tv');
insert into StreamingCompany (companyid, CompanyName, email, Phone, Link) values (40, 'Ullrich Inc', 'lvise13@facebook.com', '590-527-4775', 'mail.ru');

DROP TABLE IF EXISTS streamed_movies;
CREATE TABLE streamed_movies (
    movieId INT NOT NULL,
    StreamingCompanyid INT NOT NULL,
    link VARCHAR(10000),
    
    FOREIGN KEY(StreamingCompanyId) references StreamingCompany (CompanyId),
    FOREIGN KEY(movieId) references Movie (movieId)
);

insert into streamed_movies (movieId, StreamingCompanyId, link) values ('18', '11', 'http://pbs.org/at.jpg?sollicitudin=consequat&mi=varius&sit=integer&amet=ac&lobortis=leo&sapien=pellentesque&sapien=ultrices&non=mattis&mi=odio&integer=donec&ac=vitae&neque=nisi&duis=nam&bibendum=ultrices');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('10', '20', 'http://paypal.com/turpis/eget/elit/sodales.xml?id=tellus&turpis=in&integer=sagittis&aliquet=dui&massa=vel&id=nisl&lobortis=duis&convallis=ac&tortor=nibh&risus=fusce&dapibus=lacus&augue=purus&vel=aliquet&accumsan=at&tellus=feugiat&nisi=non&eu=pretium&orci=quis&mauris=lectus&lacinia=suspendisse&sapien=potenti&quis=in&libero=eleifend&nullam=quam&sit=a&amet=odio&turpis=in&elementum=hac&ligula=habitasse&vehicula=platea&consequat=dictumst&morbi=maecenas&a=ut&ipsum=massa&integer=quis&a=augue&nibh=luctus&in=tincidunt&quis=nulla&justo=mollis&maecenas=molestie&rhoncus=lorem&aliquam=quisque&lacus=ut&morbi=erat&quis=curabitur&tortor=gravida&id=nisi&nulla=at&ultrices=nibh&aliquet=in&maecenas=hac&leo=habitasse&odio=platea&condimentum=dictumst&id=aliquam&luctus=augue&nec=quam&molestie=sollicitudin&sed=vitae&justo=consectetuer&pellentesque=eget&viverra=rutrum&pede=at&ac=lorem&diam=integer&cras=tincidunt&pellentesque=ante');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('6', '26', 'https://slideshare.net/in/est/risus/auctor/sed.png?molestie=in&hendrerit=quam&at=fringilla&vulputate=rhoncus&vitae=mauris&nisl=enim&aenean=leo&lectus=rhoncus&pellentesque=sed&eget=vestibulum&nunc=sit&donec=amet&quis=cursus&orci=id&eget=turpis&orci=integer&vehicula=aliquet&condimentum=massa&curabitur=id&in=lobortis&libero=convallis&ut=tortor&massa=risus&volutpat=dapibus&convallis=augue&morbi=vel&odio=accumsan&odio=tellus&elementum=nisi&eu=eu&interdum=orci&eu=mauris&tincidunt=lacinia&in=sapien&leo=quis&maecenas=libero&pulvinar=nullam&lobortis=sit&est=amet&phasellus=turpis&sit=elementum&amet=ligula&erat=vehicula&nulla=consequat&tempus=morbi&vivamus=a&in=ipsum&felis=integer&eu=a&sapien=nibh&cursus=in&vestibulum=quis&proin=justo&eu=maecenas&mi=rhoncus&nulla=aliquam&ac=lacus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('16', '33', 'https://spiegel.de/lorem/integer/tincidunt/ante/vel/ipsum/praesent.html?tortor=mauris&duis=morbi&mattis=non&egestas=lectus&metus=aliquam&aenean=sit&fermentum=amet&donec=diam&ut=in&mauris=magna&eget=bibendum&massa=imperdiet&tempor=nullam&convallis=orci&nulla=pede&neque=venenatis&libero=non&convallis=sodales&eget=sed&eleifend=tincidunt&luctus=eu&ultricies=felis&eu=fusce&nibh=posuere&quisque=felis&id=sed&justo=lacus&sit=morbi&amet=sem&sapien=mauris&dignissim=laoreet&vestibulum=ut&vestibulum=rhoncus&ante=aliquet&ipsum=pulvinar&primis=sed&in=nisl&faucibus=nunc&orci=rhoncus&luctus=dui&et=vel&ultrices=sem&posuere=sed&cubilia=sagittis&curae=nam&nulla=congue&dapibus=risus&dolor=semper&vel=porta&est=volutpat&donec=quam&odio=pede&justo=lobortis&sollicitudin=ligula&ut=sit&suscipit=amet&a=eleifend&feugiat=pede&et=libero&eros=quis&vestibulum=orci&ac=nullam&est=molestie&lacinia=nibh&nisi=in&venenatis=lectus&tristique=pellentesque&fusce=at&congue=nulla&diam=suspendisse&id=potenti&ornare=cras&imperdiet=in&sapien=purus&urna=eu&pretium=magna&nisl=vulputate&ut=luctus&volutpat=cum&sapien=sociis&arcu=natoque&sed=penatibus&augue=et&aliquam=magnis&erat=dis&volutpat=parturient&in=montes&congue=nascetur&etiam=ridiculus&justo=mus&etiam=vivamus&pretium=vestibulum&iaculis=sagittis&justo=sapien&in=cum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('19', '13', 'http://globo.com/vestibulum/ante/ipsum.js?nisi=morbi&eu=non&orci=lectus&mauris=aliquam&lacinia=sit&sapien=amet&quis=diam&libero=in&nullam=magna&sit=bibendum&amet=imperdiet&turpis=nullam&elementum=orci&ligula=pede&vehicula=venenatis&consequat=non&morbi=sodales&a=sed&ipsum=tincidunt&integer=eu&a=felis&nibh=fusce&in=posuere&quis=felis&justo=sed&maecenas=lacus&rhoncus=morbi&aliquam=sem&lacus=mauris&morbi=laoreet&quis=ut&tortor=rhoncus&id=aliquet&nulla=pulvinar&ultrices=sed&aliquet=nisl&maecenas=nunc&leo=rhoncus&odio=dui&condimentum=vel&id=sem&luctus=sed&nec=sagittis&molestie=nam&sed=congue&justo=risus&pellentesque=semper&viverra=porta&pede=volutpat&ac=quam&diam=pede&cras=lobortis&pellentesque=ligula&volutpat=sit&dui=amet');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('7', '23', 'http://sbwire.com/platea/dictumst/aliquam/augue/quam/sollicitudin.xml?magna=nulla&at=mollis&nunc=molestie&commodo=lorem&placerat=quisque&praesent=ut&blandit=erat&nam=curabitur&nulla=gravida&integer=nisi&pede=at&justo=nibh&lacinia=in&eget=hac&tincidunt=habitasse&eget=platea&tempus=dictumst&vel=aliquam&pede=augue&morbi=quam&porttitor=sollicitudin&lorem=vitae&id=consectetuer&ligula=eget&suspendisse=rutrum&ornare=at&consequat=lorem&lectus=integer&in=tincidunt&est=ante&risus=vel&auctor=ipsum&sed=praesent&tristique=blandit&in=lacinia&tempus=erat&sit=vestibulum&amet=sed&sem=magna&fusce=at&consequat=nunc');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('11', '19', 'http://unicef.org/sapien.aspx?orci=donec&eget=ut&orci=dolor&vehicula=morbi&condimentum=vel&curabitur=lectus&in=in&libero=quam&ut=fringilla&massa=rhoncus&volutpat=mauris&convallis=enim&morbi=leo&odio=rhoncus&odio=sed&elementum=vestibulum&eu=sit&interdum=amet&eu=cursus&tincidunt=id&in=turpis&leo=integer&maecenas=aliquet&pulvinar=massa&lobortis=id&est=lobortis&phasellus=convallis&sit=tortor&amet=risus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('21', '24', 'http://bloglines.com/ut/nulla/sed.js?ut=eget&suscipit=elit&a=sodales&feugiat=scelerisque&et=mauris&eros=sit&vestibulum=amet&ac=eros&est=suspendisse&lacinia=accumsan&nisi=tortor&venenatis=quis&tristique=turpis&fusce=sed&congue=ante&diam=vivamus&id=tortor&ornare=duis&imperdiet=mattis&sapien=egestas&urna=metus&pretium=aenean&nisl=fermentum&ut=donec&volutpat=ut&sapien=mauris&arcu=eget&sed=massa&augue=tempor&aliquam=convallis&erat=nulla&volutpat=neque&in=libero&congue=convallis&etiam=eget&justo=eleifend&etiam=luctus&pretium=ultricies&iaculis=eu&justo=nibh&in=quisque&hac=id');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('36', '18', 'http://nationalgeographic.com/suscipit/ligula/in/lacus/curabitur.jsp?suscipit=vivamus&a=in&feugiat=felis&et=eu&eros=sapien&vestibulum=cursus&ac=vestibulum&est=proin&lacinia=eu&nisi=mi&venenatis=nulla&tristique=ac&fusce=enim&congue=in&diam=tempor&id=turpis&ornare=nec&imperdiet=euismod&sapien=scelerisque&urna=quam&pretium=turpis&nisl=adipiscing&ut=lorem&volutpat=vitae&sapien=mattis&arcu=nibh&sed=ligula&augue=nec&aliquam=sem&erat=duis&volutpat=aliquam&in=convallis&congue=nunc&etiam=proin&justo=at&etiam=turpis&pretium=a&iaculis=pede&justo=posuere&in=nonummy&hac=integer&habitasse=non&platea=velit&dictumst=donec&etiam=diam&faucibus=neque&cursus=vestibulum&urna=eget&ut=vulputate&tellus=ut&nulla=ultrices&ut=vel&erat=augue&id=vestibulum&mauris=ante&vulputate=ipsum&elementum=primis&nullam=in&varius=faucibus&nulla=orci&facilisi=luctus&cras=et&non=ultrices&velit=posuere&nec=cubilia&nisi=curae&vulputate=donec&nonummy=pharetra&maecenas=magna&tincidunt=vestibulum&lacus=aliquet&at=ultrices&velit=erat');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('28', '4', 'https://rakuten.co.jp/lectus/in/quam/fringilla/rhoncus/mauris/enim.png?tempus=ligula&sit=sit&amet=amet&sem=eleifend&fusce=pede&consequat=libero&nulla=quis&nisl=orci&nunc=nullam&nisl=molestie&duis=nibh&bibendum=in&felis=lectus&sed=pellentesque&interdum=at&venenatis=nulla&turpis=suspendisse&enim=potenti&blandit=cras&mi=in&in=purus&porttitor=eu&pede=magna&justo=vulputate&eu=luctus&massa=cum&donec=sociis&dapibus=natoque&duis=penatibus&at=et&velit=magnis&eu=dis&est=parturient&congue=montes&elementum=nascetur&in=ridiculus&hac=mus&habitasse=vivamus&platea=vestibulum&dictumst=sagittis&morbi=sapien&vestibulum=cum&velit=sociis&id=natoque&pretium=penatibus&iaculis=et&diam=magnis&erat=dis&fermentum=parturient&justo=montes&nec=nascetur&condimentum=ridiculus&neque=mus&sapien=etiam&placerat=vel&ante=augue&nulla=vestibulum&justo=rutrum&aliquam=rutrum&quis=neque&turpis=aenean&eget=auctor&elit=gravida&sodales=sem&scelerisque=praesent&mauris=id&sit=massa&amet=id&eros=nisl&suspendisse=venenatis&accumsan=lacinia&tortor=aenean&quis=sit&turpis=amet&sed=justo&ante=morbi&vivamus=ut&tortor=odio&duis=cras&mattis=mi&egestas=pede&metus=malesuada&aenean=in&fermentum=imperdiet&donec=et&ut=commodo&mauris=vulputate&eget=justo&massa=in&tempor=blandit&convallis=ultrices&nulla=enim&neque=lorem&libero=ipsum&convallis=dolor&eget=sit&eleifend=amet&luctus=consectetuer');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('9', '27', 'http://businesswire.com/justo/sit/amet/sapien/dignissim/vestibulum.json?nunc=pretium&rhoncus=quis&dui=lectus&vel=suspendisse&sem=potenti&sed=in&sagittis=eleifend&nam=quam&congue=a&risus=odio&semper=in&porta=hac&volutpat=habitasse&quam=platea&pede=dictumst&lobortis=maecenas&ligula=ut&sit=massa&amet=quis&eleifend=augue&pede=luctus&libero=tincidunt&quis=nulla&orci=mollis&nullam=molestie&molestie=lorem&nibh=quisque&in=ut&lectus=erat&pellentesque=curabitur&at=gravida&nulla=nisi&suspendisse=at&potenti=nibh&cras=in&in=hac&purus=habitasse&eu=platea&magna=dictumst&vulputate=aliquam&luctus=augue&cum=quam&sociis=sollicitudin&natoque=vitae&penatibus=consectetuer&et=eget&magnis=rutrum&dis=at&parturient=lorem&montes=integer');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('1', '31', 'https://hexun.com/lacus/purus/aliquet.jsp?proin=sit&risus=amet&praesent=eros&lectus=suspendisse&vestibulum=accumsan&quam=tortor&sapien=quis&varius=turpis&ut=sed&blandit=ante');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('4', '3', 'https://scientificamerican.com/duis.jsp?proin=est&leo=donec&odio=odio&porttitor=justo&id=sollicitudin&consequat=ut&in=suscipit&consequat=a&ut=feugiat&nulla=et&sed=eros&accumsan=vestibulum&felis=ac&ut=est&at=lacinia&dolor=nisi&quis=venenatis&odio=tristique&consequat=fusce&varius=congue&integer=diam&ac=id&leo=ornare&pellentesque=imperdiet&ultrices=sapien&mattis=urna&odio=pretium&donec=nisl&vitae=ut&nisi=volutpat&nam=sapien&ultrices=arcu&libero=sed&non=augue&mattis=aliquam&pulvinar=erat&nulla=volutpat&pede=in&ullamcorper=congue&augue=etiam&a=justo&suscipit=etiam&nulla=pretium&elit=iaculis&ac=justo&nulla=in&sed=hac&vel=habitasse&enim=platea&sit=dictumst&amet=etiam&nunc=faucibus&viverra=cursus&dapibus=urna&nulla=ut&suscipit=tellus&ligula=nulla&in=ut&lacus=erat&curabitur=id&at=mauris&ipsum=vulputate');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('15', '22', 'https://yahoo.co.jp/justo/nec/condimentum/neque.png?accumsan=lobortis&tortor=sapien&quis=sapien&turpis=non&sed=mi&ante=integer&vivamus=ac&tortor=neque&duis=duis&mattis=bibendum&egestas=morbi&metus=non&aenean=quam&fermentum=nec&donec=dui&ut=luctus&mauris=rutrum&eget=nulla&massa=tellus&tempor=in&convallis=sagittis&nulla=dui&neque=vel&libero=nisl&convallis=duis&eget=ac&eleifend=nibh&luctus=fusce&ultricies=lacus&eu=purus&nibh=aliquet&quisque=at&id=feugiat&justo=non&sit=pretium&amet=quis&sapien=lectus&dignissim=suspendisse&vestibulum=potenti&vestibulum=in&ante=eleifend&ipsum=quam&primis=a&in=odio&faucibus=in&orci=hac&luctus=habitasse&et=platea&ultrices=dictumst&posuere=maecenas&cubilia=ut&curae=massa&nulla=quis&dapibus=augue&dolor=luctus&vel=tincidunt&est=nulla&donec=mollis&odio=molestie&justo=lorem&sollicitudin=quisque&ut=ut&suscipit=erat&a=curabitur&feugiat=gravida&et=nisi&eros=at&vestibulum=nibh&ac=in&est=hac&lacinia=habitasse&nisi=platea&venenatis=dictumst&tristique=aliquam&fusce=augue&congue=quam&diam=sollicitudin&id=vitae&ornare=consectetuer&imperdiet=eget&sapien=rutrum&urna=at&pretium=lorem&nisl=integer&ut=tincidunt&volutpat=ante&sapien=vel&arcu=ipsum&sed=praesent');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('34', '6', 'https://apple.com/commodo/placerat/praesent/blandit/nam/nulla/integer.xml?turpis=quam&eget=sollicitudin&elit=vitae&sodales=consectetuer&scelerisque=eget&mauris=rutrum&sit=at&amet=lorem&eros=integer&suspendisse=tincidunt&accumsan=ante&tortor=vel&quis=ipsum&turpis=praesent&sed=blandit&ante=lacinia&vivamus=erat&tortor=vestibulum&duis=sed&mattis=magna&egestas=at&metus=nunc&aenean=commodo&fermentum=placerat&donec=praesent&ut=blandit&mauris=nam&eget=nulla&massa=integer&tempor=pede&convallis=justo&nulla=lacinia&neque=eget&libero=tincidunt&convallis=eget&eget=tempus&eleifend=vel&luctus=pede&ultricies=morbi&eu=porttitor&nibh=lorem&quisque=id&id=ligula&justo=suspendisse&sit=ornare&amet=consequat&sapien=lectus&dignissim=in&vestibulum=est&vestibulum=risus&ante=auctor&ipsum=sed&primis=tristique&in=in&faucibus=tempus&orci=sit&luctus=amet&et=sem&ultrices=fusce&posuere=consequat&cubilia=nulla&curae=nisl&nulla=nunc&dapibus=nisl&dolor=duis&vel=bibendum&est=felis&donec=sed&odio=interdum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('24', '8', 'http://time.com/lorem/id/ligula/suspendisse/ornare.aspx?dictumst=porttitor');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('3', '32', 'http://virginia.edu/nonummy/maecenas.xml?et=duis&tempus=ac&semper=nibh&est=fusce&quam=lacus&pharetra=purus&magna=aliquet&ac=at&consequat=feugiat&metus=non&sapien=pretium&ut=quis&nunc=lectus&vestibulum=suspendisse&ante=potenti&ipsum=in&primis=eleifend&in=quam&faucibus=a&orci=odio&luctus=in&et=hac&ultrices=habitasse&posuere=platea&cubilia=dictumst&curae=maecenas&mauris=ut&viverra=massa&diam=quis&vitae=augue&quam=luctus&suspendisse=tincidunt&potenti=nulla&nullam=mollis&porttitor=molestie&lacus=lorem&at=quisque&turpis=ut&donec=erat&posuere=curabitur&metus=gravida&vitae=nisi&ipsum=at&aliquam=nibh&non=in&mauris=hac&morbi=habitasse&non=platea&lectus=dictumst&aliquam=aliquam&sit=augue&amet=quam&diam=sollicitudin&in=vitae&magna=consectetuer&bibendum=eget&imperdiet=rutrum&nullam=at&orci=lorem&pede=integer&venenatis=tincidunt&non=ante&sodales=vel&sed=ipsum&tincidunt=praesent&eu=blandit&felis=lacinia&fusce=erat&posuere=vestibulum&felis=sed&sed=magna&lacus=at&morbi=nunc&sem=commodo&mauris=placerat&laoreet=praesent&ut=blandit&rhoncus=nam&aliquet=nulla&pulvinar=integer&sed=pede&nisl=justo&nunc=lacinia&rhoncus=eget&dui=tincidunt&vel=eget&sem=tempus&sed=vel&sagittis=pede&nam=morbi&congue=porttitor&risus=lorem&semper=id&porta=ligula&volutpat=suspendisse&quam=ornare&pede=consequat&lobortis=lectus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('22', '36', 'https://buzzfeed.com/semper/est/quam/pharetra.json?dis=aenean&parturient=lectus&montes=pellentesque&nascetur=eget&ridiculus=nunc&mus=donec&vivamus=quis&vestibulum=orci&sagittis=eget&sapien=orci&cum=vehicula&sociis=condimentum&natoque=curabitur&penatibus=in&et=libero&magnis=ut&dis=massa&parturient=volutpat&montes=convallis&nascetur=morbi&ridiculus=odio&mus=odio&etiam=elementum&vel=eu&augue=interdum&vestibulum=eu&rutrum=tincidunt&rutrum=in&neque=leo&aenean=maecenas&auctor=pulvinar&gravida=lobortis&sem=est&praesent=phasellus&id=sit&massa=amet&id=erat&nisl=nulla&venenatis=tempus&lacinia=vivamus&aenean=in&sit=felis&amet=eu&justo=sapien&morbi=cursus&ut=vestibulum&odio=proin&cras=eu&mi=mi&pede=nulla&malesuada=ac&in=enim&imperdiet=in&et=tempor&commodo=turpis&vulputate=nec&justo=euismod&in=scelerisque&blandit=quam&ultrices=turpis&enim=adipiscing&lorem=lorem&ipsum=vitae&dolor=mattis&sit=nibh&amet=ligula&consectetuer=nec&adipiscing=sem&elit=duis&proin=aliquam&interdum=convallis&mauris=nunc&non=proin&ligula=at&pellentesque=turpis&ultrices=a&phasellus=pede&id=posuere&sapien=nonummy&in=integer&sapien=non&iaculis=velit&congue=donec&vivamus=diam&metus=neque');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('37', '21', 'https://flavors.me/suspendisse/potenti/nullam/porttitor/lacus/at.json?in=mus&est=vivamus&risus=vestibulum&auctor=sagittis&sed=sapien&tristique=cum&in=sociis&tempus=natoque&sit=penatibus&amet=et&sem=magnis&fusce=dis&consequat=parturient&nulla=montes&nisl=nascetur&nunc=ridiculus&nisl=mus&duis=etiam&bibendum=vel&felis=augue&sed=vestibulum&interdum=rutrum&venenatis=rutrum&turpis=neque&enim=aenean&blandit=auctor&mi=gravida&in=sem&porttitor=praesent&pede=id&justo=massa&eu=id&massa=nisl&donec=venenatis&dapibus=lacinia&duis=aenean&at=sit&velit=amet&eu=justo&est=morbi&congue=ut&elementum=odio&in=cras&hac=mi&habitasse=pede&platea=malesuada&dictumst=in&morbi=imperdiet&vestibulum=et&velit=commodo&id=vulputate&pretium=justo&iaculis=in&diam=blandit&erat=ultrices&fermentum=enim&justo=lorem&nec=ipsum&condimentum=dolor&neque=sit&sapien=amet&placerat=consectetuer&ante=adipiscing&nulla=elit&justo=proin&aliquam=interdum&quis=mauris&turpis=non&eget=ligula&elit=pellentesque&sodales=ultrices&scelerisque=phasellus&mauris=id&sit=sapien&amet=in&eros=sapien&suspendisse=iaculis&accumsan=congue&tortor=vivamus&quis=metus&turpis=arcu&sed=adipiscing&ante=molestie&vivamus=hendrerit&tortor=at&duis=vulputate');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('30', '35', 'https://japanpost.jp/justo/maecenas/rhoncus/aliquam.xml?in=rutrum&est=nulla&risus=tellus&auctor=in&sed=sagittis&tristique=dui&in=vel&tempus=nisl&sit=duis&amet=ac&sem=nibh&fusce=fusce&consequat=lacus&nulla=purus&nisl=aliquet&nunc=at&nisl=feugiat&duis=non&bibendum=pretium&felis=quis&sed=lectus&interdum=suspendisse&venenatis=potenti&turpis=in&enim=eleifend&blandit=quam&mi=a&in=odio&porttitor=in&pede=hac&justo=habitasse&eu=platea&massa=dictumst&donec=maecenas&dapibus=ut&duis=massa&at=quis&velit=augue&eu=luctus&est=tincidunt&congue=nulla&elementum=mollis&in=molestie&hac=lorem&habitasse=quisque&platea=ut&dictumst=erat&morbi=curabitur&vestibulum=gravida&velit=nisi&id=at&pretium=nibh&iaculis=in&diam=hac&erat=habitasse&fermentum=platea&justo=dictumst&nec=aliquam&condimentum=augue&neque=quam&sapien=sollicitudin&placerat=vitae&ante=consectetuer&nulla=eget&justo=rutrum&aliquam=at&quis=lorem&turpis=integer&eget=tincidunt&elit=ante&sodales=vel&scelerisque=ipsum&mauris=praesent');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('29', '15', 'https://google.es/nulla/justo/aliquam.jpg?lacus=consectetuer&morbi=adipiscing&sem=elit&mauris=proin&laoreet=interdum&ut=mauris&rhoncus=non&aliquet=ligula&pulvinar=pellentesque&sed=ultrices&nisl=phasellus&nunc=id&rhoncus=sapien&dui=in&vel=sapien&sem=iaculis&sed=congue&sagittis=vivamus&nam=metus&congue=arcu&risus=adipiscing&semper=molestie&porta=hendrerit&volutpat=at&quam=vulputate&pede=vitae&lobortis=nisl&ligula=aenean&sit=lectus&amet=pellentesque&eleifend=eget&pede=nunc&libero=donec&quis=quis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('39', '5', 'http://mozilla.org/tempus/vivamus/in.aspx?volutpat=vulputate&dui=elementum&maecenas=nullam&tristique=varius&est=nulla&et=facilisi&tempus=cras&semper=non&est=velit&quam=nec&pharetra=nisi&magna=vulputate&ac=nonummy&consequat=maecenas&metus=tincidunt&sapien=lacus&ut=at&nunc=velit&vestibulum=vivamus&ante=vel&ipsum=nulla&primis=eget&in=eros&faucibus=elementum&orci=pellentesque&luctus=quisque&et=porta&ultrices=volutpat&posuere=erat&cubilia=quisque&curae=erat&mauris=eros&viverra=viverra&diam=eget&vitae=congue&quam=eget&suspendisse=semper&potenti=rutrum&nullam=nulla&porttitor=nunc&lacus=purus&at=phasellus&turpis=in&donec=felis&posuere=donec&metus=semper&vitae=sapien&ipsum=a&aliquam=libero&non=nam&mauris=dui&morbi=proin');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('27', '14', 'https://deviantart.com/mi/integer/ac/neque/duis/bibendum.js?ac=faucibus&consequat=orci&metus=luctus&sapien=et&ut=ultrices&nunc=posuere&vestibulum=cubilia&ante=curae&ipsum=donec&primis=pharetra&in=magna&faucibus=vestibulum&orci=aliquet&luctus=ultrices&et=erat&ultrices=tortor&posuere=sollicitudin&cubilia=mi&curae=sit&mauris=amet&viverra=lobortis&diam=sapien&vitae=sapien&quam=non&suspendisse=mi&potenti=integer&nullam=ac&porttitor=neque&lacus=duis&at=bibendum&turpis=morbi&donec=non&posuere=quam&metus=nec&vitae=dui&ipsum=luctus&aliquam=rutrum&non=nulla&mauris=tellus&morbi=in&non=sagittis&lectus=dui&aliquam=vel&sit=nisl&amet=duis&diam=ac&in=nibh&magna=fusce&bibendum=lacus&imperdiet=purus&nullam=aliquet&orci=at&pede=feugiat&venenatis=non');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('38', '34', 'http://reverbnation.com/at/velit/vivamus.json?congue=et&etiam=ultrices&justo=posuere&etiam=cubilia&pretium=curae&iaculis=duis&justo=faucibus&in=accumsan&hac=odio&habitasse=curabitur&platea=convallis&dictumst=duis&etiam=consequat&faucibus=dui&cursus=nec&urna=nisi&ut=volutpat&tellus=eleifend&nulla=donec&ut=ut&erat=dolor&id=morbi&mauris=vel&vulputate=lectus&elementum=in&nullam=quam&varius=fringilla&nulla=rhoncus&facilisi=mauris&cras=enim&non=leo&velit=rhoncus&nec=sed&nisi=vestibulum&vulputate=sit&nonummy=amet&maecenas=cursus&tincidunt=id&lacus=turpis&at=integer&velit=aliquet&vivamus=massa&vel=id&nulla=lobortis&eget=convallis&eros=tortor&elementum=risus&pellentesque=dapibus&quisque=augue&porta=vel&volutpat=accumsan&erat=tellus&quisque=nisi&erat=eu&eros=orci&viverra=mauris&eget=lacinia&congue=sapien&eget=quis&semper=libero&rutrum=nullam&nulla=sit&nunc=amet&purus=turpis&phasellus=elementum&in=ligula&felis=vehicula&donec=consequat&semper=morbi&sapien=a&a=ipsum&libero=integer&nam=a&dui=nibh&proin=in&leo=quis&odio=justo&porttitor=maecenas&id=rhoncus&consequat=aliquam&in=lacus&consequat=morbi&ut=quis&nulla=tortor&sed=id&accumsan=nulla&felis=ultrices&ut=aliquet&at=maecenas&dolor=leo&quis=odio&odio=condimentum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('35', '37', 'http://scribd.com/nulla.html?cursus=aliquet&urna=massa&ut=id&tellus=lobortis&nulla=convallis&ut=tortor&erat=risus&id=dapibus&mauris=augue&vulputate=vel&elementum=accumsan&nullam=tellus&varius=nisi&nulla=eu&facilisi=orci&cras=mauris&non=lacinia&velit=sapien&nec=quis&nisi=libero&vulputate=nullam&nonummy=sit&maecenas=amet&tincidunt=turpis&lacus=elementum&at=ligula&velit=vehicula&vivamus=consequat&vel=morbi&nulla=a&eget=ipsum&eros=integer&elementum=a&pellentesque=nibh&quisque=in');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('23', '25', 'http://woothemes.com/vel/augue/vestibulum/rutrum.aspx?ornare=nunc&consequat=donec&lectus=quis&in=orci&est=eget&risus=orci&auctor=vehicula&sed=condimentum&tristique=curabitur&in=in&tempus=libero&sit=ut&amet=massa&sem=volutpat&fusce=convallis&consequat=morbi&nulla=odio&nisl=odio&nunc=elementum&nisl=eu&duis=interdum&bibendum=eu&felis=tincidunt&sed=in&interdum=leo&venenatis=maecenas');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('17', '10', 'http://ox.ac.uk/mi/integer.html?sit=eros&amet=vestibulum&erat=ac&nulla=est&tempus=lacinia&vivamus=nisi&in=venenatis&felis=tristique&eu=fusce&sapien=congue&cursus=diam&vestibulum=id&proin=ornare&eu=imperdiet&mi=sapien&nulla=urna&ac=pretium&enim=nisl&in=ut&tempor=volutpat&turpis=sapien&nec=arcu&euismod=sed&scelerisque=augue&quam=aliquam&turpis=erat&adipiscing=volutpat&lorem=in&vitae=congue&mattis=etiam&nibh=justo&ligula=etiam&nec=pretium&sem=iaculis&duis=justo&aliquam=in&convallis=hac&nunc=habitasse&proin=platea&at=dictumst&turpis=etiam&a=faucibus&pede=cursus&posuere=urna&nonummy=ut&integer=tellus&non=nulla&velit=ut&donec=erat&diam=id&neque=mauris&vestibulum=vulputate&eget=elementum&vulputate=nullam&ut=varius&ultrices=nulla&vel=facilisi&augue=cras&vestibulum=non&ante=velit&ipsum=nec&primis=nisi&in=vulputate&faucibus=nonummy&orci=maecenas&luctus=tincidunt&et=lacus&ultrices=at&posuere=velit&cubilia=vivamus&curae=vel&donec=nulla');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('5', '30', 'https://netscape.com/vestibulum/vestibulum/ante/ipsum/primis/in.aspx?aliquet=neque&ultrices=aenean&erat=auctor&tortor=gravida&sollicitudin=sem&mi=praesent&sit=id&amet=massa&lobortis=id&sapien=nisl&sapien=venenatis&non=lacinia&mi=aenean&integer=sit&ac=amet&neque=justo&duis=morbi&bibendum=ut&morbi=odio&non=cras&quam=mi&nec=pede&dui=malesuada&luctus=in&rutrum=imperdiet&nulla=et&tellus=commodo&in=vulputate&sagittis=justo&dui=in&vel=blandit&nisl=ultrices');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('14', '1', 'http://quantcast.com/amet/lobortis/sapien/sapien.json?sapien=in&non=hac&mi=habitasse&integer=platea&ac=dictumst&neque=morbi&duis=vestibulum&bibendum=velit');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('2', '17', 'http://statcounter.com/in.json?velit=luctus&vivamus=et&vel=ultrices&nulla=posuere&eget=cubilia&eros=curae&elementum=donec&pellentesque=pharetra&quisque=magna&porta=vestibulum&volutpat=aliquet&erat=ultrices&quisque=erat&erat=tortor&eros=sollicitudin&viverra=mi&eget=sit&congue=amet&eget=lobortis&semper=sapien&rutrum=sapien&nulla=non&nunc=mi&purus=integer&phasellus=ac&in=neque&felis=duis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('40', '38', 'https://sina.com.cn/tincidunt/ante/vel/ipsum/praesent/blandit/lacinia.html?consequat=quisque&nulla=id&nisl=justo&nunc=sit&nisl=amet&duis=sapien&bibendum=dignissim&felis=vestibulum&sed=vestibulum&interdum=ante&venenatis=ipsum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('33', '7', 'http://house.gov/nec/dui/luctus.aspx?purus=in&phasellus=hac&in=habitasse&felis=platea&donec=dictumst&semper=etiam&sapien=faucibus&a=cursus&libero=urna&nam=ut&dui=tellus&proin=nulla&leo=ut&odio=erat&porttitor=id&id=mauris&consequat=vulputate&in=elementum&consequat=nullam&ut=varius&nulla=nulla&sed=facilisi&accumsan=cras&felis=non&ut=velit&at=nec&dolor=nisi&quis=vulputate&odio=nonummy&consequat=maecenas&varius=tincidunt&integer=lacus&ac=at&leo=velit&pellentesque=vivamus&ultrices=vel&mattis=nulla&odio=eget&donec=eros&vitae=elementum&nisi=pellentesque&nam=quisque&ultrices=porta&libero=volutpat&non=erat&mattis=quisque&pulvinar=erat&nulla=eros&pede=viverra&ullamcorper=eget&augue=congue&a=eget&suscipit=semper&nulla=rutrum&elit=nulla&ac=nunc&nulla=purus&sed=phasellus&vel=in&enim=felis&sit=donec&amet=semper&nunc=sapien&viverra=a&dapibus=libero&nulla=nam&suscipit=dui&ligula=proin&in=leo&lacus=odio');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('26', '9', 'http://senate.gov/morbi/vel/lectus/in/quam/fringilla/rhoncus.png?duis=ornare&at=consequat&velit=lectus&eu=in&est=est&congue=risus&elementum=auctor&in=sed&hac=tristique&habitasse=in&platea=tempus&dictumst=sit&morbi=amet&vestibulum=sem&velit=fusce&id=consequat&pretium=nulla&iaculis=nisl&diam=nunc&erat=nisl&fermentum=duis&justo=bibendum&nec=felis&condimentum=sed&neque=interdum&sapien=venenatis&placerat=turpis&ante=enim&nulla=blandit&justo=mi&aliquam=in&quis=porttitor&turpis=pede&eget=justo&elit=eu&sodales=massa&scelerisque=donec&mauris=dapibus&sit=duis&amet=at&eros=velit&suspendisse=eu&accumsan=est&tortor=congue&quis=elementum&turpis=in&sed=hac&ante=habitasse&vivamus=platea&tortor=dictumst&duis=morbi&mattis=vestibulum&egestas=velit&metus=id&aenean=pretium&fermentum=iaculis&donec=diam&ut=erat&mauris=fermentum&eget=justo&massa=nec&tempor=condimentum&convallis=neque&nulla=sapien&neque=placerat&libero=ante&convallis=nulla&eget=justo&eleifend=aliquam&luctus=quis&ultricies=turpis&eu=eget&nibh=elit&quisque=sodales&id=scelerisque&justo=mauris&sit=sit&amet=amet&sapien=eros&dignissim=suspendisse&vestibulum=accumsan&vestibulum=tortor&ante=quis&ipsum=turpis&primis=sed&in=ante&faucibus=vivamus&orci=tortor&luctus=duis&et=mattis&ultrices=egestas&posuere=metus&cubilia=aenean&curae=fermentum&nulla=donec&dapibus=ut&dolor=mauris&vel=eget');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('20', '28', 'https://over-blog.com/lobortis/convallis.json?nunc=sit&donec=amet&quis=eleifend&orci=pede&eget=libero&orci=quis&vehicula=orci&condimentum=nullam&curabitur=molestie&in=nibh&libero=in&ut=lectus&massa=pellentesque&volutpat=at&convallis=nulla&morbi=suspendisse&odio=potenti&odio=cras&elementum=in&eu=purus&interdum=eu&eu=magna&tincidunt=vulputate&in=luctus&leo=cum&maecenas=sociis&pulvinar=natoque&lobortis=penatibus&est=et&phasellus=magnis&sit=dis&amet=parturient&erat=montes&nulla=nascetur&tempus=ridiculus&vivamus=mus&in=vivamus&felis=vestibulum&eu=sagittis&sapien=sapien&cursus=cum&vestibulum=sociis&proin=natoque&eu=penatibus&mi=et&nulla=magnis&ac=dis&enim=parturient&in=montes&tempor=nascetur&turpis=ridiculus&nec=mus&euismod=etiam&scelerisque=vel&quam=augue&turpis=vestibulum&adipiscing=rutrum&lorem=rutrum&vitae=neque&mattis=aenean&nibh=auctor&ligula=gravida&nec=sem&sem=praesent&duis=id&aliquam=massa&convallis=id&nunc=nisl&proin=venenatis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('13', '2', 'https://tuttocitta.it/odio.json?cras=pretium&pellentesque=iaculis&volutpat=justo&dui=in&maecenas=hac&tristique=habitasse&est=platea&et=dictumst&tempus=etiam&semper=faucibus&est=cursus&quam=urna&pharetra=ut&magna=tellus&ac=nulla&consequat=ut&metus=erat&sapien=id&ut=mauris&nunc=vulputate&vestibulum=elementum&ante=nullam&ipsum=varius&primis=nulla&in=facilisi&faucibus=cras&orci=non&luctus=velit&et=nec&ultrices=nisi&posuere=vulputate&cubilia=nonummy&curae=maecenas&mauris=tincidunt&viverra=lacus&diam=at&vitae=velit&quam=vivamus&suspendisse=vel&potenti=nulla&nullam=eget&porttitor=eros&lacus=elementum&at=pellentesque&turpis=quisque&donec=porta');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('8', '29', 'https://wikimedia.org/sagittis/dui.aspx?dui=lectus&proin=in&leo=quam&odio=fringilla&porttitor=rhoncus&id=mauris&consequat=enim&in=leo&consequat=rhoncus&ut=sed&nulla=vestibulum&sed=sit&accumsan=amet&felis=cursus&ut=id&at=turpis&dolor=integer&quis=aliquet&odio=massa&consequat=id&varius=lobortis&integer=convallis&ac=tortor&leo=risus&pellentesque=dapibus&ultrices=augue&mattis=vel&odio=accumsan&donec=tellus&vitae=nisi&nisi=eu&nam=orci&ultrices=mauris&libero=lacinia&non=sapien&mattis=quis&pulvinar=libero&nulla=nullam&pede=sit&ullamcorper=amet&augue=turpis&a=elementum&suscipit=ligula&nulla=vehicula&elit=consequat&ac=morbi&nulla=a&sed=ipsum&vel=integer&enim=a&sit=nibh&amet=in&nunc=quis&viverra=justo&dapibus=maecenas&nulla=rhoncus&suscipit=aliquam&ligula=lacus&in=morbi&lacus=quis&curabitur=tortor&at=id&ipsum=nulla&ac=ultrices&tellus=aliquet&semper=maecenas&interdum=leo&mauris=odio&ullamcorper=condimentum&purus=id&sit=luctus&amet=nec&nulla=molestie&quisque=sed&arcu=justo&libero=pellentesque&rutrum=viverra&ac=pede&lobortis=ac&vel=diam&dapibus=cras&at=pellentesque&diam=volutpat&nam=dui&tristique=maecenas&tortor=tristique&eu=est&pede=et');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('25', '40', 'http://cisco.com/tempus.png?nisl=etiam&nunc=justo&rhoncus=etiam&dui=pretium&vel=iaculis&sem=justo&sed=in&sagittis=hac&nam=habitasse&congue=platea&risus=dictumst&semper=etiam&porta=faucibus&volutpat=cursus&quam=urna&pede=ut&lobortis=tellus&ligula=nulla&sit=ut&amet=erat&eleifend=id&pede=mauris&libero=vulputate&quis=elementum&orci=nullam&nullam=varius&molestie=nulla&nibh=facilisi&in=cras&lectus=non&pellentesque=velit&at=nec&nulla=nisi&suspendisse=vulputate&potenti=nonummy&cras=maecenas&in=tincidunt&purus=lacus&eu=at&magna=velit&vulputate=vivamus&luctus=vel&cum=nulla&sociis=eget&natoque=eros&penatibus=elementum&et=pellentesque&magnis=quisque&dis=porta&parturient=volutpat&montes=erat&nascetur=quisque&ridiculus=erat&mus=eros&vivamus=viverra&vestibulum=eget&sagittis=congue&sapien=eget&cum=semper&sociis=rutrum&natoque=nulla&penatibus=nunc&et=purus&magnis=phasellus&dis=in&parturient=felis&montes=donec&nascetur=semper&ridiculus=sapien&mus=a');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('12', '39', 'http://tuttocitta.it/tempus/sit/amet/sem.aspx?metus=placerat&aenean=praesent&fermentum=blandit&donec=nam&ut=nulla&mauris=integer&eget=pede&massa=justo&tempor=lacinia&convallis=eget&nulla=tincidunt&neque=eget&libero=tempus&convallis=vel&eget=pede&eleifend=morbi&luctus=porttitor&ultricies=lorem&eu=id&nibh=ligula&quisque=suspendisse&id=ornare&justo=consequat&sit=lectus&amet=in&sapien=est&dignissim=risus&vestibulum=auctor&vestibulum=sed&ante=tristique&ipsum=in&primis=tempus&in=sit&faucibus=amet&orci=sem&luctus=fusce&et=consequat&ultrices=nulla&posuere=nisl&cubilia=nunc&curae=nisl&nulla=duis&dapibus=bibendum&dolor=felis&vel=sed&est=interdum&donec=venenatis&odio=turpis&justo=enim&sollicitudin=blandit&ut=mi&suscipit=in&a=porttitor&feugiat=pede&et=justo&eros=eu&vestibulum=massa&ac=donec&est=dapibus&lacinia=duis&nisi=at&venenatis=velit&tristique=eu&fusce=est&congue=congue&diam=elementum&id=in&ornare=hac&imperdiet=habitasse&sapien=platea');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('31', '12', 'http://mayoclinic.com/ante.json?eget=sit&tempus=amet&vel=erat&pede=nulla&morbi=tempus&porttitor=vivamus&lorem=in&id=felis&ligula=eu&suspendisse=sapien&ornare=cursus&consequat=vestibulum&lectus=proin&in=eu&est=mi&risus=nulla&auctor=ac');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('32', '16', 'https://discovery.com/in/porttitor/pede/justo.json?in=rhoncus&congue=aliquam&etiam=lacus&justo=morbi&etiam=quis&pretium=tortor&iaculis=id&justo=nulla&in=ultrices&hac=aliquet&habitasse=maecenas&platea=leo&dictumst=odio&etiam=condimentum&faucibus=id&cursus=luctus&urna=nec&ut=molestie&tellus=sed&nulla=justo&ut=pellentesque&erat=viverra&id=pede&mauris=ac&vulputate=diam&elementum=cras&nullam=pellentesque&varius=volutpat&nulla=dui&facilisi=maecenas&cras=tristique&non=est&velit=et&nec=tempus&nisi=semper&vulputate=est&nonummy=quam&maecenas=pharetra&tincidunt=magna&lacus=ac&at=consequat&velit=metus&vivamus=sapien&vel=ut&nulla=nunc&eget=vestibulum&eros=ante&elementum=ipsum&pellentesque=primis&quisque=in&porta=faucibus&volutpat=orci&erat=luctus&quisque=et&erat=ultrices&eros=posuere&viverra=cubilia&eget=curae&congue=mauris&eget=viverra&semper=diam&rutrum=vitae&nulla=quam&nunc=suspendisse&purus=potenti&phasellus=nullam&in=porttitor&felis=lacus&donec=at&semper=turpis&sapien=donec&a=posuere&libero=metus&nam=vitae&dui=ipsum&proin=aliquam&leo=non&odio=mauris&porttitor=morbi&id=non&consequat=lectus&in=aliquam&consequat=sit&ut=amet&nulla=diam&sed=in');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('19', '7', 'https://opensource.org/vestibulum.html?quisque=sed&porta=vel&volutpat=enim&erat=sit&quisque=amet&erat=nunc&eros=viverra&viverra=dapibus&eget=nulla&congue=suscipit&eget=ligula&semper=in&rutrum=lacus&nulla=curabitur&nunc=at&purus=ipsum&phasellus=ac&in=tellus&felis=semper&donec=interdum&semper=mauris&sapien=ullamcorper');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('1', '4', 'http://technorati.com/nulla/dapibus/dolor.jsp?potenti=eros&nullam=suspendisse&porttitor=accumsan&lacus=tortor&at=quis&turpis=turpis&donec=sed&posuere=ante&metus=vivamus&vitae=tortor&ipsum=duis&aliquam=mattis&non=egestas&mauris=metus&morbi=aenean&non=fermentum&lectus=donec&aliquam=ut&sit=mauris&amet=eget&diam=massa&in=tempor&magna=convallis&bibendum=nulla&imperdiet=neque&nullam=libero&orci=convallis&pede=eget&venenatis=eleifend&non=luctus&sodales=ultricies&sed=eu&tincidunt=nibh&eu=quisque&felis=id&fusce=justo&posuere=sit&felis=amet&sed=sapien&lacus=dignissim&morbi=vestibulum&sem=vestibulum&mauris=ante');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('16', '17', 'http://cloudflare.com/suscipit/ligula.jsp?sed=id&vestibulum=luctus&sit=nec&amet=molestie&cursus=sed&id=justo&turpis=pellentesque&integer=viverra&aliquet=pede&massa=ac&id=diam&lobortis=cras&convallis=pellentesque');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('4', '35', 'http://sbwire.com/nec.json?eget=venenatis&massa=turpis&tempor=enim&convallis=blandit&nulla=mi&neque=in&libero=porttitor&convallis=pede&eget=justo&eleifend=eu&luctus=massa&ultricies=donec&eu=dapibus&nibh=duis&quisque=at&id=velit&justo=eu&sit=est&amet=congue&sapien=elementum&dignissim=in&vestibulum=hac&vestibulum=habitasse&ante=platea&ipsum=dictumst&primis=morbi&in=vestibulum&faucibus=velit&orci=id&luctus=pretium&et=iaculis&ultrices=diam&posuere=erat&cubilia=fermentum&curae=justo&nulla=nec&dapibus=condimentum&dolor=neque&vel=sapien&est=placerat');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('26', '19', 'http://nymag.com/dapibus/duis/at/velit/eu/est.js?sapien=risus&non=semper&mi=porta&integer=volutpat&ac=quam&neque=pede&duis=lobortis&bibendum=ligula&morbi=sit&non=amet&quam=eleifend&nec=pede&dui=libero&luctus=quis&rutrum=orci&nulla=nullam&tellus=molestie&in=nibh&sagittis=in&dui=lectus&vel=pellentesque&nisl=at&duis=nulla&ac=suspendisse&nibh=potenti&fusce=cras&lacus=in&purus=purus&aliquet=eu&at=magna&feugiat=vulputate&non=luctus&pretium=cum&quis=sociis&lectus=natoque&suspendisse=penatibus&potenti=et&in=magnis&eleifend=dis&quam=parturient&a=montes&odio=nascetur&in=ridiculus&hac=mus&habitasse=vivamus&platea=vestibulum&dictumst=sagittis&maecenas=sapien&ut=cum&massa=sociis&quis=natoque&augue=penatibus&luctus=et&tincidunt=magnis&nulla=dis&mollis=parturient&molestie=montes&lorem=nascetur&quisque=ridiculus&ut=mus&erat=etiam&curabitur=vel&gravida=augue&nisi=vestibulum&at=rutrum&nibh=rutrum&in=neque&hac=aenean&habitasse=auctor&platea=gravida&dictumst=sem');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('20', '29', 'https://e-recht24.de/est/quam/pharetra.aspx?nec=ut&condimentum=tellus&neque=nulla&sapien=ut&placerat=erat&ante=id&nulla=mauris&justo=vulputate&aliquam=elementum&quis=nullam&turpis=varius&eget=nulla&elit=facilisi&sodales=cras&scelerisque=non&mauris=velit&sit=nec&amet=nisi&eros=vulputate&suspendisse=nonummy&accumsan=maecenas&tortor=tincidunt&quis=lacus&turpis=at&sed=velit&ante=vivamus&vivamus=vel&tortor=nulla&duis=eget&mattis=eros&egestas=elementum&metus=pellentesque&aenean=quisque&fermentum=porta&donec=volutpat&ut=erat&mauris=quisque&eget=erat&massa=eros&tempor=viverra&convallis=eget');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('32', '6', 'http://pinterest.com/praesent.jsp?et=sed&magnis=sagittis&dis=nam&parturient=congue&montes=risus&nascetur=semper&ridiculus=porta&mus=volutpat&vivamus=quam&vestibulum=pede&sagittis=lobortis&sapien=ligula&cum=sit&sociis=amet&natoque=eleifend&penatibus=pede&et=libero&magnis=quis&dis=orci&parturient=nullam&montes=molestie&nascetur=nibh&ridiculus=in&mus=lectus&etiam=pellentesque&vel=at&augue=nulla&vestibulum=suspendisse&rutrum=potenti&rutrum=cras&neque=in&aenean=purus&auctor=eu&gravida=magna&sem=vulputate&praesent=luctus&id=cum&massa=sociis&id=natoque&nisl=penatibus&venenatis=et&lacinia=magnis&aenean=dis&sit=parturient&amet=montes&justo=nascetur&morbi=ridiculus&ut=mus&odio=vivamus&cras=vestibulum&mi=sagittis&pede=sapien&malesuada=cum&in=sociis&imperdiet=natoque&et=penatibus&commodo=et&vulputate=magnis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('30', '11', 'https://craigslist.org/vivamus/vel/nulla.aspx?felis=nibh&donec=ligula&semper=nec&sapien=sem&a=duis&libero=aliquam&nam=convallis&dui=nunc&proin=proin&leo=at&odio=turpis&porttitor=a&id=pede&consequat=posuere&in=nonummy&consequat=integer&ut=non&nulla=velit&sed=donec&accumsan=diam&felis=neque&ut=vestibulum&at=eget&dolor=vulputate&quis=ut&odio=ultrices&consequat=vel&varius=augue&integer=vestibulum&ac=ante&leo=ipsum&pellentesque=primis&ultrices=in&mattis=faucibus&odio=orci&donec=luctus&vitae=et&nisi=ultrices&nam=posuere&ultrices=cubilia&libero=curae&non=donec&mattis=pharetra');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('9', '26', 'https://shutterfly.com/est/congue/elementum/in/hac.xml?quam=aliquet&a=at&odio=feugiat&in=non');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('17', '17', 'http://live.com/aliquet/at/feugiat/non/pretium/quis.png?tempus=nisl&semper=ut&est=volutpat&quam=sapien&pharetra=arcu&magna=sed&ac=augue&consequat=aliquam&metus=erat&sapien=volutpat&ut=in&nunc=congue&vestibulum=etiam&ante=justo&ipsum=etiam&primis=pretium&in=iaculis&faucibus=justo&orci=in&luctus=hac&et=habitasse&ultrices=platea&posuere=dictumst&cubilia=etiam&curae=faucibus&mauris=cursus&viverra=urna&diam=ut&vitae=tellus&quam=nulla&suspendisse=ut&potenti=erat&nullam=id&porttitor=mauris&lacus=vulputate&at=elementum&turpis=nullam&donec=varius&posuere=nulla&metus=facilisi&vitae=cras&ipsum=non&aliquam=velit&non=nec&mauris=nisi&morbi=vulputate&non=nonummy&lectus=maecenas&aliquam=tincidunt&sit=lacus&amet=at&diam=velit&in=vivamus&magna=vel&bibendum=nulla');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('39', '28', 'https://godaddy.com/turpis.jsp?sapien=magna&dignissim=vulputate&vestibulum=luctus&vestibulum=cum&ante=sociis&ipsum=natoque&primis=penatibus&in=et&faucibus=magnis&orci=dis&luctus=parturient&et=montes&ultrices=nascetur&posuere=ridiculus&cubilia=mus&curae=vivamus&nulla=vestibulum&dapibus=sagittis&dolor=sapien&vel=cum&est=sociis&donec=natoque&odio=penatibus&justo=et&sollicitudin=magnis&ut=dis&suscipit=parturient&a=montes&feugiat=nascetur&et=ridiculus&eros=mus&vestibulum=etiam&ac=vel&est=augue&lacinia=vestibulum&nisi=rutrum&venenatis=rutrum&tristique=neque&fusce=aenean&congue=auctor&diam=gravida&id=sem&ornare=praesent&imperdiet=id&sapien=massa&urna=id&pretium=nisl');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('15', '34', 'http://spotify.com/nulla.aspx?velit=elit&donec=ac&diam=nulla&neque=sed&vestibulum=vel&eget=enim&vulputate=sit&ut=amet&ultrices=nunc&vel=viverra&augue=dapibus&vestibulum=nulla');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('36', '21', 'https://wiley.com/sit/amet/cursus/id/turpis.jsp?vel=convallis&nisl=nunc&duis=proin&ac=at&nibh=turpis&fusce=a&lacus=pede&purus=posuere&aliquet=nonummy&at=integer&feugiat=non&non=velit&pretium=donec&quis=diam&lectus=neque&suspendisse=vestibulum&potenti=eget&in=vulputate&eleifend=ut&quam=ultrices&a=vel&odio=augue&in=vestibulum&hac=ante&habitasse=ipsum&platea=primis&dictumst=in');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('31', '14', 'https://miibeian.gov.cn/lectus/suspendisse/potenti/in.jpg?egestas=feugiat&metus=non&aenean=pretium&fermentum=quis&donec=lectus&ut=suspendisse&mauris=potenti&eget=in&massa=eleifend&tempor=quam&convallis=a&nulla=odio&neque=in&libero=hac&convallis=habitasse&eget=platea&eleifend=dictumst&luctus=maecenas&ultricies=ut&eu=massa&nibh=quis&quisque=augue&id=luctus&justo=tincidunt&sit=nulla&amet=mollis&sapien=molestie&dignissim=lorem&vestibulum=quisque&vestibulum=ut&ante=erat&ipsum=curabitur&primis=gravida&in=nisi&faucibus=at&orci=nibh&luctus=in&et=hac&ultrices=habitasse&posuere=platea&cubilia=dictumst&curae=aliquam&nulla=augue&dapibus=quam&dolor=sollicitudin&vel=vitae&est=consectetuer&donec=eget&odio=rutrum&justo=at&sollicitudin=lorem&ut=integer&suscipit=tincidunt&a=ante&feugiat=vel&et=ipsum&eros=praesent&vestibulum=blandit&ac=lacinia&est=erat&lacinia=vestibulum&nisi=sed&venenatis=magna&tristique=at&fusce=nunc&congue=commodo&diam=placerat&id=praesent&ornare=blandit&imperdiet=nam&sapien=nulla&urna=integer&pretium=pede&nisl=justo&ut=lacinia&volutpat=eget&sapien=tincidunt&arcu=eget&sed=tempus&augue=vel&aliquam=pede&erat=morbi&volutpat=porttitor&in=lorem&congue=id&etiam=ligula&justo=suspendisse&etiam=ornare&pretium=consequat&iaculis=lectus&justo=in&in=est&hac=risus&habitasse=auctor&platea=sed&dictumst=tristique');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('8', '38', 'https://g.co/pede.json?erat=nulla&curabitur=integer&gravida=pede&nisi=justo&at=lacinia&nibh=eget&in=tincidunt&hac=eget&habitasse=tempus&platea=vel&dictumst=pede&aliquam=morbi&augue=porttitor&quam=lorem');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('38', '12', 'https://google.cn/orci/luctus/et/ultrices/posuere/cubilia/curae.jpg?vitae=enim&ipsum=sit&aliquam=amet&non=nunc&mauris=viverra&morbi=dapibus&non=nulla&lectus=suscipit&aliquam=ligula');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('11', '40', 'https://nih.gov/tempus/sit/amet/sem/fusce/consequat/nulla.json?lacinia=sollicitudin&aenean=mi&sit=sit&amet=amet&justo=lobortis&morbi=sapien&ut=sapien&odio=non&cras=mi&mi=integer&pede=ac&malesuada=neque&in=duis&imperdiet=bibendum&et=morbi&commodo=non&vulputate=quam&justo=nec&in=dui&blandit=luctus&ultrices=rutrum&enim=nulla&lorem=tellus&ipsum=in&dolor=sagittis&sit=dui&amet=vel&consectetuer=nisl&adipiscing=duis&elit=ac&proin=nibh&interdum=fusce&mauris=lacus&non=purus&ligula=aliquet&pellentesque=at&ultrices=feugiat&phasellus=non&id=pretium&sapien=quis&in=lectus&sapien=suspendisse&iaculis=potenti&congue=in&vivamus=eleifend&metus=quam&arcu=a&adipiscing=odio&molestie=in&hendrerit=hac&at=habitasse&vulputate=platea&vitae=dictumst&nisl=maecenas&aenean=ut&lectus=massa&pellentesque=quis&eget=augue&nunc=luctus&donec=tincidunt&quis=nulla&orci=mollis&eget=molestie&orci=lorem&vehicula=quisque&condimentum=ut');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('14', '16', 'http://yandex.ru/vestibulum/rutrum/rutrum/neque/aenean.html?curae=enim&duis=leo&faucibus=rhoncus&accumsan=sed&odio=vestibulum&curabitur=sit&convallis=amet&duis=cursus&consequat=id&dui=turpis&nec=integer&nisi=aliquet&volutpat=massa&eleifend=id&donec=lobortis&ut=convallis&dolor=tortor&morbi=risus&vel=dapibus&lectus=augue&in=vel&quam=accumsan&fringilla=tellus&rhoncus=nisi&mauris=eu&enim=orci&leo=mauris&rhoncus=lacinia&sed=sapien&vestibulum=quis&sit=libero&amet=nullam&cursus=sit&id=amet&turpis=turpis&integer=elementum&aliquet=ligula&massa=vehicula&id=consequat&lobortis=morbi&convallis=a&tortor=ipsum&risus=integer&dapibus=a&augue=nibh&vel=in&accumsan=quis&tellus=justo&nisi=maecenas&eu=rhoncus&orci=aliquam&mauris=lacus&lacinia=morbi&sapien=quis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('7', '25', 'http://artisteer.com/ridiculus/mus/vivamus/vestibulum/sagittis.html?quis=lorem&orci=id&eget=ligula&orci=suspendisse&vehicula=ornare&condimentum=consequat&curabitur=lectus&in=in&libero=est&ut=risus&massa=auctor&volutpat=sed&convallis=tristique&morbi=in&odio=tempus&odio=sit&elementum=amet&eu=sem&interdum=fusce&eu=consequat&tincidunt=nulla&in=nisl&leo=nunc&maecenas=nisl&pulvinar=duis&lobortis=bibendum&est=felis&phasellus=sed&sit=interdum&amet=venenatis&erat=turpis&nulla=enim&tempus=blandit&vivamus=mi&in=in&felis=porttitor&eu=pede&sapien=justo&cursus=eu&vestibulum=massa&proin=donec&eu=dapibus&mi=duis&nulla=at&ac=velit&enim=eu&in=est&tempor=congue&turpis=elementum&nec=in&euismod=hac&scelerisque=habitasse&quam=platea&turpis=dictumst&adipiscing=morbi&lorem=vestibulum&vitae=velit&mattis=id&nibh=pretium&ligula=iaculis&nec=diam&sem=erat&duis=fermentum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('28', '20', 'http://yahoo.com/sapien/varius.aspx?risus=ut&dapibus=nunc&augue=vestibulum&vel=ante&accumsan=ipsum&tellus=primis&nisi=in&eu=faucibus&orci=orci&mauris=luctus&lacinia=et&sapien=ultrices&quis=posuere&libero=cubilia&nullam=curae&sit=mauris&amet=viverra&turpis=diam&elementum=vitae&ligula=quam&vehicula=suspendisse&consequat=potenti&morbi=nullam&a=porttitor&ipsum=lacus&integer=at&a=turpis&nibh=donec&in=posuere&quis=metus&justo=vitae&maecenas=ipsum&rhoncus=aliquam&aliquam=non&lacus=mauris&morbi=morbi&quis=non&tortor=lectus&id=aliquam&nulla=sit&ultrices=amet&aliquet=diam&maecenas=in&leo=magna&odio=bibendum&condimentum=imperdiet&id=nullam&luctus=orci&nec=pede&molestie=venenatis&sed=non&justo=sodales&pellentesque=sed&viverra=tincidunt&pede=eu&ac=felis&diam=fusce&cras=posuere&pellentesque=felis&volutpat=sed&dui=lacus&maecenas=morbi&tristique=sem&est=mauris&et=laoreet&tempus=ut&semper=rhoncus&est=aliquet&quam=pulvinar&pharetra=sed&magna=nisl&ac=nunc&consequat=rhoncus&metus=dui&sapien=vel&ut=sem&nunc=sed&vestibulum=sagittis&ante=nam&ipsum=congue&primis=risus&in=semper&faucibus=porta&orci=volutpat&luctus=quam&et=pede&ultrices=lobortis&posuere=ligula&cubilia=sit&curae=amet&mauris=eleifend');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('34', '32', 'http://spiegel.de/cubilia/curae/donec/pharetra/magna/vestibulum.xml?vel=eros&sem=suspendisse&sed=accumsan&sagittis=tortor&nam=quis&congue=turpis&risus=sed&semper=ante');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('40', '8', 'http://columbia.edu/curae.png?et=at&magnis=turpis&dis=donec');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('5', '36', 'https://prweb.com/massa/quis/augue/luctus/tincidunt.jsp?id=mattis&lobortis=pulvinar&convallis=nulla&tortor=pede&risus=ullamcorper&dapibus=augue&augue=a&vel=suscipit&accumsan=nulla&tellus=elit&nisi=ac&eu=nulla&orci=sed&mauris=vel&lacinia=enim&sapien=sit&quis=amet&libero=nunc&nullam=viverra&sit=dapibus&amet=nulla&turpis=suscipit&elementum=ligula&ligula=in&vehicula=lacus&consequat=curabitur&morbi=at&a=ipsum&ipsum=ac&integer=tellus&a=semper&nibh=interdum&in=mauris&quis=ullamcorper&justo=purus&maecenas=sit&rhoncus=amet&aliquam=nulla&lacus=quisque&morbi=arcu&quis=libero&tortor=rutrum&id=ac&nulla=lobortis&ultrices=vel&aliquet=dapibus&maecenas=at&leo=diam&odio=nam');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('13', '39', 'https://wsj.com/in/quis/justo.json?pede=sed&morbi=vestibulum&porttitor=sit&lorem=amet&id=cursus&ligula=id&suspendisse=turpis&ornare=integer&consequat=aliquet&lectus=massa&in=id&est=lobortis&risus=convallis&auctor=tortor&sed=risus&tristique=dapibus&in=augue&tempus=vel&sit=accumsan&amet=tellus&sem=nisi&fusce=eu&consequat=orci&nulla=mauris&nisl=lacinia&nunc=sapien&nisl=quis&duis=libero&bibendum=nullam&felis=sit&sed=amet&interdum=turpis&venenatis=elementum&turpis=ligula&enim=vehicula&blandit=consequat&mi=morbi&in=a&porttitor=ipsum&pede=integer&justo=a&eu=nibh&massa=in&donec=quis&dapibus=justo&duis=maecenas&at=rhoncus&velit=aliquam&eu=lacus&est=morbi&congue=quis&elementum=tortor&in=id&hac=nulla&habitasse=ultrices&platea=aliquet&dictumst=maecenas&morbi=leo&vestibulum=odio&velit=condimentum&id=id&pretium=luctus&iaculis=nec&diam=molestie&erat=sed&fermentum=justo&justo=pellentesque&nec=viverra&condimentum=pede&neque=ac&sapien=diam&placerat=cras');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('35', '22', 'https://about.com/blandit/mi/in/porttitor/pede.html?ultrices=vestibulum&enim=proin&lorem=eu&ipsum=mi&dolor=nulla&sit=ac&amet=enim&consectetuer=in&adipiscing=tempor&elit=turpis&proin=nec&interdum=euismod&mauris=scelerisque&non=quam&ligula=turpis&pellentesque=adipiscing&ultrices=lorem&phasellus=vitae&id=mattis&sapien=nibh&in=ligula&sapien=nec&iaculis=sem&congue=duis&vivamus=aliquam&metus=convallis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('23', '23', 'https://odnoklassniki.ru/cras/non/velit/nec/nisi.xml?tellus=duis&nisi=consequat&eu=dui&orci=nec&mauris=nisi&lacinia=volutpat&sapien=eleifend&quis=donec&libero=ut&nullam=dolor&sit=morbi&amet=vel&turpis=lectus&elementum=in&ligula=quam&vehicula=fringilla&consequat=rhoncus&morbi=mauris&a=enim&ipsum=leo&integer=rhoncus&a=sed&nibh=vestibulum&in=sit&quis=amet&justo=cursus&maecenas=id&rhoncus=turpis&aliquam=integer&lacus=aliquet&morbi=massa&quis=id&tortor=lobortis&id=convallis&nulla=tortor&ultrices=risus&aliquet=dapibus&maecenas=augue&leo=vel&odio=accumsan&condimentum=tellus&id=nisi&luctus=eu&nec=orci&molestie=mauris&sed=lacinia&justo=sapien&pellentesque=quis&viverra=libero&pede=nullam&ac=sit&diam=amet&cras=turpis&pellentesque=elementum&volutpat=ligula&dui=vehicula&maecenas=consequat&tristique=morbi&est=a&et=ipsum&tempus=integer&semper=a&est=nibh&quam=in&pharetra=quis&magna=justo&ac=maecenas&consequat=rhoncus&metus=aliquam&sapien=lacus&ut=morbi&nunc=quis&vestibulum=tortor&ante=id&ipsum=nulla&primis=ultrices&in=aliquet&faucibus=maecenas&orci=leo&luctus=odio&et=condimentum&ultrices=id&posuere=luctus&cubilia=nec&curae=molestie&mauris=sed&viverra=justo&diam=pellentesque&vitae=viverra&quam=pede&suspendisse=ac&potenti=diam');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('6', '9', 'https://home.pl/nulla.jsp?ut=dui&blandit=nec&non=nisi&interdum=volutpat&in=eleifend&ante=donec&vestibulum=ut&ante=dolor&ipsum=morbi&primis=vel&in=lectus&faucibus=in&orci=quam&luctus=fringilla&et=rhoncus&ultrices=mauris&posuere=enim&cubilia=leo&curae=rhoncus&duis=sed&faucibus=vestibulum&accumsan=sit&odio=amet&curabitur=cursus&convallis=id&duis=turpis&consequat=integer&dui=aliquet&nec=massa&nisi=id&volutpat=lobortis&eleifend=convallis&donec=tortor&ut=risus&dolor=dapibus&morbi=augue&vel=vel&lectus=accumsan&in=tellus&quam=nisi&fringilla=eu&rhoncus=orci&mauris=mauris&enim=lacinia&leo=sapien&rhoncus=quis&sed=libero&vestibulum=nullam&sit=sit&amet=amet&cursus=turpis&id=elementum&turpis=ligula&integer=vehicula&aliquet=consequat&massa=morbi&id=a&lobortis=ipsum&convallis=integer&tortor=a&risus=nibh&dapibus=in&augue=quis&vel=justo&accumsan=maecenas&tellus=rhoncus&nisi=aliquam&eu=lacus&orci=morbi&mauris=quis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('27', '3', 'http://shareasale.com/congue/etiam/justo/etiam/pretium/iaculis.xml?eros=maecenas&viverra=rhoncus&eget=aliquam&congue=lacus&eget=morbi&semper=quis&rutrum=tortor&nulla=id&nunc=nulla&purus=ultrices&phasellus=aliquet&in=maecenas&felis=leo&donec=odio&semper=condimentum&sapien=id&a=luctus&libero=nec&nam=molestie&dui=sed&proin=justo&leo=pellentesque&odio=viverra&porttitor=pede&id=ac&consequat=diam&in=cras&consequat=pellentesque&ut=volutpat&nulla=dui&sed=maecenas&accumsan=tristique&felis=est');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('3', '18', 'https://hc360.com/hac.js?urna=vestibulum&pretium=eget&nisl=vulputate&ut=ut&volutpat=ultrices&sapien=vel&arcu=augue&sed=vestibulum&augue=ante&aliquam=ipsum&erat=primis&volutpat=in&in=faucibus&congue=orci&etiam=luctus&justo=et&etiam=ultrices&pretium=posuere&iaculis=cubilia&justo=curae&in=donec&hac=pharetra&habitasse=magna&platea=vestibulum&dictumst=aliquet&etiam=ultrices&faucibus=erat&cursus=tortor&urna=sollicitudin&ut=mi&tellus=sit&nulla=amet&ut=lobortis&erat=sapien&id=sapien&mauris=non&vulputate=mi&elementum=integer&nullam=ac&varius=neque&nulla=duis&facilisi=bibendum&cras=morbi&non=non&velit=quam&nec=nec&nisi=dui&vulputate=luctus&nonummy=rutrum&maecenas=nulla&tincidunt=tellus&lacus=in&at=sagittis&velit=dui&vivamus=vel&vel=nisl&nulla=duis&eget=ac&eros=nibh&elementum=fusce&pellentesque=lacus&quisque=purus&porta=aliquet&volutpat=at&erat=feugiat&quisque=non&erat=pretium&eros=quis&viverra=lectus&eget=suspendisse&congue=potenti&eget=in&semper=eleifend&rutrum=quam&nulla=a&nunc=odio&purus=in&phasellus=hac&in=habitasse&felis=platea&donec=dictumst&semper=maecenas&sapien=ut&a=massa&libero=quis&nam=augue&dui=luctus&proin=tincidunt&leo=nulla&odio=mollis&porttitor=molestie&id=lorem&consequat=quisque&in=ut&consequat=erat');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('37', '27', 'http://over-blog.com/amet/lobortis/sapien/sapien/non/mi/integer.json?at=id&dolor=ornare&quis=imperdiet&odio=sapien&consequat=urna&varius=pretium&integer=nisl&ac=ut&leo=volutpat&pellentesque=sapien&ultrices=arcu&mattis=sed&odio=augue&donec=aliquam&vitae=erat&nisi=volutpat&nam=in&ultrices=congue&libero=etiam&non=justo&mattis=etiam&pulvinar=pretium&nulla=iaculis&pede=justo&ullamcorper=in&augue=hac&a=habitasse&suscipit=platea&nulla=dictumst&elit=etiam&ac=faucibus&nulla=cursus&sed=urna&vel=ut&enim=tellus&sit=nulla&amet=ut&nunc=erat&viverra=id&dapibus=mauris&nulla=vulputate&suscipit=elementum&ligula=nullam&in=varius&lacus=nulla&curabitur=facilisi&at=cras&ipsum=non');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('33', '24', 'http://engadget.com/congue/elementum/in/hac/habitasse.aspx?vestibulum=mauris&aliquet=morbi&ultrices=non&erat=lectus&tortor=aliquam&sollicitudin=sit&mi=amet&sit=diam&amet=in&lobortis=magna&sapien=bibendum&sapien=imperdiet&non=nullam&mi=orci&integer=pede&ac=venenatis&neque=non&duis=sodales&bibendum=sed&morbi=tincidunt&non=eu&quam=felis&nec=fusce&dui=posuere&luctus=felis&rutrum=sed&nulla=lacus&tellus=morbi&in=sem&sagittis=mauris&dui=laoreet&vel=ut&nisl=rhoncus&duis=aliquet&ac=pulvinar&nibh=sed&fusce=nisl&lacus=nunc&purus=rhoncus&aliquet=dui&at=vel&feugiat=sem&non=sed&pretium=sagittis&quis=nam&lectus=congue&suspendisse=risus&potenti=semper&in=porta&eleifend=volutpat&quam=quam&a=pede&odio=lobortis&in=ligula&hac=sit&habitasse=amet&platea=eleifend&dictumst=pede&maecenas=libero&ut=quis&massa=orci&quis=nullam&augue=molestie&luctus=nibh&tincidunt=in&nulla=lectus&mollis=pellentesque&molestie=at&lorem=nulla&quisque=suspendisse&ut=potenti&erat=cras&curabitur=in&gravida=purus&nisi=eu&at=magna&nibh=vulputate&in=luctus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('22', '37', 'https://phoca.cz/lectus/pellentesque/eget.html?maecenas=a&rhoncus=libero&aliquam=nam&lacus=dui&morbi=proin&quis=leo&tortor=odio&id=porttitor&nulla=id');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('25', '31', 'https://naver.com/et/ultrices/posuere/cubilia/curae/donec/pharetra.jsp?orci=felis&luctus=sed&et=interdum&ultrices=venenatis&posuere=turpis&cubilia=enim&curae=blandit&mauris=mi&viverra=in&diam=porttitor&vitae=pede&quam=justo&suspendisse=eu&potenti=massa&nullam=donec&porttitor=dapibus&lacus=duis&at=at&turpis=velit&donec=eu&posuere=est&metus=congue&vitae=elementum&ipsum=in&aliquam=hac&non=habitasse&mauris=platea&morbi=dictumst&non=morbi&lectus=vestibulum&aliquam=velit&sit=id&amet=pretium&diam=iaculis&in=diam&magna=erat&bibendum=fermentum&imperdiet=justo&nullam=nec&orci=condimentum&pede=neque&venenatis=sapien&non=placerat&sodales=ante&sed=nulla&tincidunt=justo&eu=aliquam&felis=quis&fusce=turpis&posuere=eget&felis=elit&sed=sodales&lacus=scelerisque&morbi=mauris&sem=sit&mauris=amet&laoreet=eros&ut=suspendisse&rhoncus=accumsan&aliquet=tortor&pulvinar=quis&sed=turpis&nisl=sed&nunc=ante&rhoncus=vivamus&dui=tortor&vel=duis&sem=mattis&sed=egestas&sagittis=metus&nam=aenean&congue=fermentum&risus=donec&semper=ut');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('2', '2', 'https://printfriendly.com/amet/justo/morbi.json?sollicitudin=vivamus&ut=metus&suscipit=arcu&a=adipiscing&feugiat=molestie&et=hendrerit&eros=at&vestibulum=vulputate&ac=vitae&est=nisl&lacinia=aenean&nisi=lectus&venenatis=pellentesque&tristique=eget&fusce=nunc&congue=donec&diam=quis&id=orci&ornare=eget&imperdiet=orci&sapien=vehicula&urna=condimentum&pretium=curabitur&nisl=in&ut=libero&volutpat=ut&sapien=massa&arcu=volutpat&sed=convallis&augue=morbi&aliquam=odio&erat=odio&volutpat=elementum&in=eu&congue=interdum&etiam=eu&justo=tincidunt&etiam=in&pretium=leo&iaculis=maecenas&justo=pulvinar&in=lobortis&hac=est&habitasse=phasellus&platea=sit&dictumst=amet&etiam=erat&faucibus=nulla&cursus=tempus&urna=vivamus&ut=in&tellus=felis&nulla=eu&ut=sapien&erat=cursus&id=vestibulum&mauris=proin&vulputate=eu&elementum=mi&nullam=nulla&varius=ac&nulla=enim&facilisi=in&cras=tempor&non=turpis&velit=nec&nec=euismod&nisi=scelerisque&vulputate=quam&nonummy=turpis&maecenas=adipiscing&tincidunt=lorem&lacus=vitae&at=mattis&velit=nibh&vivamus=ligula&vel=nec&nulla=sem&eget=duis&eros=aliquam&elementum=convallis&pellentesque=nunc&quisque=proin&porta=at&volutpat=turpis&erat=a&quisque=pede&erat=posuere&eros=nonummy&viverra=integer');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('10', '13', 'https://gizmodo.com/orci.jsp?vulputate=duis&ut=ac&ultrices=nibh&vel=fusce&augue=lacus&vestibulum=purus&ante=aliquet&ipsum=at&primis=feugiat&in=non&faucibus=pretium&orci=quis&luctus=lectus&et=suspendisse');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('21', '1', 'https://newsvine.com/vel/ipsum/praesent/blandit/lacinia.json?lobortis=nulla&convallis=mollis&tortor=molestie&risus=lorem&dapibus=quisque&augue=ut');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('12', '5', 'https://tinypic.com/in/quam/fringilla.jpg?vestibulum=felis&vestibulum=eu&ante=sapien&ipsum=cursus&primis=vestibulum&in=proin&faucibus=eu&orci=mi&luctus=nulla&et=ac&ultrices=enim&posuere=in&cubilia=tempor&curae=turpis&nulla=nec&dapibus=euismod&dolor=scelerisque&vel=quam&est=turpis&donec=adipiscing&odio=lorem&justo=vitae&sollicitudin=mattis&ut=nibh&suscipit=ligula&a=nec&feugiat=sem&et=duis&eros=aliquam&vestibulum=convallis&ac=nunc&est=proin&lacinia=at&nisi=turpis&venenatis=a&tristique=pede&fusce=posuere&congue=nonummy&diam=integer&id=non&ornare=velit&imperdiet=donec&sapien=diam&urna=neque&pretium=vestibulum&nisl=eget&ut=vulputate&volutpat=ut&sapien=ultrices&arcu=vel&sed=augue&augue=vestibulum&aliquam=ante&erat=ipsum&volutpat=primis&in=in&congue=faucibus&etiam=orci&justo=luctus&etiam=et&pretium=ultrices&iaculis=posuere&justo=cubilia&in=curae&hac=donec&habitasse=pharetra&platea=magna&dictumst=vestibulum&etiam=aliquet&faucibus=ultrices&cursus=erat&urna=tortor&ut=sollicitudin&tellus=mi&nulla=sit&ut=amet&erat=lobortis&id=sapien&mauris=sapien&vulputate=non&elementum=mi&nullam=integer&varius=ac&nulla=neque&facilisi=duis&cras=bibendum&non=morbi&velit=non&nec=quam&nisi=nec&vulputate=dui&nonummy=luctus&maecenas=rutrum&tincidunt=nulla&lacus=tellus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('29', '13', 'http://amazon.com/sed/accumsan/felis/ut/at/dolor/quis.png?nulla=mi&tellus=nulla&in=ac&sagittis=enim&dui=in&vel=tempor&nisl=turpis&duis=nec&ac=euismod&nibh=scelerisque&fusce=quam&lacus=turpis&purus=adipiscing&aliquet=lorem&at=vitae&feugiat=mattis&non=nibh&pretium=ligula&quis=nec&lectus=sem&suspendisse=duis&potenti=aliquam&in=convallis&eleifend=nunc&quam=proin&a=at&odio=turpis&in=a&hac=pede&habitasse=posuere&platea=nonummy&dictumst=integer&maecenas=non&ut=velit&massa=donec&quis=diam&augue=neque&luctus=vestibulum&tincidunt=eget&nulla=vulputate&mollis=ut&molestie=ultrices&lorem=vel&quisque=augue&ut=vestibulum&erat=ante&curabitur=ipsum&gravida=primis&nisi=in&at=faucibus&nibh=orci&in=luctus&hac=et&habitasse=ultrices&platea=posuere&dictumst=cubilia&aliquam=curae&augue=donec&quam=pharetra&sollicitudin=magna&vitae=vestibulum&consectetuer=aliquet&eget=ultrices&rutrum=erat&at=tortor&lorem=sollicitudin&integer=mi&tincidunt=sit&ante=amet&vel=lobortis&ipsum=sapien&praesent=sapien&blandit=non&lacinia=mi&erat=integer&vestibulum=ac&sed=neque&magna=duis&at=bibendum&nunc=morbi&commodo=non&placerat=quam&praesent=nec&blandit=dui&nam=luctus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('18', '33', 'https://tinypic.com/sapien/quis/libero/nullam.png?congue=tortor&eget=quis&semper=turpis&rutrum=sed&nulla=ante&nunc=vivamus&purus=tortor&phasellus=duis&in=mattis&felis=egestas');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('24', '30', 'https://google.ca/nullam/porttitor/lacus/at/turpis/donec/posuere.js?cursus=consequat&urna=morbi&ut=a&tellus=ipsum&nulla=integer&ut=a&erat=nibh&id=in&mauris=quis&vulputate=justo&elementum=maecenas&nullam=rhoncus&varius=aliquam&nulla=lacus&facilisi=morbi&cras=quis&non=tortor&velit=id&nec=nulla&nisi=ultrices&vulputate=aliquet&nonummy=maecenas&maecenas=leo&tincidunt=odio&lacus=condimentum&at=id&velit=luctus&vivamus=nec&vel=molestie&nulla=sed&eget=justo&eros=pellentesque&elementum=viverra&pellentesque=pede&quisque=ac&porta=diam&volutpat=cras&erat=pellentesque&quisque=volutpat&erat=dui&eros=maecenas&viverra=tristique&eget=est&congue=et&eget=tempus&semper=semper&rutrum=est&nulla=quam&nunc=pharetra&purus=magna&phasellus=ac&in=consequat&felis=metus&donec=sapien&semper=ut&sapien=nunc&a=vestibulum&libero=ante&nam=ipsum&dui=primis&proin=in&leo=faucibus&odio=orci&porttitor=luctus&id=et&consequat=ultrices&in=posuere&consequat=cubilia&ut=curae&nulla=mauris&sed=viverra&accumsan=diam&felis=vitae&ut=quam&at=suspendisse&dolor=potenti&quis=nullam&odio=porttitor&consequat=lacus&varius=at&integer=turpis&ac=donec&leo=posuere&pellentesque=metus&ultrices=vitae&mattis=ipsum&odio=aliquam&donec=non&vitae=mauris&nisi=morbi&nam=non&ultrices=lectus&libero=aliquam');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('22', '24', 'http://google.com.br/faucibus/orci/luctus/et.js?sed=tincidunt&magna=eu&at=felis&nunc=fusce&commodo=posuere&placerat=felis&praesent=sed&blandit=lacus&nam=morbi&nulla=sem&integer=mauris&pede=laoreet&justo=ut&lacinia=rhoncus&eget=aliquet&tincidunt=pulvinar&eget=sed&tempus=nisl&vel=nunc&pede=rhoncus&morbi=dui&porttitor=vel&lorem=sem&id=sed&ligula=sagittis&suspendisse=nam&ornare=congue&consequat=risus&lectus=semper&in=porta&est=volutpat&risus=quam&auctor=pede&sed=lobortis&tristique=ligula&in=sit&tempus=amet&sit=eleifend&amet=pede&sem=libero&fusce=quis&consequat=orci&nulla=nullam&nisl=molestie&nunc=nibh&nisl=in&duis=lectus&bibendum=pellentesque&felis=at&sed=nulla&interdum=suspendisse&venenatis=potenti&turpis=cras&enim=in&blandit=purus&mi=eu&in=magna&porttitor=vulputate');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('15', '37', 'http://miitbeian.gov.cn/id/nisl/venenatis/lacinia.js?faucibus=ante&cursus=nulla&urna=justo&ut=aliquam&tellus=quis&nulla=turpis&ut=eget&erat=elit&id=sodales&mauris=scelerisque&vulputate=mauris&elementum=sit&nullam=amet&varius=eros&nulla=suspendisse&facilisi=accumsan&cras=tortor&non=quis&velit=turpis&nec=sed&nisi=ante&vulputate=vivamus&nonummy=tortor&maecenas=duis&tincidunt=mattis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('32', '17', 'https://dell.com/maecenas/tristique/est/et.xml?sit=metus&amet=aenean&lobortis=fermentum&sapien=donec&sapien=ut&non=mauris&mi=eget&integer=massa&ac=tempor&neque=convallis&duis=nulla&bibendum=neque&morbi=libero&non=convallis&quam=eget&nec=eleifend&dui=luctus&luctus=ultricies&rutrum=eu&nulla=nibh&tellus=quisque&in=id&sagittis=justo&dui=sit&vel=amet&nisl=sapien&duis=dignissim&ac=vestibulum&nibh=vestibulum&fusce=ante&lacus=ipsum&purus=primis&aliquet=in&at=faucibus&feugiat=orci&non=luctus&pretium=et&quis=ultrices&lectus=posuere&suspendisse=cubilia&potenti=curae&in=nulla&eleifend=dapibus&quam=dolor&a=vel&odio=est&in=donec&hac=odio&habitasse=justo&platea=sollicitudin&dictumst=ut&maecenas=suscipit&ut=a&massa=feugiat&quis=et&augue=eros&luctus=vestibulum&tincidunt=ac&nulla=est&mollis=lacinia');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('3', '4', 'https://sitemeter.com/faucibus.html?sapien=mauris&non=non&mi=ligula&integer=pellentesque&ac=ultrices&neque=phasellus&duis=id&bibendum=sapien&morbi=in&non=sapien&quam=iaculis&nec=congue&dui=vivamus&luctus=metus&rutrum=arcu&nulla=adipiscing&tellus=molestie&in=hendrerit&sagittis=at&dui=vulputate&vel=vitae&nisl=nisl&duis=aenean&ac=lectus&nibh=pellentesque&fusce=eget&lacus=nunc&purus=donec&aliquet=quis&at=orci&feugiat=eget&non=orci&pretium=vehicula&quis=condimentum&lectus=curabitur&suspendisse=in&potenti=libero&in=ut&eleifend=massa&quam=volutpat&a=convallis&odio=morbi&in=odio&hac=odio&habitasse=elementum&platea=eu&dictumst=interdum&maecenas=eu&ut=tincidunt&massa=in&quis=leo&augue=maecenas&luctus=pulvinar&tincidunt=lobortis&nulla=est&mollis=phasellus&molestie=sit&lorem=amet&quisque=erat');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('17', '8', 'http://imgur.com/neque.jpg?ultrices=eros&aliquet=viverra&maecenas=eget&leo=congue&odio=eget&condimentum=semper&id=rutrum&luctus=nulla&nec=nunc&molestie=purus&sed=phasellus&justo=in&pellentesque=felis&viverra=donec&pede=semper&ac=sapien&diam=a&cras=libero&pellentesque=nam&volutpat=dui&dui=proin&maecenas=leo&tristique=odio&est=porttitor&et=id&tempus=consequat&semper=in&est=consequat&quam=ut&pharetra=nulla&magna=sed&ac=accumsan&consequat=felis&metus=ut&sapien=at&ut=dolor&nunc=quis&vestibulum=odio&ante=consequat&ipsum=varius&primis=integer&in=ac&faucibus=leo&orci=pellentesque&luctus=ultrices&et=mattis&ultrices=odio&posuere=donec&cubilia=vitae&curae=nisi&mauris=nam&viverra=ultrices&diam=libero&vitae=non&quam=mattis&suspendisse=pulvinar&potenti=nulla&nullam=pede&porttitor=ullamcorper&lacus=augue&at=a&turpis=suscipit&donec=nulla&posuere=elit&metus=ac&vitae=nulla&ipsum=sed&aliquam=vel&non=enim&mauris=sit&morbi=amet');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('9', '5', 'http://skyrock.com/posuere/nonummy.js?elementum=pede&eu=justo&interdum=eu&eu=massa&tincidunt=donec&in=dapibus&leo=duis&maecenas=at&pulvinar=velit&lobortis=eu&est=est&phasellus=congue&sit=elementum&amet=in&erat=hac&nulla=habitasse&tempus=platea&vivamus=dictumst&in=morbi&felis=vestibulum&eu=velit&sapien=id&cursus=pretium&vestibulum=iaculis&proin=diam&eu=erat&mi=fermentum&nulla=justo&ac=nec&enim=condimentum&in=neque&tempor=sapien&turpis=placerat&nec=ante&euismod=nulla&scelerisque=justo&quam=aliquam&turpis=quis&adipiscing=turpis&lorem=eget&vitae=elit&mattis=sodales&nibh=scelerisque&ligula=mauris&nec=sit&sem=amet&duis=eros&aliquam=suspendisse&convallis=accumsan&nunc=tortor');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('36', '22', 'https://vistaprint.com/praesent/blandit/lacinia/erat/vestibulum/sed/magna.xml?sem=amet&mauris=justo&laoreet=morbi&ut=ut&rhoncus=odio&aliquet=cras&pulvinar=mi&sed=pede&nisl=malesuada&nunc=in&rhoncus=imperdiet&dui=et&vel=commodo&sem=vulputate&sed=justo&sagittis=in&nam=blandit');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('2', '34', 'https://cbsnews.com/quisque.png?eget=porta&eros=volutpat&elementum=quam&pellentesque=pede&quisque=lobortis&porta=ligula&volutpat=sit&erat=amet&quisque=eleifend&erat=pede&eros=libero&viverra=quis&eget=orci&congue=nullam&eget=molestie&semper=nibh&rutrum=in&nulla=lectus&nunc=pellentesque&purus=at&phasellus=nulla&in=suspendisse&felis=potenti&donec=cras&semper=in&sapien=purus&a=eu&libero=magna&nam=vulputate&dui=luctus&proin=cum&leo=sociis&odio=natoque&porttitor=penatibus&id=et&consequat=magnis&in=dis&consequat=parturient&ut=montes&nulla=nascetur&sed=ridiculus&accumsan=mus&felis=vivamus&ut=vestibulum&at=sagittis&dolor=sapien&quis=cum&odio=sociis&consequat=natoque&varius=penatibus&integer=et&ac=magnis&leo=dis&pellentesque=parturient&ultrices=montes&mattis=nascetur&odio=ridiculus&donec=mus&vitae=etiam&nisi=vel&nam=augue&ultrices=vestibulum&libero=rutrum&non=rutrum&mattis=neque&pulvinar=aenean&nulla=auctor&pede=gravida&ullamcorper=sem&augue=praesent&a=id&suscipit=massa&nulla=id&elit=nisl&ac=venenatis&nulla=lacinia&sed=aenean&vel=sit&enim=amet&sit=justo&amet=morbi&nunc=ut&viverra=odio');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('40', '30', 'http://nsw.gov.au/lectus/aliquam/sit/amet/diam/in.png?lacus=sed&at=justo&turpis=pellentesque&donec=viverra&posuere=pede&metus=ac&vitae=diam&ipsum=cras&aliquam=pellentesque&non=volutpat&mauris=dui&morbi=maecenas&non=tristique&lectus=est&aliquam=et&sit=tempus&amet=semper&diam=est&in=quam&magna=pharetra&bibendum=magna&imperdiet=ac&nullam=consequat&orci=metus&pede=sapien&venenatis=ut&non=nunc&sodales=vestibulum&sed=ante&tincidunt=ipsum&eu=primis&felis=in&fusce=faucibus&posuere=orci&felis=luctus&sed=et&lacus=ultrices&morbi=posuere');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('24', '19', 'http://washington.edu/eros/viverra.png?lorem=nunc&quisque=rhoncus&ut=dui&erat=vel&curabitur=sem&gravida=sed&nisi=sagittis&at=nam&nibh=congue&in=risus&hac=semper&habitasse=porta&platea=volutpat&dictumst=quam&aliquam=pede&augue=lobortis&quam=ligula&sollicitudin=sit&vitae=amet&consectetuer=eleifend&eget=pede&rutrum=libero&at=quis&lorem=orci&integer=nullam&tincidunt=molestie&ante=nibh');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('21', '35', 'http://wikipedia.org/fermentum/justo/nec.json?sit=ut&amet=at&turpis=dolor&elementum=quis&ligula=odio&vehicula=consequat&consequat=varius&morbi=integer&a=ac&ipsum=leo&integer=pellentesque&a=ultrices&nibh=mattis&in=odio&quis=donec&justo=vitae&maecenas=nisi&rhoncus=nam&aliquam=ultrices&lacus=libero&morbi=non&quis=mattis&tortor=pulvinar&id=nulla&nulla=pede&ultrices=ullamcorper&aliquet=augue&maecenas=a&leo=suscipit&odio=nulla&condimentum=elit&id=ac&luctus=nulla&nec=sed&molestie=vel&sed=enim&justo=sit&pellentesque=amet&viverra=nunc&pede=viverra&ac=dapibus&diam=nulla&cras=suscipit&pellentesque=ligula&volutpat=in&dui=lacus&maecenas=curabitur&tristique=at&est=ipsum&et=ac&tempus=tellus&semper=semper&est=interdum&quam=mauris&pharetra=ullamcorper&magna=purus&ac=sit&consequat=amet&metus=nulla&sapien=quisque&ut=arcu&nunc=libero&vestibulum=rutrum&ante=ac&ipsum=lobortis&primis=vel&in=dapibus&faucibus=at');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('30', '2', 'https://g.co/luctus/et/ultrices/posuere.aspx?et=leo&ultrices=rhoncus&posuere=sed&cubilia=vestibulum&curae=sit&duis=amet&faucibus=cursus&accumsan=id&odio=turpis&curabitur=integer&convallis=aliquet&duis=massa&consequat=id&dui=lobortis&nec=convallis&nisi=tortor&volutpat=risus&eleifend=dapibus&donec=augue&ut=vel&dolor=accumsan&morbi=tellus&vel=nisi&lectus=eu&in=orci&quam=mauris&fringilla=lacinia&rhoncus=sapien&mauris=quis&enim=libero&leo=nullam&rhoncus=sit&sed=amet&vestibulum=turpis&sit=elementum&amet=ligula&cursus=vehicula&id=consequat&turpis=morbi&integer=a&aliquet=ipsum&massa=integer&id=a&lobortis=nibh&convallis=in&tortor=quis&risus=justo&dapibus=maecenas&augue=rhoncus&vel=aliquam&accumsan=lacus&tellus=morbi&nisi=quis&eu=tortor&orci=id&mauris=nulla&lacinia=ultrices&sapien=aliquet&quis=maecenas&libero=leo&nullam=odio&sit=condimentum&amet=id&turpis=luctus&elementum=nec&ligula=molestie&vehicula=sed&consequat=justo&morbi=pellentesque&a=viverra&ipsum=pede&integer=ac&a=diam&nibh=cras&in=pellentesque');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('31', '9', 'http://geocities.jp/eu/orci/mauris/lacinia/sapien/quis/libero.html?tincidunt=ipsum&eget=aliquam&tempus=non&vel=mauris&pede=morbi&morbi=non&porttitor=lectus&lorem=aliquam&id=sit&ligula=amet&suspendisse=diam&ornare=in&consequat=magna&lectus=bibendum&in=imperdiet&est=nullam&risus=orci&auctor=pede&sed=venenatis&tristique=non&in=sodales&tempus=sed&sit=tincidunt&amet=eu&sem=felis&fusce=fusce&consequat=posuere&nulla=felis&nisl=sed');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('7', '1', 'https://abc.net.au/nulla/suscipit/ligula.html?sapien=felis&in=eu&sapien=sapien&iaculis=cursus&congue=vestibulum&vivamus=proin&metus=eu&arcu=mi&adipiscing=nulla&molestie=ac&hendrerit=enim&at=in&vulputate=tempor&vitae=turpis&nisl=nec&aenean=euismod&lectus=scelerisque&pellentesque=quam&eget=turpis&nunc=adipiscing&donec=lorem&quis=vitae&orci=mattis&eget=nibh&orci=ligula&vehicula=nec&condimentum=sem&curabitur=duis&in=aliquam&libero=convallis&ut=nunc&massa=proin&volutpat=at&convallis=turpis&morbi=a&odio=pede&odio=posuere&elementum=nonummy&eu=integer&interdum=non&eu=velit&tincidunt=donec&in=diam&leo=neque&maecenas=vestibulum&pulvinar=eget&lobortis=vulputate&est=ut');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('14', '12', 'http://ehow.com/vivamus/tortor/duis.js?accumsan=vulputate&tortor=elementum&quis=nullam&turpis=varius&sed=nulla&ante=facilisi');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('20', '33', 'http://stumbleupon.com/nam/dui/proin/leo/odio/porttitor.html?erat=suspendisse&eros=potenti&viverra=nullam&eget=porttitor&congue=lacus&eget=at&semper=turpis&rutrum=donec&nulla=posuere&nunc=metus&purus=vitae&phasellus=ipsum&in=aliquam&felis=non&donec=mauris&semper=morbi&sapien=non&a=lectus&libero=aliquam&nam=sit&dui=amet&proin=diam&leo=in&odio=magna&porttitor=bibendum&id=imperdiet&consequat=nullam&in=orci&consequat=pede&ut=venenatis&nulla=non&sed=sodales&accumsan=sed&felis=tincidunt&ut=eu&at=felis&dolor=fusce&quis=posuere&odio=felis&consequat=sed&varius=lacus&integer=morbi&ac=sem&leo=mauris&pellentesque=laoreet&ultrices=ut&mattis=rhoncus&odio=aliquet&donec=pulvinar&vitae=sed&nisi=nisl&nam=nunc&ultrices=rhoncus&libero=dui&non=vel&mattis=sem&pulvinar=sed&nulla=sagittis&pede=nam&ullamcorper=congue&augue=risus&a=semper&suscipit=porta&nulla=volutpat&elit=quam&ac=pede');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('6', '31', 'http://ezinearticles.com/sit/amet/sapien/dignissim.html?morbi=quam&porttitor=pede&lorem=lobortis&id=ligula&ligula=sit&suspendisse=amet&ornare=eleifend&consequat=pede&lectus=libero&in=quis&est=orci&risus=nullam&auctor=molestie&sed=nibh&tristique=in&in=lectus&tempus=pellentesque&sit=at&amet=nulla&sem=suspendisse&fusce=potenti&consequat=cras&nulla=in&nisl=purus&nunc=eu&nisl=magna');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('29', '32', 'http://fda.gov/sodales/sed/tincidunt/eu/felis/fusce/posuere.png?morbi=maecenas&ut=tincidunt&odio=lacus&cras=at&mi=velit&pede=vivamus&malesuada=vel&in=nulla&imperdiet=eget&et=eros&commodo=elementum&vulputate=pellentesque&justo=quisque&in=porta&blandit=volutpat&ultrices=erat&enim=quisque&lorem=erat&ipsum=eros&dolor=viverra&sit=eget&amet=congue&consectetuer=eget&adipiscing=semper&elit=rutrum&proin=nulla&interdum=nunc&mauris=purus&non=phasellus&ligula=in&pellentesque=felis&ultrices=donec&phasellus=semper&id=sapien&sapien=a&in=libero&sapien=nam&iaculis=dui&congue=proin&vivamus=leo&metus=odio&arcu=porttitor&adipiscing=id&molestie=consequat&hendrerit=in&at=consequat&vulputate=ut&vitae=nulla&nisl=sed&aenean=accumsan&lectus=felis&pellentesque=ut&eget=at&nunc=dolor&donec=quis&quis=odio&orci=consequat&eget=varius&orci=integer&vehicula=ac&condimentum=leo&curabitur=pellentesque&in=ultrices&libero=mattis&ut=odio&massa=donec');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('16', '20', 'http://sakura.ne.jp/pellentesque/viverra/pede/ac/diam/cras.jpg?vitae=lobortis&quam=sapien&suspendisse=sapien&potenti=non&nullam=mi&porttitor=integer&lacus=ac&at=neque&turpis=duis&donec=bibendum&posuere=morbi&metus=non&vitae=quam&ipsum=nec&aliquam=dui&non=luctus&mauris=rutrum&morbi=nulla&non=tellus&lectus=in&aliquam=sagittis&sit=dui&amet=vel&diam=nisl&in=duis&magna=ac&bibendum=nibh&imperdiet=fusce&nullam=lacus&orci=purus&pede=aliquet&venenatis=at&non=feugiat&sodales=non&sed=pretium&tincidunt=quis&eu=lectus&felis=suspendisse&fusce=potenti&posuere=in&felis=eleifend&sed=quam&lacus=a&morbi=odio&sem=in&mauris=hac&laoreet=habitasse&ut=platea&rhoncus=dictumst&aliquet=maecenas&pulvinar=ut&sed=massa&nisl=quis&nunc=augue&rhoncus=luctus&dui=tincidunt&vel=nulla&sem=mollis&sed=molestie&sagittis=lorem&nam=quisque&congue=ut&risus=erat&semper=curabitur&porta=gravida&volutpat=nisi&quam=at&pede=nibh&lobortis=in&ligula=hac&sit=habitasse&amet=platea&eleifend=dictumst&pede=aliquam&libero=augue&quis=quam&orci=sollicitudin&nullam=vitae&molestie=consectetuer&nibh=eget&in=rutrum&lectus=at&pellentesque=lorem&at=integer&nulla=tincidunt&suspendisse=ante&potenti=vel&cras=ipsum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('18', '40', 'http://yolasite.com/cras/in/purus/eu/magna/vulputate.js?semper=nisi&rutrum=volutpat&nulla=eleifend&nunc=donec&purus=ut&phasellus=dolor&in=morbi&felis=vel&donec=lectus&semper=in&sapien=quam&a=fringilla&libero=rhoncus&nam=mauris&dui=enim&proin=leo&leo=rhoncus&odio=sed&porttitor=vestibulum&id=sit&consequat=amet&in=cursus&consequat=id&ut=turpis&nulla=integer&sed=aliquet&accumsan=massa&felis=id&ut=lobortis&at=convallis&dolor=tortor&quis=risus&odio=dapibus&consequat=augue&varius=vel&integer=accumsan&ac=tellus&leo=nisi&pellentesque=eu&ultrices=orci&mattis=mauris&odio=lacinia&donec=sapien&vitae=quis&nisi=libero');