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
	Title VARCHAR(50),
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
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (9, 'Monitor, The (Babycall)', 'Chinese', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 101, '$1738940.74', 1996, 944446592);
insert into Movie (MovieID, Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values (10, 'Death of Maria Malibran, The (Der Tod der Maria Malibran)', 'Sotho', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 173, '$8695948.32', 2009, 775714463);
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
	MovieID VARCHAR(50),
	GenreID VARCHAR(2),

  FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
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
	ActorID VARCHAR(50),
	MovieID VARCHAR(50),

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
	CompanyName VARCHAR(50),
	Email VARCHAR(50),
	Phone VARCHAR(50),
	Country VARCHAR(50),
	State VARCHAR(50),
	City VARCHAR(50),
	Street VARCHAR(50),

  PRIMARY KEY(studioid),
  UNIQUE(Email, Phone)
);
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (1, 'Jennee', 'jberdale0@newyorker.com', '889-695-9808', 'South Korea', null, 'Ansan-si', '28567 Quincy Avenue');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (2, 'Kara-lynn', 'kjobson1@delicious.com', '847-581-8636', 'Poland', null, 'Piława Górna', '128 Everett Way');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (3, 'Turner', 'triddeough2@ebay.com', '931-890-0696', 'China', null, 'Yangchengzhuang', '270 Michigan Court');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (4, 'Erhard', 'emongeot3@mac.com', '447-217-3604', 'Czech Republic', null, 'Libouchec', '2455 Hauk Hill');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (5, 'Bent', 'brumming4@tinypic.com', '611-613-6479', 'Sweden', 'Stockholm', 'Stocksund', '6445 Ridgeview Junction');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (6, 'Clive', 'catcherley5@soundcloud.com', '262-296-5316', 'China', null, 'Shaxi', '367 Jay Terrace');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (7, 'Olive', 'obrundle6@facebook.com', '146-654-2812', 'China', null, 'Huizhai', '938 Gale Junction');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (8, 'Leslie', 'lbruckstein7@networkadvertising.org', '861-861-4729', 'Portugal', 'Ilha de São Miguel', 'Pico da Pedra', '7048 Donald Avenue');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (9, 'Blair', 'bpolland8@nba.com', '705-924-5442', 'Thailand', null, 'Nong Saeng', '8 Sunfield Center');
insert into ProductionCompany (studioid, CompanyName, email, phone, Country, State, City, Street) values (10, 'Giselle', 'ghanks9@dion.ne.jp', '202-372-1240', 'Poland', null, 'Bieliny', '9 Nevada Drive');

DROP TABLE IF EXISTS produced_by_comp;
create table produced_by_comp (
	MovieID VARCHAR(50),
	StudioID VARCHAR(50),

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
    movieId int NOT NULL,
    userId int NOT NULL,

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
insert into liked_movies (MovieID, UserID) values ('2', '39');
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
insert into liked_movies (MovieID, UserID) values ('4', '18');
insert into liked_movies (MovieID, UserID) values ('6', '19');
insert into liked_movies (MovieID, UserID) values ('38', '46');
insert into liked_movies (MovieID, UserID) values ('27', '42');
insert into liked_movies (MovieID, UserID) values ('21', '54');
insert into liked_movies (MovieID, UserID) values ('3', '47');

DROP TABLE IF EXISTS watched_movies;
CREATE TABLE watched_movies(
    movieId int NOT NULL,
    userId int NOT NULL,

    PRIMARY KEY(movieId, userId),
    FOREIGN KEY(userId) references User (userId),
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
insert into watched_movies (MovieID, UserID) values ('6', '6');
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
  movieId int NOT NULL,
  producerId int NOT NULL,

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
    movieId int NOT NULL,
    StreamingCompanyid int NOT NULL,
    link varchar(1000),
    
    PRIMARY KEY(movieId, StreamingCompanyId),
    FOREIGN KEY(StreamingCompanyId) references StreamingCompany (CompanyId),
    FOREIGN KEY(movieId) references Movie (movieId)
);

insert into streamed_movies (movieId, StreamingCompanyId, link) values ('19', '31', 'http://cmu.edu/nisl/nunc/nisl/duis/bibendum/felis.js?amet=eu&justo=magna&morbi=vulputate&ut=luctus&odio=cum&cras=sociis&mi=natoque&pede=penatibus&malesuada=et&in=magnis&imperdiet=dis&et=parturient&commodo=montes&vulputate=nascetur&justo=ridiculus&in=mus&blandit=vivamus&ultrices=vestibulum&enim=sagittis&lorem=sapien&ipsum=cum&dolor=sociis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('28', '3', 'http://amazon.com/ultrices/posuere/cubilia.js?id=mauris&justo=enim&sit=leo&amet=rhoncus&sapien=sed&dignissim=vestibulum&vestibulum=sit&vestibulum=amet&ante=cursus&ipsum=id&primis=turpis&in=integer&faucibus=aliquet&orci=massa&luctus=id&et=lobortis&ultrices=convallis&posuere=tortor&cubilia=risus&curae=dapibus&nulla=augue&dapibus=vel&dolor=accumsan&vel=tellus&est=nisi&donec=eu&odio=orci&justo=mauris&sollicitudin=lacinia&ut=sapien&suscipit=quis&a=libero&feugiat=nullam&et=sit&eros=amet&vestibulum=turpis&ac=elementum&est=ligula&lacinia=vehicula&nisi=consequat&venenatis=morbi&tristique=a&fusce=ipsum&congue=integer&diam=a&id=nibh&ornare=in&imperdiet=quis&sapien=justo&urna=maecenas&pretium=rhoncus&nisl=aliquam&ut=lacus&volutpat=morbi&sapien=quis&arcu=tortor');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('40', '1', 'http://spiegel.de/libero/non/mattis/pulvinar/nulla.js?sit=amet&amet=erat&diam=nulla&in=tempus&magna=vivamus&bibendum=in&imperdiet=felis&nullam=eu&orci=sapien&pede=cursus&venenatis=vestibulum&non=proin&sodales=eu&sed=mi&tincidunt=nulla&eu=ac&felis=enim&fusce=in&posuere=tempor&felis=turpis&sed=nec&lacus=euismod&morbi=scelerisque&sem=quam&mauris=turpis&laoreet=adipiscing&ut=lorem&rhoncus=vitae&aliquet=mattis&pulvinar=nibh&sed=ligula&nisl=nec&nunc=sem&rhoncus=duis&dui=aliquam&vel=convallis&sem=nunc&sed=proin&sagittis=at&nam=turpis&congue=a&risus=pede&semper=posuere&porta=nonummy&volutpat=integer&quam=non&pede=velit&lobortis=donec&ligula=diam&sit=neque&amet=vestibulum&eleifend=eget&pede=vulputate&libero=ut&quis=ultrices&orci=vel&nullam=augue&molestie=vestibulum&nibh=ante&in=ipsum&lectus=primis&pellentesque=in&at=faucibus&nulla=orci&suspendisse=luctus&potenti=et&cras=ultrices&in=posuere&purus=cubilia&eu=curae&magna=donec&vulputate=pharetra&luctus=magna&cum=vestibulum&sociis=aliquet&natoque=ultrices&penatibus=erat&et=tortor&magnis=sollicitudin');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('8', '15', 'http://yahoo.co.jp/lectus/vestibulum/quam/sapien/varius/ut/blandit.jpg?consequat=tempus&dui=sit&nec=amet&nisi=sem&volutpat=fusce&eleifend=consequat&donec=nulla&ut=nisl&dolor=nunc&morbi=nisl&vel=duis&lectus=bibendum&in=felis&quam=sed&fringilla=interdum&rhoncus=venenatis&mauris=turpis&enim=enim&leo=blandit&rhoncus=mi&sed=in&vestibulum=porttitor&sit=pede&amet=justo&cursus=eu&id=massa&turpis=donec&integer=dapibus&aliquet=duis&massa=at&id=velit&lobortis=eu&convallis=est&tortor=congue&risus=elementum&dapibus=in&augue=hac&vel=habitasse&accumsan=platea&tellus=dictumst&nisi=morbi&eu=vestibulum&orci=velit&mauris=id&lacinia=pretium&sapien=iaculis&quis=diam&libero=erat&nullam=fermentum&sit=justo&amet=nec&turpis=condimentum&elementum=neque&ligula=sapien&vehicula=placerat&consequat=ante&morbi=nulla&a=justo&ipsum=aliquam&integer=quis&a=turpis&nibh=eget&in=elit&quis=sodales&justo=scelerisque&maecenas=mauris&rhoncus=sit&aliquam=amet&lacus=eros&morbi=suspendisse&quis=accumsan&tortor=tortor&id=quis&nulla=turpis&ultrices=sed&aliquet=ante&maecenas=vivamus&leo=tortor&odio=duis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('31', '26', 'https://unicef.org/cubilia/curae/duis.png?porttitor=in&pede=lectus&justo=pellentesque&eu=at&massa=nulla&donec=suspendisse&dapibus=potenti&duis=cras&at=in&velit=purus&eu=eu&est=magna&congue=vulputate&elementum=luctus&in=cum&hac=sociis&habitasse=natoque');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('4', '25', 'http://istockphoto.com/odio/elementum/eu/interdum/eu/tincidunt/in.js?in=sollicitudin&eleifend=vitae&quam=consectetuer&a=eget&odio=rutrum&in=at&hac=lorem&habitasse=integer&platea=tincidunt&dictumst=ante&maecenas=vel&ut=ipsum&massa=praesent&quis=blandit&augue=lacinia&luctus=erat&tincidunt=vestibulum&nulla=sed&mollis=magna&molestie=at&lorem=nunc&quisque=commodo&ut=placerat&erat=praesent&curabitur=blandit&gravida=nam&nisi=nulla&at=integer&nibh=pede&in=justo&hac=lacinia&habitasse=eget&platea=tincidunt&dictumst=eget&aliquam=tempus&augue=vel&quam=pede&sollicitudin=morbi&vitae=porttitor&consectetuer=lorem&eget=id&rutrum=ligula&at=suspendisse&lorem=ornare&integer=consequat&tincidunt=lectus&ante=in&vel=est&ipsum=risus&praesent=auctor&blandit=sed&lacinia=tristique&erat=in&vestibulum=tempus&sed=sit&magna=amet&at=sem&nunc=fusce&commodo=consequat&placerat=nulla&praesent=nisl&blandit=nunc&nam=nisl&nulla=duis&integer=bibendum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('10', '27', 'https://behance.net/rutrum/nulla/nunc/purus/phasellus/in/felis.jpg?lorem=platea&integer=dictumst&tincidunt=maecenas&ante=ut&vel=massa&ipsum=quis&praesent=augue&blandit=luctus&lacinia=tincidunt&erat=nulla&vestibulum=mollis&sed=molestie&magna=lorem&at=quisque&nunc=ut&commodo=erat&placerat=curabitur&praesent=gravida&blandit=nisi&nam=at&nulla=nibh&integer=in&pede=hac&justo=habitasse&lacinia=platea&eget=dictumst&tincidunt=aliquam&eget=augue&tempus=quam&vel=sollicitudin&pede=vitae&morbi=consectetuer&porttitor=eget&lorem=rutrum&id=at&ligula=lorem&suspendisse=integer&ornare=tincidunt&consequat=ante&lectus=vel&in=ipsum&est=praesent&risus=blandit&auctor=lacinia&sed=erat&tristique=vestibulum&in=sed&tempus=magna&sit=at&amet=nunc&sem=commodo&fusce=placerat&consequat=praesent&nulla=blandit&nisl=nam');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('20', '24', 'https://ow.ly/vel/accumsan/tellus/nisi/eu.jpg?ante=lacinia&ipsum=nisi&primis=venenatis&in=tristique&faucibus=fusce&orci=congue&luctus=diam&et=id&ultrices=ornare&posuere=imperdiet&cubilia=sapien&curae=urna&nulla=pretium&dapibus=nisl&dolor=ut&vel=volutpat&est=sapien&donec=arcu&odio=sed&justo=augue&sollicitudin=aliquam&ut=erat&suscipit=volutpat&a=in&feugiat=congue&et=etiam&eros=justo&vestibulum=etiam&ac=pretium&est=iaculis&lacinia=justo&nisi=in&venenatis=hac&tristique=habitasse&fusce=platea&congue=dictumst&diam=etiam&id=faucibus&ornare=cursus&imperdiet=urna&sapien=ut&urna=tellus&pretium=nulla&nisl=ut&ut=erat&volutpat=id&sapien=mauris&arcu=vulputate&sed=elementum&augue=nullam&aliquam=varius&erat=nulla&volutpat=facilisi&in=cras&congue=non&etiam=velit&justo=nec&etiam=nisi&pretium=vulputate&iaculis=nonummy&justo=maecenas');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('16', '16', 'https://biblegateway.com/morbi/odio.html?luctus=semper&ultricies=porta');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('34', '23', 'http://google.com/cubilia/curae/donec/pharetra/magna/vestibulum.js?nulla=vel&tempus=accumsan&vivamus=tellus&in=nisi&felis=eu&eu=orci&sapien=mauris&cursus=lacinia&vestibulum=sapien&proin=quis&eu=libero&mi=nullam&nulla=sit&ac=amet&enim=turpis&in=elementum&tempor=ligula&turpis=vehicula&nec=consequat&euismod=morbi&scelerisque=a&quam=ipsum&turpis=integer&adipiscing=a&lorem=nibh&vitae=in&mattis=quis&nibh=justo&ligula=maecenas&nec=rhoncus&sem=aliquam&duis=lacus&aliquam=morbi&convallis=quis&nunc=tortor&proin=id&at=nulla&turpis=ultrices&a=aliquet&pede=maecenas&posuere=leo&nonummy=odio&integer=condimentum&non=id&velit=luctus&donec=nec&diam=molestie&neque=sed&vestibulum=justo&eget=pellentesque&vulputate=viverra&ut=pede&ultrices=ac&vel=diam&augue=cras&vestibulum=pellentesque&ante=volutpat&ipsum=dui&primis=maecenas&in=tristique&faucibus=est&orci=et&luctus=tempus&et=semper&ultrices=est&posuere=quam&cubilia=pharetra&curae=magna&donec=ac&pharetra=consequat&magna=metus&vestibulum=sapien&aliquet=ut&ultrices=nunc&erat=vestibulum&tortor=ante&sollicitudin=ipsum&mi=primis&sit=in&amet=faucibus&lobortis=orci&sapien=luctus&sapien=et&non=ultrices&mi=posuere&integer=cubilia&ac=curae&neque=mauris&duis=viverra&bibendum=diam&morbi=vitae&non=quam&quam=suspendisse&nec=potenti');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('18', '18', 'http://gnu.org/odio/condimentum/id/luctus.png?erat=at&tortor=nulla&sollicitudin=suspendisse&mi=potenti&sit=cras&amet=in&lobortis=purus&sapien=eu&sapien=magna&non=vulputate&mi=luctus&integer=cum&ac=sociis&neque=natoque&duis=penatibus&bibendum=et&morbi=magnis&non=dis&quam=parturient&nec=montes&dui=nascetur&luctus=ridiculus&rutrum=mus&nulla=vivamus&tellus=vestibulum&in=sagittis&sagittis=sapien&dui=cum&vel=sociis&nisl=natoque&duis=penatibus&ac=et&nibh=magnis&fusce=dis&lacus=parturient&purus=montes&aliquet=nascetur&at=ridiculus&feugiat=mus&non=etiam&pretium=vel&quis=augue&lectus=vestibulum&suspendisse=rutrum&potenti=rutrum&in=neque&eleifend=aenean&quam=auctor&a=gravida&odio=sem&in=praesent&hac=id&habitasse=massa&platea=id&dictumst=nisl&maecenas=venenatis&ut=lacinia&massa=aenean&quis=sit&augue=amet&luctus=justo&tincidunt=morbi&nulla=ut&mollis=odio&molestie=cras&lorem=mi&quisque=pede&ut=malesuada&erat=in&curabitur=imperdiet&gravida=et&nisi=commodo&at=vulputate&nibh=justo&in=in&hac=blandit&habitasse=ultrices');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('21', '2', 'https://usa.gov/diam.jsp?tempus=pretium&vel=quis&pede=lectus&morbi=suspendisse&porttitor=potenti&lorem=in&id=eleifend&ligula=quam&suspendisse=a&ornare=odio&consequat=in&lectus=hac&in=habitasse&est=platea&risus=dictumst&auctor=maecenas&sed=ut&tristique=massa&in=quis&tempus=augue&sit=luctus&amet=tincidunt&sem=nulla&fusce=mollis&consequat=molestie&nulla=lorem&nisl=quisque&nunc=ut&nisl=erat&duis=curabitur&bibendum=gravida&felis=nisi&sed=at&interdum=nibh&venenatis=in&turpis=hac&enim=habitasse&blandit=platea&mi=dictumst&in=aliquam&porttitor=augue&pede=quam&justo=sollicitudin&eu=vitae&massa=consectetuer&donec=eget&dapibus=rutrum&duis=at&at=lorem&velit=integer&eu=tincidunt&est=ante&congue=vel&elementum=ipsum&in=praesent&hac=blandit&habitasse=lacinia&platea=erat&dictumst=vestibulum&morbi=sed&vestibulum=magna&velit=at&id=nunc&pretium=commodo&iaculis=placerat&diam=praesent&erat=blandit&fermentum=nam&justo=nulla&nec=integer&condimentum=pede&neque=justo&sapien=lacinia&placerat=eget&ante=tincidunt&nulla=eget&justo=tempus&aliquam=vel&quis=pede&turpis=morbi&eget=porttitor&elit=lorem&sodales=id&scelerisque=ligula&mauris=suspendisse&sit=ornare&amet=consequat&eros=lectus&suspendisse=in&accumsan=est&tortor=risus&quis=auctor&turpis=sed&sed=tristique&ante=in&vivamus=tempus&tortor=sit&duis=amet');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('27', '36', 'https://si.edu/non/velit/nec/nisi/vulputate/nonummy.xml?placerat=integer&ante=aliquet&nulla=massa&justo=id&aliquam=lobortis&quis=convallis&turpis=tortor&eget=risus&elit=dapibus&sodales=augue&scelerisque=vel&mauris=accumsan&sit=tellus&amet=nisi&eros=eu&suspendisse=orci&accumsan=mauris&tortor=lacinia&quis=sapien&turpis=quis&sed=libero&ante=nullam&vivamus=sit&tortor=amet&duis=turpis&mattis=elementum&egestas=ligula&metus=vehicula&aenean=consequat&fermentum=morbi&donec=a&ut=ipsum&mauris=integer&eget=a&massa=nibh&tempor=in&convallis=quis&nulla=justo&neque=maecenas&libero=rhoncus&convallis=aliquam&eget=lacus&eleifend=morbi&luctus=quis&ultricies=tortor&eu=id&nibh=nulla&quisque=ultrices&id=aliquet&justo=maecenas&sit=leo&amet=odio&sapien=condimentum&dignissim=id&vestibulum=luctus&vestibulum=nec&ante=molestie&ipsum=sed&primis=justo&in=pellentesque&faucibus=viverra&orci=pede&luctus=ac&et=diam&ultrices=cras&posuere=pellentesque&cubilia=volutpat&curae=dui&nulla=maecenas&dapibus=tristique&dolor=est&vel=et&est=tempus&donec=semper&odio=est&justo=quam&sollicitudin=pharetra&ut=magna&suscipit=ac&a=consequat&feugiat=metus&et=sapien&eros=ut&vestibulum=nunc&ac=vestibulum&est=ante');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('37', '13', 'https://nih.gov/interdum/in/ante/vestibulum.json?penatibus=justo&et=sollicitudin&magnis=ut&dis=suscipit&parturient=a&montes=feugiat&nascetur=et&ridiculus=eros&mus=vestibulum');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('22', '22', 'http://wufoo.com/vestibulum/rutrum.xml?in=lectus&magna=pellentesque&bibendum=at&imperdiet=nulla&nullam=suspendisse&orci=potenti');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('1', '32', 'https://goo.ne.jp/sit/amet/eleifend/pede/libero/quis/orci.json?nulla=sapien&tempus=sapien&vivamus=non&in=mi&felis=integer&eu=ac&sapien=neque&cursus=duis&vestibulum=bibendum&proin=morbi&eu=non&mi=quam&nulla=nec&ac=dui&enim=luctus&in=rutrum&tempor=nulla&turpis=tellus&nec=in&euismod=sagittis&scelerisque=dui&quam=vel&turpis=nisl&adipiscing=duis&lorem=ac&vitae=nibh&mattis=fusce&nibh=lacus&ligula=purus&nec=aliquet&sem=at&duis=feugiat&aliquam=non&convallis=pretium&nunc=quis&proin=lectus&at=suspendisse&turpis=potenti&a=in&pede=eleifend&posuere=quam&nonummy=a&integer=odio&non=in');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('36', '9', 'https://reuters.com/justo/nec.html?nulla=proin&facilisi=at&cras=turpis&non=a&velit=pede&nec=posuere&nisi=nonummy&vulputate=integer&nonummy=non&maecenas=velit&tincidunt=donec&lacus=diam&at=neque&velit=vestibulum&vivamus=eget&vel=vulputate&nulla=ut&eget=ultrices&eros=vel&elementum=augue&pellentesque=vestibulum&quisque=ante&porta=ipsum&volutpat=primis&erat=in&quisque=faucibus&erat=orci&eros=luctus&viverra=et&eget=ultrices&congue=posuere&eget=cubilia&semper=curae&rutrum=donec&nulla=pharetra&nunc=magna&purus=vestibulum&phasellus=aliquet&in=ultrices&felis=erat&donec=tortor&semper=sollicitudin&sapien=mi&a=sit&libero=amet&nam=lobortis&dui=sapien&proin=sapien&leo=non&odio=mi&porttitor=integer');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('39', '11', 'http://prweb.com/sed.js?curabitur=convallis&gravida=duis&nisi=consequat&at=dui&nibh=nec&in=nisi&hac=volutpat&habitasse=eleifend&platea=donec&dictumst=ut&aliquam=dolor&augue=morbi&quam=vel&sollicitudin=lectus&vitae=in&consectetuer=quam&eget=fringilla&rutrum=rhoncus&at=mauris&lorem=enim&integer=leo&tincidunt=rhoncus&ante=sed&vel=vestibulum&ipsum=sit&praesent=amet&blandit=cursus&lacinia=id&erat=turpis&vestibulum=integer&sed=aliquet&magna=massa&at=id&nunc=lobortis&commodo=convallis&placerat=tortor&praesent=risus&blandit=dapibus&nam=augue&nulla=vel&integer=accumsan&pede=tellus&justo=nisi&lacinia=eu&eget=orci&tincidunt=mauris&eget=lacinia&tempus=sapien&vel=quis&pede=libero&morbi=nullam&porttitor=sit&lorem=amet&id=turpis&ligula=elementum&suspendisse=ligula&ornare=vehicula&consequat=consequat&lectus=morbi&in=a&est=ipsum&risus=integer&auctor=a&sed=nibh&tristique=in&in=quis&tempus=justo&sit=maecenas&amet=rhoncus&sem=aliquam&fusce=lacus&consequat=morbi&nulla=quis&nisl=tortor&nunc=id&nisl=nulla&duis=ultrices&bibendum=aliquet&felis=maecenas&sed=leo&interdum=odio&venenatis=condimentum&turpis=id&enim=luctus&blandit=nec&mi=molestie&in=sed&porttitor=justo&pede=pellentesque&justo=viverra&eu=pede');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('30', '39', 'http://discuz.net/eu/nibh/quisque/id.xml?facilisi=odio&cras=odio&non=elementum&velit=eu&nec=interdum&nisi=eu&vulputate=tincidunt&nonummy=in&maecenas=leo&tincidunt=maecenas&lacus=pulvinar&at=lobortis&velit=est&vivamus=phasellus&vel=sit&nulla=amet&eget=erat&eros=nulla&elementum=tempus&pellentesque=vivamus&quisque=in&porta=felis&volutpat=eu&erat=sapien&quisque=cursus&erat=vestibulum&eros=proin&viverra=eu&eget=mi&congue=nulla&eget=ac&semper=enim&rutrum=in&nulla=tempor&nunc=turpis&purus=nec&phasellus=euismod&in=scelerisque&felis=quam&donec=turpis&semper=adipiscing&sapien=lorem&a=vitae&libero=mattis&nam=nibh&dui=ligula&proin=nec&leo=sem&odio=duis&porttitor=aliquam&id=convallis&consequat=nunc&in=proin&consequat=at&ut=turpis&nulla=a&sed=pede&accumsan=posuere&felis=nonummy&ut=integer&at=non&dolor=velit&quis=donec&odio=diam&consequat=neque&varius=vestibulum&integer=eget&ac=vulputate&leo=ut&pellentesque=ultrices&ultrices=vel&mattis=augue&odio=vestibulum&donec=ante&vitae=ipsum&nisi=primis&nam=in&ultrices=faucibus&libero=orci&non=luctus&mattis=et&pulvinar=ultrices&nulla=posuere&pede=cubilia&ullamcorper=curae&augue=donec&a=pharetra&suscipit=magna&nulla=vestibulum&elit=aliquet&ac=ultrices&nulla=erat&sed=tortor&vel=sollicitudin&enim=mi&sit=sit&amet=amet&nunc=lobortis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('15', '4', 'https://seattletimes.com/lorem/ipsum.aspx?ac=primis&neque=in&duis=faucibus&bibendum=orci&morbi=luctus&non=et&quam=ultrices&nec=posuere&dui=cubilia&luctus=curae&rutrum=nulla&nulla=dapibus&tellus=dolor&in=vel&sagittis=est&dui=donec&vel=odio&nisl=justo&duis=sollicitudin&ac=ut&nibh=suscipit&fusce=a&lacus=feugiat&purus=et&aliquet=eros&at=vestibulum&feugiat=ac&non=est&pretium=lacinia&quis=nisi&lectus=venenatis&suspendisse=tristique&potenti=fusce&in=congue&eleifend=diam&quam=id&a=ornare&odio=imperdiet&in=sapien&hac=urna&habitasse=pretium&platea=nisl&dictumst=ut&maecenas=volutpat&ut=sapien&massa=arcu&quis=sed&augue=augue&luctus=aliquam&tincidunt=erat&nulla=volutpat&mollis=in&molestie=congue&lorem=etiam');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('14', '12', 'https://about.com/pretium/iaculis/justo/in/hac/habitasse/platea.jpg?lectus=nisi&in=venenatis&quam=tristique&fringilla=fusce&rhoncus=congue&mauris=diam&enim=id&leo=ornare&rhoncus=imperdiet&sed=sapien&vestibulum=urna&sit=pretium&amet=nisl&cursus=ut&id=volutpat&turpis=sapien&integer=arcu&aliquet=sed&massa=augue&id=aliquam&lobortis=erat&convallis=volutpat&tortor=in&risus=congue&dapibus=etiam&augue=justo&vel=etiam&accumsan=pretium&tellus=iaculis&nisi=justo&eu=in&orci=hac&mauris=habitasse&lacinia=platea&sapien=dictumst&quis=etiam&libero=faucibus&nullam=cursus&sit=urna&amet=ut&turpis=tellus&elementum=nulla&ligula=ut&vehicula=erat&consequat=id&morbi=mauris&a=vulputate&ipsum=elementum&integer=nullam&a=varius&nibh=nulla&in=facilisi&quis=cras&justo=non&maecenas=velit&rhoncus=nec&aliquam=nisi&lacus=vulputate&morbi=nonummy&quis=maecenas&tortor=tincidunt&id=lacus&nulla=at&ultrices=velit&aliquet=vivamus&maecenas=vel&leo=nulla&odio=eget');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('2', '6', 'http://squidoo.com/convallis/nunc.png?tempor=pulvinar&convallis=sed&nulla=nisl&neque=nunc&libero=rhoncus&convallis=dui&eget=vel&eleifend=sem&luctus=sed&ultricies=sagittis&eu=nam&nibh=congue&quisque=risus&id=semper&justo=porta&sit=volutpat&amet=quam&sapien=pede&dignissim=lobortis&vestibulum=ligula&vestibulum=sit&ante=amet&ipsum=eleifend&primis=pede&in=libero&faucibus=quis&orci=orci&luctus=nullam&et=molestie&ultrices=nibh&posuere=in&cubilia=lectus&curae=pellentesque');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('11', '19', 'http://netlog.com/venenatis/tristique/fusce/congue/diam/id/ornare.jsp?sapien=ultrices&arcu=mattis&sed=odio&augue=donec&aliquam=vitae&erat=nisi&volutpat=nam&in=ultrices&congue=libero&etiam=non&justo=mattis&etiam=pulvinar&pretium=nulla&iaculis=pede&justo=ullamcorper');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('3', '37', 'https://comsenz.com/elementum/ligula/vehicula/consequat/morbi/a.json?semper=tincidunt&porta=lacus&volutpat=at&quam=velit&pede=vivamus&lobortis=vel&ligula=nulla&sit=eget&amet=eros&eleifend=elementum&pede=pellentesque&libero=quisque&quis=porta&orci=volutpat&nullam=erat&molestie=quisque&nibh=erat&in=eros');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('33', '21', 'https://symantec.com/aliquam/convallis/nunc/proin/at/turpis.json?pede=tempus&venenatis=sit&non=amet&sodales=sem&sed=fusce&tincidunt=consequat&eu=nulla&felis=nisl&fusce=nunc&posuere=nisl&felis=duis&sed=bibendum&lacus=felis&morbi=sed&sem=interdum&mauris=venenatis&laoreet=turpis&ut=enim&rhoncus=blandit&aliquet=mi&pulvinar=in&sed=porttitor&nisl=pede&nunc=justo&rhoncus=eu&dui=massa&vel=donec&sem=dapibus&sed=duis&sagittis=at&nam=velit&congue=eu&risus=est&semper=congue&porta=elementum&volutpat=in&quam=hac&pede=habitasse&lobortis=platea&ligula=dictumst&sit=morbi&amet=vestibulum&eleifend=velit&pede=id&libero=pretium&quis=iaculis&orci=diam&nullam=erat&molestie=fermentum&nibh=justo&in=nec&lectus=condimentum&pellentesque=neque&at=sapien&nulla=placerat&suspendisse=ante&potenti=nulla&cras=justo&in=aliquam&purus=quis&eu=turpis&magna=eget&vulputate=elit&luctus=sodales&cum=scelerisque&sociis=mauris&natoque=sit');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('9', '33', 'http://fc2.com/ac/nibh/fusce/lacus/purus/aliquet/at.json?nunc=tempor&donec=turpis&quis=nec&orci=euismod&eget=scelerisque&orci=quam&vehicula=turpis&condimentum=adipiscing&curabitur=lorem&in=vitae&libero=mattis&ut=nibh&massa=ligula&volutpat=nec&convallis=sem&morbi=duis&odio=aliquam&odio=convallis&elementum=nunc&eu=proin&interdum=at&eu=turpis&tincidunt=a&in=pede&leo=posuere&maecenas=nonummy&pulvinar=integer&lobortis=non&est=velit&phasellus=donec&sit=diam&amet=neque&erat=vestibulum&nulla=eget&tempus=vulputate&vivamus=ut&in=ultrices&felis=vel&eu=augue&sapien=vestibulum&cursus=ante&vestibulum=ipsum&proin=primis&eu=in&mi=faucibus&nulla=orci&ac=luctus&enim=et&in=ultrices&tempor=posuere&turpis=cubilia&nec=curae&euismod=donec&scelerisque=pharetra&quam=magna&turpis=vestibulum&adipiscing=aliquet&lorem=ultrices&vitae=erat&mattis=tortor');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('6', '17', 'http://blogger.com/nulla/ut.jsp?justo=porta&sit=volutpat&amet=quam&sapien=pede&dignissim=lobortis&vestibulum=ligula&vestibulum=sit&ante=amet&ipsum=eleifend&primis=pede&in=libero&faucibus=quis&orci=orci&luctus=nullam&et=molestie&ultrices=nibh&posuere=in&cubilia=lectus&curae=pellentesque&nulla=at&dapibus=nulla&dolor=suspendisse&vel=potenti&est=cras&donec=in&odio=purus&justo=eu&sollicitudin=magna&ut=vulputate&suscipit=luctus&a=cum&feugiat=sociis&et=natoque&eros=penatibus&vestibulum=et&ac=magnis&est=dis&lacinia=parturient&nisi=montes&venenatis=nascetur&tristique=ridiculus&fusce=mus&congue=vivamus&diam=vestibulum&id=sagittis&ornare=sapien&imperdiet=cum&sapien=sociis&urna=natoque&pretium=penatibus&nisl=et&ut=magnis&volutpat=dis&sapien=parturient&arcu=montes&sed=nascetur&augue=ridiculus&aliquam=mus&erat=etiam&volutpat=vel&in=augue&congue=vestibulum&etiam=rutrum&justo=rutrum&etiam=neque&pretium=aenean&iaculis=auctor&justo=gravida&in=sem&hac=praesent&habitasse=id&platea=massa&dictumst=id&etiam=nisl&faucibus=venenatis&cursus=lacinia&urna=aenean&ut=sit&tellus=amet&nulla=justo&ut=morbi');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('7', '29', 'http://prlog.org/mattis.html?amet=lacinia&diam=aenean&in=sit&magna=amet&bibendum=justo&imperdiet=morbi&nullam=ut&orci=odio&pede=cras&venenatis=mi&non=pede&sodales=malesuada&sed=in&tincidunt=imperdiet&eu=et&felis=commodo&fusce=vulputate&posuere=justo&felis=in&sed=blandit&lacus=ultrices&morbi=enim&sem=lorem&mauris=ipsum&laoreet=dolor&ut=sit&rhoncus=amet&aliquet=consectetuer&pulvinar=adipiscing&sed=elit&nisl=proin&nunc=interdum&rhoncus=mauris&dui=non&vel=ligula&sem=pellentesque&sed=ultrices&sagittis=phasellus&nam=id&congue=sapien&risus=in&semper=sapien&porta=iaculis&volutpat=congue');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('26', '40', 'http://pinterest.com/tellus/nisi/eu/orci.js?sit=risus&amet=praesent&lobortis=lectus&sapien=vestibulum&sapien=quam&non=sapien&mi=varius&integer=ut&ac=blandit&neque=non&duis=interdum&bibendum=in&morbi=ante&non=vestibulum&quam=ante&nec=ipsum&dui=primis&luctus=in&rutrum=faucibus&nulla=orci&tellus=luctus&in=et&sagittis=ultrices&dui=posuere&vel=cubilia&nisl=curae&duis=duis&ac=faucibus&nibh=accumsan&fusce=odio&lacus=curabitur&purus=convallis&aliquet=duis&at=consequat&feugiat=dui&non=nec&pretium=nisi&quis=volutpat&lectus=eleifend&suspendisse=donec&potenti=ut&in=dolor&eleifend=morbi&quam=vel&a=lectus&odio=in&in=quam&hac=fringilla&habitasse=rhoncus&platea=mauris&dictumst=enim&maecenas=leo&ut=rhoncus&massa=sed&quis=vestibulum&augue=sit&luctus=amet&tincidunt=cursus&nulla=id&mollis=turpis&molestie=integer&lorem=aliquet&quisque=massa&ut=id&erat=lobortis&curabitur=convallis&gravida=tortor&nisi=risus&at=dapibus&nibh=augue&in=vel&hac=accumsan&habitasse=tellus&platea=nisi&dictumst=eu&aliquam=orci&augue=mauris&quam=lacinia&sollicitudin=sapien&vitae=quis&consectetuer=libero&eget=nullam&rutrum=sit&at=amet&lorem=turpis&integer=elementum&tincidunt=ligula');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('23', '8', 'http://ebay.co.uk/primis/in/faucibus.jpg?ut=justo&volutpat=sit&sapien=amet&arcu=sapien&sed=dignissim&augue=vestibulum&aliquam=vestibulum&erat=ante&volutpat=ipsum&in=primis&congue=in&etiam=faucibus&justo=orci&etiam=luctus&pretium=et&iaculis=ultrices&justo=posuere&in=cubilia&hac=curae&habitasse=nulla&platea=dapibus&dictumst=dolor&etiam=vel&faucibus=est&cursus=donec&urna=odio&ut=justo&tellus=sollicitudin&nulla=ut&ut=suscipit&erat=a&id=feugiat&mauris=et&vulputate=eros');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('35', '35', 'https://youtu.be/luctus/et/ultrices/posuere/cubilia/curae.html?interdum=vestibulum&in=eget&ante=vulputate&vestibulum=ut&ante=ultrices&ipsum=vel&primis=augue&in=vestibulum&faucibus=ante&orci=ipsum&luctus=primis&et=in&ultrices=faucibus&posuere=orci&cubilia=luctus&curae=et&duis=ultrices&faucibus=posuere&accumsan=cubilia&odio=curae&curabitur=donec&convallis=pharetra&duis=magna&consequat=vestibulum&dui=aliquet&nec=ultrices&nisi=erat&volutpat=tortor&eleifend=sollicitudin&donec=mi&ut=sit&dolor=amet&morbi=lobortis&vel=sapien&lectus=sapien&in=non&quam=mi&fringilla=integer&rhoncus=ac&mauris=neque&enim=duis&leo=bibendum&rhoncus=morbi&sed=non&vestibulum=quam&sit=nec&amet=dui&cursus=luctus&id=rutrum&turpis=nulla&integer=tellus&aliquet=in&massa=sagittis&id=dui&lobortis=vel&convallis=nisl&tortor=duis&risus=ac&dapibus=nibh&augue=fusce&vel=lacus&accumsan=purus&tellus=aliquet&nisi=at&eu=feugiat&orci=non&mauris=pretium&lacinia=quis&sapien=lectus&quis=suspendisse&libero=potenti&nullam=in&sit=eleifend&amet=quam&turpis=a&elementum=odio');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('17', '30', 'http://nyu.edu/sed/tristique/in.jpg?magna=lacus&ac=morbi&consequat=sem&metus=mauris&sapien=laoreet&ut=ut&nunc=rhoncus&vestibulum=aliquet&ante=pulvinar&ipsum=sed&primis=nisl&in=nunc&faucibus=rhoncus&orci=dui&luctus=vel&et=sem&ultrices=sed&posuere=sagittis&cubilia=nam&curae=congue&mauris=risus&viverra=semper&diam=porta&vitae=volutpat&quam=quam&suspendisse=pede&potenti=lobortis&nullam=ligula&porttitor=sit&lacus=amet&at=eleifend&turpis=pede&donec=libero&posuere=quis&metus=orci&vitae=nullam&ipsum=molestie&aliquam=nibh&non=in&mauris=lectus&morbi=pellentesque&non=at&lectus=nulla&aliquam=suspendisse&sit=potenti&amet=cras');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('24', '5', 'http://sourceforge.net/cras/pellentesque/volutpat/dui/maecenas.xml?aenean=justo&lectus=sollicitudin&pellentesque=ut&eget=suscipit&nunc=a&donec=feugiat&quis=et&orci=eros&eget=vestibulum&orci=ac&vehicula=est&condimentum=lacinia&curabitur=nisi&in=venenatis&libero=tristique&ut=fusce&massa=congue&volutpat=diam&convallis=id&morbi=ornare&odio=imperdiet&odio=sapien&elementum=urna&eu=pretium&interdum=nisl&eu=ut&tincidunt=volutpat&in=sapien&leo=arcu&maecenas=sed&pulvinar=augue&lobortis=aliquam&est=erat&phasellus=volutpat&sit=in&amet=congue&erat=etiam&nulla=justo&tempus=etiam&vivamus=pretium&in=iaculis&felis=justo&eu=in&sapien=hac&cursus=habitasse&vestibulum=platea&proin=dictumst&eu=etiam&mi=faucibus&nulla=cursus&ac=urna&enim=ut&in=tellus&tempor=nulla&turpis=ut&nec=erat&euismod=id&scelerisque=mauris&quam=vulputate&turpis=elementum&adipiscing=nullam&lorem=varius&vitae=nulla&mattis=facilisi&nibh=cras&ligula=non&nec=velit&sem=nec&duis=nisi&aliquam=vulputate&convallis=nonummy&nunc=maecenas&proin=tincidunt&at=lacus&turpis=at&a=velit&pede=vivamus&posuere=vel&nonummy=nulla&integer=eget&non=eros&velit=elementum&donec=pellentesque');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('25', '14', 'https://jiathis.com/aenean/lectus/pellentesque.js?proin=ut&leo=nunc&odio=vestibulum&porttitor=ante&id=ipsum&consequat=primis&in=in&consequat=faucibus&ut=orci&nulla=luctus&sed=et&accumsan=ultrices&felis=posuere&ut=cubilia&at=curae&dolor=mauris&quis=viverra&odio=diam&consequat=vitae&varius=quam&integer=suspendisse&ac=potenti&leo=nullam&pellentesque=porttitor&ultrices=lacus&mattis=at&odio=turpis&donec=donec&vitae=posuere&nisi=metus&nam=vitae&ultrices=ipsum&libero=aliquam&non=non&mattis=mauris&pulvinar=morbi&nulla=non&pede=lectus&ullamcorper=aliquam&augue=sit&a=amet&suscipit=diam&nulla=in&elit=magna&ac=bibendum&nulla=imperdiet&sed=nullam&vel=orci&enim=pede&sit=venenatis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('38', '38', 'https://github.com/lorem/vitae/mattis/nibh.xml?nulla=penatibus&ac=et&enim=magnis&in=dis&tempor=parturient&turpis=montes&nec=nascetur&euismod=ridiculus&scelerisque=mus&quam=vivamus&turpis=vestibulum&adipiscing=sagittis&lorem=sapien&vitae=cum&mattis=sociis&nibh=natoque&ligula=penatibus&nec=et&sem=magnis&duis=dis&aliquam=parturient&convallis=montes&nunc=nascetur&proin=ridiculus&at=mus&turpis=etiam&a=vel&pede=augue&posuere=vestibulum&nonummy=rutrum&integer=rutrum&non=neque&velit=aenean&donec=auctor&diam=gravida&neque=sem&vestibulum=praesent&eget=id&vulputate=massa&ut=id&ultrices=nisl&vel=venenatis&augue=lacinia&vestibulum=aenean&ante=sit&ipsum=amet&primis=justo&in=morbi&faucibus=ut&orci=odio&luctus=cras&et=mi&ultrices=pede&posuere=malesuada&cubilia=in&curae=imperdiet&donec=et&pharetra=commodo&magna=vulputate');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('29', '34', 'https://google.ca/eu/mi.aspx?dignissim=eu&vestibulum=sapien&vestibulum=cursus&ante=vestibulum&ipsum=proin&primis=eu&in=mi&faucibus=nulla&orci=ac&luctus=enim&et=in&ultrices=tempor&posuere=turpis&cubilia=nec&curae=euismod&nulla=scelerisque&dapibus=quam&dolor=turpis&vel=adipiscing&est=lorem');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('5', '20', 'http://woothemes.com/libero.html?dictumst=erat&morbi=tortor&vestibulum=sollicitudin&velit=mi&id=sit&pretium=amet&iaculis=lobortis&diam=sapien&erat=sapien&fermentum=non&justo=mi&nec=integer&condimentum=ac&neque=neque&sapien=duis&placerat=bibendum&ante=morbi&nulla=non&justo=quam&aliquam=nec&quis=dui&turpis=luctus&eget=rutrum&elit=nulla&sodales=tellus&scelerisque=in&mauris=sagittis&sit=dui&amet=vel&eros=nisl&suspendisse=duis&accumsan=ac&tortor=nibh&quis=fusce&turpis=lacus&sed=purus&ante=aliquet&vivamus=at&tortor=feugiat&duis=non&mattis=pretium&egestas=quis&metus=lectus&aenean=suspendisse&fermentum=potenti&donec=in&ut=eleifend&mauris=quam&eget=a&massa=odio&tempor=in&convallis=hac&nulla=habitasse&neque=platea&libero=dictumst&convallis=maecenas&eget=ut');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('32', '7', 'https://homestead.com/sapien/cum.html?eros=mi&suspendisse=in&accumsan=porttitor&tortor=pede&quis=justo&turpis=eu&sed=massa&ante=donec&vivamus=dapibus&tortor=duis&duis=at&mattis=velit&egestas=eu&metus=est&aenean=congue&fermentum=elementum&donec=in&ut=hac&mauris=habitasse&eget=platea&massa=dictumst&tempor=morbi&convallis=vestibulum&nulla=velit&neque=id&libero=pretium&convallis=iaculis&eget=diam&eleifend=erat&luctus=fermentum&ultricies=justo&eu=nec&nibh=condimentum&quisque=neque&id=sapien&justo=placerat&sit=ante&amet=nulla&sapien=justo&dignissim=aliquam&vestibulum=quis&vestibulum=turpis&ante=eget&ipsum=elit&primis=sodales&in=scelerisque&faucibus=mauris&orci=sit&luctus=amet&et=eros&ultrices=suspendisse&posuere=accumsan&cubilia=tortor&curae=quis&nulla=turpis&dapibus=sed&dolor=ante&vel=vivamus&est=tortor&donec=duis&odio=mattis&justo=egestas&sollicitudin=metus&ut=aenean&suscipit=fermentum&a=donec&feugiat=ut&et=mauris&eros=eget&vestibulum=massa&ac=tempor&est=convallis&lacinia=nulla&nisi=neque&venenatis=libero&tristique=convallis&fusce=eget&congue=eleifend&diam=luctus&id=ultricies&ornare=eu&imperdiet=nibh&sapien=quisque&urna=id');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('13', '10', 'https://tuttocitta.it/in.html?ultrices=lacus&posuere=at&cubilia=velit&curae=vivamus&mauris=vel&viverra=nulla&diam=eget&vitae=eros&quam=elementum&suspendisse=pellentesque&potenti=quisque&nullam=porta&porttitor=volutpat&lacus=erat&at=quisque&turpis=erat&donec=eros&posuere=viverra&metus=eget&vitae=congue&ipsum=eget&aliquam=semper&non=rutrum&mauris=nulla&morbi=nunc&non=purus&lectus=phasellus&aliquam=in&sit=felis&amet=donec&diam=semper&in=sapien&magna=a&bibendum=libero&imperdiet=nam&nullam=dui&orci=proin&pede=leo&venenatis=odio&non=porttitor&sodales=id&sed=consequat&tincidunt=in&eu=consequat&felis=ut&fusce=nulla&posuere=sed&felis=accumsan&sed=felis&lacus=ut&morbi=at&sem=dolor&mauris=quis&laoreet=odio&ut=consequat&rhoncus=varius&aliquet=integer&pulvinar=ac&sed=leo&nisl=pellentesque&nunc=ultrices&rhoncus=mattis&dui=odio&vel=donec&sem=vitae&sed=nisi&sagittis=nam&nam=ultrices&congue=libero&risus=non&semper=mattis&porta=pulvinar&volutpat=nulla');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('12', '28', 'https://com.com/venenatis/turpis/enim/blandit/mi/in/porttitor.html?sapien=neque&arcu=aenean&sed=auctor&augue=gravida&aliquam=sem&erat=praesent&volutpat=id&in=massa&congue=id&etiam=nisl&justo=venenatis&etiam=lacinia&pretium=aenean&iaculis=sit&justo=amet&in=justo&hac=morbi&habitasse=ut&platea=odio&dictumst=cras&etiam=mi&faucibus=pede&cursus=malesuada&urna=in&ut=imperdiet&tellus=et&nulla=commodo&ut=vulputate&erat=justo&id=in');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('33', '12', 'https://pcworld.com/gravida/sem/praesent.html?consequat=pulvinar&ut=lobortis&nulla=est&sed=phasellus&accumsan=sit&felis=amet&ut=erat&at=nulla&dolor=tempus&quis=vivamus&odio=in&consequat=felis&varius=eu&integer=sapien&ac=cursus&leo=vestibulum&pellentesque=proin&ultrices=eu&mattis=mi&odio=nulla&donec=ac');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('17', '35', 'http://webmd.com/varius/integer.jsp?donec=sit&semper=amet&sapien=erat&a=nulla&libero=tempus&nam=vivamus&dui=in&proin=felis&leo=eu&odio=sapien&porttitor=cursus&id=vestibulum&consequat=proin&in=eu&consequat=mi&ut=nulla&nulla=ac&sed=enim&accumsan=in&felis=tempor&ut=turpis&at=nec&dolor=euismod&quis=scelerisque&odio=quam&consequat=turpis&varius=adipiscing&integer=lorem&ac=vitae&leo=mattis&pellentesque=nibh&ultrices=ligula&mattis=nec&odio=sem&donec=duis&vitae=aliquam&nisi=convallis&nam=nunc&ultrices=proin&libero=at&non=turpis&mattis=a&pulvinar=pede&nulla=posuere&pede=nonummy&ullamcorper=integer&augue=non&a=velit&suscipit=donec&nulla=diam&elit=neque&ac=vestibulum&nulla=eget&sed=vulputate&vel=ut&enim=ultrices&sit=vel&amet=augue&nunc=vestibulum&viverra=ante&dapibus=ipsum&nulla=primis&suscipit=in&ligula=faucibus&in=orci&lacus=luctus&curabitur=et&at=ultrices&ipsum=posuere&ac=cubilia&tellus=curae&semper=donec&interdum=pharetra&mauris=magna&ullamcorper=vestibulum&purus=aliquet&sit=ultrices&amet=erat&nulla=tortor&quisque=sollicitudin&arcu=mi&libero=sit&rutrum=amet&ac=lobortis&lobortis=sapien&vel=sapien&dapibus=non&at=mi&diam=integer&nam=ac&tristique=neque&tortor=duis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('24', '38', 'https://techcrunch.com/nisl.json?nulla=nisl&pede=aenean&ullamcorper=lectus&augue=pellentesque&a=eget&suscipit=nunc&nulla=donec&elit=quis&ac=orci&nulla=eget&sed=orci&vel=vehicula&enim=condimentum&sit=curabitur&amet=in&nunc=libero&viverra=ut&dapibus=massa&nulla=volutpat&suscipit=convallis&ligula=morbi&in=odio&lacus=odio&curabitur=elementum&at=eu&ipsum=interdum&ac=eu&tellus=tincidunt');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('22', '8', 'http://canalblog.com/morbi/non/quam/nec/dui/luctus/rutrum.jpg?diam=ipsum&neque=primis&vestibulum=in&eget=faucibus&vulputate=orci&ut=luctus&ultrices=et&vel=ultrices&augue=posuere&vestibulum=cubilia&ante=curae&ipsum=duis&primis=faucibus&in=accumsan&faucibus=odio&orci=curabitur&luctus=convallis&et=duis&ultrices=consequat&posuere=dui&cubilia=nec&curae=nisi&donec=volutpat&pharetra=eleifend&magna=donec&vestibulum=ut&aliquet=dolor&ultrices=morbi&erat=vel&tortor=lectus&sollicitudin=in&mi=quam&sit=fringilla&amet=rhoncus&lobortis=mauris&sapien=enim&sapien=leo&non=rhoncus&mi=sed&integer=vestibulum&ac=sit&neque=amet&duis=cursus&bibendum=id&morbi=turpis&non=integer&quam=aliquet&nec=massa&dui=id&luctus=lobortis&rutrum=convallis&nulla=tortor&tellus=risus&in=dapibus&sagittis=augue&dui=vel&vel=accumsan&nisl=tellus&duis=nisi&ac=eu&nibh=orci&fusce=mauris&lacus=lacinia&purus=sapien&aliquet=quis&at=libero&feugiat=nullam&non=sit&pretium=amet&quis=turpis&lectus=elementum&suspendisse=ligula&potenti=vehicula&in=consequat&eleifend=morbi&quam=a&a=ipsum&odio=integer&in=a&hac=nibh');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('32', '2', 'http://paginegialle.it/erat/eros/viverra/eget/congue/eget/semper.json?vulputate=pharetra&justo=magna&in=vestibulum&blandit=aliquet&ultrices=ultrices&enim=erat&lorem=tortor&ipsum=sollicitudin&dolor=mi&sit=sit&amet=amet&consectetuer=lobortis&adipiscing=sapien&elit=sapien&proin=non&interdum=mi&mauris=integer&non=ac&ligula=neque&pellentesque=duis&ultrices=bibendum&phasellus=morbi&id=non&sapien=quam&in=nec&sapien=dui&iaculis=luctus&congue=rutrum&vivamus=nulla&metus=tellus&arcu=in&adipiscing=sagittis&molestie=dui&hendrerit=vel&at=nisl&vulputate=duis&vitae=ac&nisl=nibh&aenean=fusce&lectus=lacus&pellentesque=purus&eget=aliquet&nunc=at&donec=feugiat&quis=non&orci=pretium&eget=quis&orci=lectus&vehicula=suspendisse&condimentum=potenti&curabitur=in&in=eleifend&libero=quam&ut=a&massa=odio&volutpat=in&convallis=hac&morbi=habitasse&odio=platea&odio=dictumst&elementum=maecenas&eu=ut&interdum=massa&eu=quis&tincidunt=augue&in=luctus&leo=tincidunt&maecenas=nulla&pulvinar=mollis');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('38', '32', 'http://pinterest.com/odio/donec.html?morbi=quam&a=pharetra&ipsum=magna&integer=ac&a=consequat&nibh=metus&in=sapien&quis=ut&justo=nunc&maecenas=vestibulum&rhoncus=ante&aliquam=ipsum&lacus=primis&morbi=in&quis=faucibus&tortor=orci&id=luctus&nulla=et&ultrices=ultrices&aliquet=posuere&maecenas=cubilia&leo=curae&odio=mauris&condimentum=viverra&id=diam&luctus=vitae&nec=quam&molestie=suspendisse&sed=potenti&justo=nullam&pellentesque=porttitor&viverra=lacus&pede=at&ac=turpis&diam=donec&cras=posuere&pellentesque=metus&volutpat=vitae&dui=ipsum&maecenas=aliquam&tristique=non&est=mauris&et=morbi&tempus=non&semper=lectus&est=aliquam&quam=sit&pharetra=amet&magna=diam&ac=in&consequat=magna&metus=bibendum&sapien=imperdiet&ut=nullam&nunc=orci&vestibulum=pede&ante=venenatis&ipsum=non&primis=sodales&in=sed&faucibus=tincidunt&orci=eu&luctus=felis&et=fusce&ultrices=posuere&posuere=felis&cubilia=sed&curae=lacus&mauris=morbi&viverra=sem&diam=mauris&vitae=laoreet&quam=ut&suspendisse=rhoncus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('29', '33', 'http://cornell.edu/pede/venenatis/non/sodales.json?sollicitudin=dictumst&mi=morbi&sit=vestibulum&amet=velit&lobortis=id&sapien=pretium&sapien=iaculis&non=diam&mi=erat&integer=fermentum&ac=justo&neque=nec&duis=condimentum&bibendum=neque&morbi=sapien&non=placerat&quam=ante&nec=nulla&dui=justo&luctus=aliquam&rutrum=quis&nulla=turpis&tellus=eget&in=elit&sagittis=sodales&dui=scelerisque&vel=mauris&nisl=sit&duis=amet&ac=eros&nibh=suspendisse&fusce=accumsan&lacus=tortor&purus=quis&aliquet=turpis&at=sed&feugiat=ante&non=vivamus&pretium=tortor&quis=duis&lectus=mattis&suspendisse=egestas&potenti=metus');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('19', '30', 'http://booking.com/quisque/ut/erat/curabitur/gravida/nisi/at.json?metus=in&aenean=congue&fermentum=etiam&donec=justo&ut=etiam&mauris=pretium&eget=iaculis&massa=justo&tempor=in&convallis=hac&nulla=habitasse&neque=platea&libero=dictumst&convallis=etiam&eget=faucibus&eleifend=cursus&luctus=urna&ultricies=ut&eu=tellus&nibh=nulla&quisque=ut&id=erat&justo=id&sit=mauris&amet=vulputate&sapien=elementum&dignissim=nullam&vestibulum=varius&vestibulum=nulla&ante=facilisi&ipsum=cras&primis=non&in=velit');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('15', '14', 'https://nih.gov/quis/justo.aspx?sit=in&amet=quis&lobortis=justo&sapien=maecenas&sapien=rhoncus&non=aliquam&mi=lacus&integer=morbi&ac=quis&neque=tortor&duis=id&bibendum=nulla&morbi=ultrices&non=aliquet&quam=maecenas&nec=leo&dui=odio&luctus=condimentum&rutrum=id&nulla=luctus&tellus=nec&in=molestie&sagittis=sed&dui=justo&vel=pellentesque&nisl=viverra&duis=pede&ac=ac&nibh=diam&fusce=cras&lacus=pellentesque&purus=volutpat&aliquet=dui&at=maecenas&feugiat=tristique&non=est&pretium=et&quis=tempus&lectus=semper&suspendisse=est&potenti=quam&in=pharetra&eleifend=magna&quam=ac&a=consequat&odio=metus&in=sapien&hac=ut&habitasse=nunc&platea=vestibulum&dictumst=ante&maecenas=ipsum&ut=primis&massa=in&quis=faucibus&augue=orci&luctus=luctus&tincidunt=et&nulla=ultrices&mollis=posuere&molestie=cubilia&lorem=curae&quisque=mauris&ut=viverra&erat=diam&curabitur=vitae&gravida=quam&nisi=suspendisse&at=potenti&nibh=nullam&in=porttitor&hac=lacus&habitasse=at');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('12', '23', 'http://ox.ac.uk/odio/cras/mi/pede.html?habitasse=vehicula&platea=consequat&dictumst=morbi&etiam=a&faucibus=ipsum&cursus=integer&urna=a&ut=nibh');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('14', '31', 'http://hexun.com/mauris/morbi/non/lectus/aliquam.jpg?lacus=ac&at=diam&velit=cras&vivamus=pellentesque&vel=volutpat&nulla=dui&eget=maecenas&eros=tristique&elementum=est&pellentesque=et&quisque=tempus&porta=semper&volutpat=est&erat=quam&quisque=pharetra&erat=magna&eros=ac&viverra=consequat&eget=metus&congue=sapien&eget=ut&semper=nunc&rutrum=vestibulum&nulla=ante&nunc=ipsum&purus=primis&phasellus=in&in=faucibus&felis=orci&donec=luctus&semper=et&sapien=ultrices&a=posuere&libero=cubilia&nam=curae&dui=mauris&proin=viverra&leo=diam&odio=vitae&porttitor=quam&id=suspendisse&consequat=potenti&in=nullam&consequat=porttitor&ut=lacus&nulla=at&sed=turpis&accumsan=donec&felis=posuere&ut=metus&at=vitae&dolor=ipsum&quis=aliquam&odio=non&consequat=mauris&varius=morbi&integer=non&ac=lectus&leo=aliquam&pellentesque=sit&ultrices=amet&mattis=diam&odio=in&donec=magna&vitae=bibendum&nisi=imperdiet&nam=nullam&ultrices=orci&libero=pede&non=venenatis&mattis=non&pulvinar=sodales&nulla=sed&pede=tincidunt');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('28', '21', 'http://fastcompany.com/eget/massa/tempor/convallis/nulla/neque/libero.jpg?faucibus=vel&accumsan=nulla&odio=eget&curabitur=eros&convallis=elementum&duis=pellentesque&consequat=quisque&dui=porta&nec=volutpat&nisi=erat&volutpat=quisque&eleifend=erat&donec=eros&ut=viverra&dolor=eget&morbi=congue&vel=eget&lectus=semper&in=rutrum&quam=nulla&fringilla=nunc&rhoncus=purus&mauris=phasellus&enim=in&leo=felis&rhoncus=donec&sed=semper&vestibulum=sapien&sit=a&amet=libero&cursus=nam&id=dui&turpis=proin&integer=leo&aliquet=odio&massa=porttitor&id=id&lobortis=consequat&convallis=in&tortor=consequat&risus=ut&dapibus=nulla&augue=sed');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('5', '39', 'http://prweb.com/eget/massa/tempor.xml?bibendum=pulvinar&felis=nulla&sed=pede&interdum=ullamcorper&venenatis=augue&turpis=a&enim=suscipit&blandit=nulla&mi=elit&in=ac&porttitor=nulla&pede=sed&justo=vel&eu=enim&massa=sit&donec=amet&dapibus=nunc&duis=viverra&at=dapibus&velit=nulla&eu=suscipit&est=ligula&congue=in&elementum=lacus&in=curabitur&hac=at&habitasse=ipsum&platea=ac&dictumst=tellus&morbi=semper&vestibulum=interdum&velit=mauris&id=ullamcorper&pretium=purus&iaculis=sit&diam=amet&erat=nulla&fermentum=quisque&justo=arcu');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('4', '27', 'https://ebay.co.uk/etiam/justo/etiam/pretium/iaculis/justo.jpg?lacinia=dictumst&nisi=morbi&venenatis=vestibulum&tristique=velit&fusce=id&congue=pretium&diam=iaculis&id=diam&ornare=erat&imperdiet=fermentum&sapien=justo&urna=nec&pretium=condimentum&nisl=neque&ut=sapien&volutpat=placerat&sapien=ante&arcu=nulla&sed=justo');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('26', '20', 'https://ovh.net/erat/volutpat/in/congue/etiam/justo/etiam.html?rhoncus=urna&sed=pretium&vestibulum=nisl&sit=ut&amet=volutpat&cursus=sapien&id=arcu&turpis=sed&integer=augue&aliquet=aliquam&massa=erat&id=volutpat&lobortis=in&convallis=congue&tortor=etiam&risus=justo&dapibus=etiam&augue=pretium&vel=iaculis&accumsan=justo&tellus=in&nisi=hac&eu=habitasse&orci=platea&mauris=dictumst&lacinia=etiam&sapien=faucibus&quis=cursus&libero=urna');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('31', '6', 'http://i2i.jp/in/tempus.jpg?ac=integer&diam=non&cras=velit&pellentesque=donec&volutpat=diam&dui=neque&maecenas=vestibulum&tristique=eget&est=vulputate&et=ut&tempus=ultrices&semper=vel&est=augue&quam=vestibulum&pharetra=ante&magna=ipsum&ac=primis&consequat=in&metus=faucibus&sapien=orci&ut=luctus&nunc=et&vestibulum=ultrices&ante=posuere&ipsum=cubilia&primis=curae&in=donec&faucibus=pharetra&orci=magna&luctus=vestibulum&et=aliquet&ultrices=ultrices&posuere=erat&cubilia=tortor&curae=sollicitudin&mauris=mi&viverra=sit&diam=amet&vitae=lobortis&quam=sapien&suspendisse=sapien&potenti=non&nullam=mi&porttitor=integer&lacus=ac&at=neque&turpis=duis&donec=bibendum&posuere=morbi&metus=non&vitae=quam&ipsum=nec&aliquam=dui&non=luctus&mauris=rutrum&morbi=nulla&non=tellus&lectus=in&aliquam=sagittis&sit=dui&amet=vel&diam=nisl&in=duis&magna=ac&bibendum=nibh&imperdiet=fusce&nullam=lacus&orci=purus&pede=aliquet&venenatis=at&non=feugiat&sodales=non&sed=pretium&tincidunt=quis&eu=lectus&felis=suspendisse&fusce=potenti&posuere=in&felis=eleifend');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('36', '25', 'http://nps.gov/sapien/placerat/ante.xml?mi=in&integer=magna&ac=bibendum&neque=imperdiet&duis=nullam&bibendum=orci&morbi=pede&non=venenatis&quam=non&nec=sodales&dui=sed&luctus=tincidunt&rutrum=eu&nulla=felis&tellus=fusce&in=posuere&sagittis=felis&dui=sed&vel=lacus&nisl=morbi&duis=sem&ac=mauris&nibh=laoreet&fusce=ut&lacus=rhoncus&purus=aliquet&aliquet=pulvinar&at=sed&feugiat=nisl&non=nunc&pretium=rhoncus&quis=dui&lectus=vel&suspendisse=sem&potenti=sed&in=sagittis&eleifend=nam&quam=congue&a=risus&odio=semper&in=porta&hac=volutpat&habitasse=quam&platea=pede&dictumst=lobortis&maecenas=ligula&ut=sit&massa=amet&quis=eleifend&augue=pede&luctus=libero&tincidunt=quis&nulla=orci&mollis=nullam&molestie=molestie&lorem=nibh&quisque=in&ut=lectus&erat=pellentesque&curabitur=at&gravida=nulla&nisi=suspendisse&at=potenti&nibh=cras&in=in&hac=purus&habitasse=eu&platea=magna&dictumst=vulputate&aliquam=luctus&augue=cum&quam=sociis&sollicitudin=natoque&vitae=penatibus&consectetuer=et');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('13', '17', 'https://taobao.com/nunc/rhoncus/dui/vel.json?et=ac&magnis=est&dis=lacinia&parturient=nisi&montes=venenatis&nascetur=tristique&ridiculus=fusce&mus=congue&vivamus=diam&vestibulum=id&sagittis=ornare&sapien=imperdiet&cum=sapien&sociis=urna&natoque=pretium&penatibus=nisl&et=ut&magnis=volutpat&dis=sapien&parturient=arcu&montes=sed&nascetur=augue&ridiculus=aliquam&mus=erat&etiam=volutpat&vel=in&augue=congue&vestibulum=etiam&rutrum=justo&rutrum=etiam&neque=pretium&aenean=iaculis&auctor=justo&gravida=in&sem=hac&praesent=habitasse&id=platea&massa=dictumst&id=etiam&nisl=faucibus&venenatis=cursus&lacinia=urna&aenean=ut&sit=tellus&amet=nulla&justo=ut&morbi=erat&ut=id&odio=mauris&cras=vulputate&mi=elementum&pede=nullam&malesuada=varius&in=nulla&imperdiet=facilisi&et=cras&commodo=non&vulputate=velit&justo=nec&in=nisi&blandit=vulputate&ultrices=nonummy&enim=maecenas&lorem=tincidunt&ipsum=lacus&dolor=at&sit=velit&amet=vivamus&consectetuer=vel&adipiscing=nulla&elit=eget&proin=eros&interdum=elementum&mauris=pellentesque&non=quisque&ligula=porta&pellentesque=volutpat&ultrices=erat&phasellus=quisque&id=erat&sapien=eros&in=viverra&sapien=eget&iaculis=congue&congue=eget&vivamus=semper&metus=rutrum&arcu=nulla&adipiscing=nunc&molestie=purus&hendrerit=phasellus&at=in&vulputate=felis&vitae=donec&nisl=semper&aenean=sapien&lectus=a&pellentesque=libero&eget=nam');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('16', '34', 'http://example.com/massa/quis/augue/luctus.png?dolor=nibh&sit=in&amet=hac&consectetuer=habitasse&adipiscing=platea&elit=dictumst&proin=aliquam&risus=augue&praesent=quam&lectus=sollicitudin&vestibulum=vitae&quam=consectetuer&sapien=eget&varius=rutrum&ut=at&blandit=lorem&non=integer&interdum=tincidunt&in=ante&ante=vel&vestibulum=ipsum&ante=praesent&ipsum=blandit&primis=lacinia&in=erat&faucibus=vestibulum&orci=sed&luctus=magna&et=at&ultrices=nunc&posuere=commodo&cubilia=placerat&curae=praesent&duis=blandit&faucibus=nam&accumsan=nulla&odio=integer&curabitur=pede&convallis=justo&duis=lacinia&consequat=eget&dui=tincidunt&nec=eget&nisi=tempus&volutpat=vel&eleifend=pede&donec=morbi&ut=porttitor&dolor=lorem&morbi=id&vel=ligula&lectus=suspendisse&in=ornare&quam=consequat&fringilla=lectus&rhoncus=in&mauris=est&enim=risus&leo=auctor&rhoncus=sed&sed=tristique');
insert into streamed_movies (movieId, StreamingCompanyId, link) values ('21', '9', 'https://odnoklassniki.ru/vitae/nisi/nam.json?maecenas=nam&pulvinar=congue&lobortis=risus&est=semper&phasellus=porta&sit=volutpat&amet=quam&erat=pede&nulla=lobortis&tempus=ligula&vivamus=sit&in=amet&felis=eleifend&eu=pede&sapien=libero&cursus=quis&vestibulum=orci&proin=nullam&eu=molestie&mi=nibh&nulla=in&ac=lectus&enim=pellentesque&in=at&tempor=nulla&turpis=suspendisse&nec=potenti&euismod=cras&scelerisque=in&quam=purus&turpis=eu&adipiscing=magna&lorem=vulputate&vitae=luctus&mattis=cum&nibh=sociis&ligula=natoque&nec=penatibus&sem=et&duis=magnis&aliquam=dis&convallis=parturient');