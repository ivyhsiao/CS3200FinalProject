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

create table Movie (
  MovieID INTEGER AUTO_INCREMENT NOT NULL,
	Title VARCHAR(50),
	MovieLanguage VARCHAR(50),
	Description TEXT,
	MovieLength INT,
	ProductionCost VARCHAR(50),
	YearMade VARCHAR(50),
	NumOfLikes INT,
    
  PRIMARY KEY(MovieID)
);

insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Effect of Gamma Rays on Man-in-the-Moon Marigolds, The', 'Swahili', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 126, '$7082001.78', 2003, 541059093);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Breaking Wind', 'Māori', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 157, '$5482588.38', 1995, 544926510);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Spiders, Part 2: The Diamond Ship, The (Die Spinnen, 2. Teil - Das Brillantenschiff)', 'Macedonian', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 150, '$2281685.95', 1961, 373707455);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Apartment 1303', 'English', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 174, '$1072074.33', 1994, 434308669);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Hit and Run (Hit & Run)', 'Filipino', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 111, '$5909680.56', 2009, 989747377);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Our Town', 'Yiddish', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 117, '$292019.99', 1998, 767444121);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Marfa Girl', 'Kyrgyz', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 97, '$826810.66', 2012, 848341202);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Three Days of the Condor (3 Days of the Condor)', 'Armenian', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 89, '$4213371.42', 2006, 255384172);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Phantom, The', 'Burmese', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 128, '$1329506.45', 2006, 863738819);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Walled In', 'Guaraní', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 176, '$249411.06', 2010, 387778968);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Zapped!', 'Finnish', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 76, '$7796668.70', 1993, 235840324);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Zatoichi in Desperation (Shin Zatôichi monogatari: Oreta tsue) (Zatôichi 24)', 'Punjabi', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 101, '$7446336.56', 2000, 933398561);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Mei and the Kittenbus', 'Lao', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 102, '$2323029.29', 2008, 206283187);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Expecting Love (Mala wielka milosc)', 'Guaraní', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 158, '$1947347.28', 2000, 539211441);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('We''re Back! A Dinosaur''s Story', 'Dutch', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 80, '$8325106.89', 1986, 736899710);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Very Happy Alexander (Alexandre le bienheureux)', 'Lao', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 113, '$1027736.05', 2010, 318727505);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Traces of Red', 'New Zealand Sign Language', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 113, '$8514833.17', 2013, 762535086);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Teacher''s Pet', 'Swedish', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 141, '$7600612.80', 1992, 906625427);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Por un puñado de besos', 'Somali', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 141, '$531706.01', 2004, 790124514);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Crow: City of Angels, The', 'Polish', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 137, '$5214886.12', 2002, 740000973);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Gator', 'Croatian', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 107, '$7714088.94', 1999, 141254877);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Rent-a-Kid', 'German', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 152, '$5216004.43', 2009, 45356235);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Good Old Fashioned Orgy, A', 'Māori', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 144, '$6322862.41', 1995, 590944925);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('976-EVIL II', 'Telugu', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 161, '$4674695.98', 2000, 776528933);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Chamber of Death (Chambre des morts, La)', 'Fijian', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 127, '$709048.47', 2004, 752303588);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Night and Day (Bam gua nat)', 'Thai', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 73, '$7371648.57', 2011, 176321186);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Hangover Part II, The', 'Maltese', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 73, '$7622043.06', 2004, 318010936);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Twelve Monkeys (a.k.a. 12 Monkeys)', 'Portuguese', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 84, '$3893156.19', 1992, 237398159);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Errors of the Human Body ', 'Bosnian', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 92, '$4684046.35', 2011, 192342950);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Phantom of Liberty, The (Fantôme de la liberté, Le)', 'Hindi', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 130, '$108205.69', 2004, 484936363);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Strange Magic', 'Croatian', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 175, '$9226259.97', 2001, 281301872);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Phaedra', 'Italian', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 105, '$3071070.33', 2007, 55718982);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Zhou Yu''s Train (Zhou Yu de huo che)', 'Nepali', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 85, '$7679149.30', 2000, 893039352);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Sube y Baja', 'Tsonga', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 92, '$8215988.79', 1986, 904833700);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Cheech & Chong''s Nice Dreams', 'Croatian', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 155, '$5701167.17', 2005, 38764075);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Duets', 'Persian', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 109, '$5524733.34', 1995, 395226389);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Wool Cap, The', 'Amharic', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 146, '$1280751.45', 1993, 341889927);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Babylon 5: The Gathering', 'Georgian', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 73, '$6556710.46', 2007, 78262555);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Eureka', 'Oriya', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 173, '$3449012.27', 1993, 99653148);
insert into Movie (Title, MovieLanguage, Description, MovieLength, ProductionCost, YearMade, NumOfLikes) values ('Hell Is for Heroes', 'Malayalam', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 160, '$3206433.56', 1983, 576723062);

CREATE TABLE Genre (
    GenreID int AUTO_INCREMENT NOT NULL,
    GenreName varchar(40) NOT NULL,

    PRIMARY KEY(GenreID),
    UNIQUE(GenreName)
);

insert into Genre (GenreName) values ('Comedy');
insert into Genre (GenreName) values ('Drama');
insert into Genre (GenreName) values ('Children');
insert into Genre (GenreName) values ('Adventure');
insert into Genre (GenreName) values ('Action');
insert into Genre (GenreName) values ('Crime');
insert into Genre (GenreName) values ('Musical');
insert into Genre (GenreName) values ('Romance');
insert into Genre (GenreName) values ('Mystery');
insert into Genre (GenreName) values ('Horror');

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

create table actors (
  ActorID INTEGER AUTO_INCREMENT NOT NULL,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	country VARCHAR(50),
	phone VARCHAR(50),

  PRIMARY KEY(ActorID),
  UNIQUE (Email, Phone)
);

insert into actors (FirstName, LastName, email, gender, country, phone) values ('Dillie', 'Bowra', 'dbowra0@cafepress.com', 'Agender', 'Philippines', '339-421-5930');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Sax', 'Tolumello', 'stolumello1@drupal.org', 'Male', 'Russia', '892-938-3002');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Justinn', 'Pargetter', 'jpargetter2@nature.com', 'Bigender', 'China', '862-778-8067');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Janean', 'Beldum', 'jbeldum3@dropbox.com', 'Female', 'China', '512-581-4907');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Earlie', 'Kleine', 'ekleine4@marriott.com', 'Male', 'Portugal', '186-543-2310');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Kathe', 'Di Boldi', 'kdiboldi5@fda.gov', 'Female', 'Latvia', '822-805-6637');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Flemming', 'Gerrell', 'fgerrell6@multiply.com', 'Genderfluid', 'China', '531-948-5272');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Alisander', 'Clement', 'aclement7@histats.com', 'Male', 'Mongolia', '262-156-3287');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('August', 'Neeve', 'aneeve8@wiley.com', 'Genderfluid', 'Uganda', '299-483-1210');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Gonzalo', 'Cackett', 'gcackett9@si.edu', 'Male', 'Ukraine', '191-511-8606');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Madel', 'Huyton', 'mhuytona@mapy.cz', 'Female', 'Brazil', '412-381-9305');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Raven', 'Merriman', 'rmerrimanb@barnesandnoble.com', 'Female', 'Tanzania', '545-463-9420');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Rubin', 'Thominga', 'rthomingac@wired.com', 'Male', 'Kazakhstan', '481-896-9429');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Ase', 'Rowlands', 'arowlandsd@rambler.ru', 'Male', 'Ireland', '629-655-9858');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Jeremiah', 'Mateev', 'jmateeve@state.gov', 'Male', 'Mauritius', '872-188-9471');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Penelopa', 'Harbinson', 'pharbinsonf@google.com.au', 'Female', 'China', '975-663-5490');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Conny', 'Frandsen', 'cfrandseng@shareasale.com', 'Male', 'Palestinian Territory', '162-789-3488');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Crystie', 'Kaasmann', 'ckaasmannh@t.co', 'Female', 'North Korea', '391-386-6141');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Culley', 'Arias', 'cariasi@uiuc.edu', 'Male', 'Portugal', '445-409-2908');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Cecilio', 'Jiracek', 'cjiracekj@ihg.com', 'Male', 'China', '501-585-1486');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Arlie', 'Aspden', 'aaspdenk@godaddy.com', 'Female', 'China', '232-737-1045');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Ilsa', 'Baldetti', 'ibaldettil@istockphoto.com', 'Female', 'Poland', '799-533-7623');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Dalton', 'Annear', 'dannearm@photobucket.com', 'Male', 'Peru', '101-186-0404');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Linus', 'Merrington', 'lmerringtonn@imdb.com', 'Male', 'Japan', '128-901-4323');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Hilde', 'Bellanger', 'hbellangero@state.tx.us', 'Female', 'China', '202-261-7089');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Chery', 'Gilbart', 'cgilbartp@wired.com', 'Female', 'United States', '414-990-5978');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Krystle', 'Nehl', 'knehlq@prweb.com', 'Female', 'Sweden', '254-956-6861');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Sander', 'Drysdale', 'sdrysdaler@patch.com', 'Male', 'Indonesia', '275-476-1346');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Zachariah', 'Beauchamp', 'zbeauchamps@msn.com', 'Male', 'Philippines', '843-198-4286');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Lemmy', 'Travis', 'ltravist@yandex.ru', 'Male', 'Poland', '716-627-1125');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Ferdinanda', 'Chesshyre', 'fchesshyreu@twitpic.com', 'Female', 'Sweden', '299-922-3101');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Pavla', 'Paulat', 'ppaulatv@1688.com', 'Polygender', 'Indonesia', '107-597-7968');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Gael', 'Wibrow', 'gwibroww@yelp.com', 'Male', 'Philippines', '133-132-1182');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Nata', 'Frise', 'nfrisex@sun.com', 'Female', 'Kenya', '868-625-3256');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Kennie', 'Gisbey', 'kgisbeyy@live.com', 'Male', 'Portugal', '651-325-9113');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Erek', 'Brigg', 'ebriggz@last.fm', 'Male', 'Philippines', '642-341-4110');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Baudoin', 'Dyke', 'bdyke10@auda.org.au', 'Male', 'France', '161-984-6871');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Alfie', 'Openshaw', 'aopenshaw11@homestead.com', 'Male', 'France', '778-143-8264');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Iolande', 'Law', 'ilaw12@yale.edu', 'Female', 'Indonesia', '946-284-4968');
insert into actors (FirstName, LastName, email, gender, country, phone) values ('Dennie', 'Walding', 'dwalding13@statcounter.com', 'Male', 'Iran', '418-487-4168');

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

CREATE TABLE ProductionCompany(
  studioid INTEGER AUTO_INCREMENT NOT NULL,
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

insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Hauck Group', 'ytrengrove0@php.net', '282-642-9354', 'China', null, 'Chenghe', '41751 Summit Court');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Grady-Moore', 'wbrundill1@discuz.net', '310-296-6411', 'Philippines', null, 'Aliaga', '5 Packers Place');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Doyle-Huels', 'snoye2@amazon.co.jp', '888-790-7423', 'Dominican Republic', null, 'Juan Santiago', '55 Esker Center');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Klocko, Huel and O''Hara', 'rmargarson3@free.fr', '483-239-6681', 'Russia', null, 'Dachnoye', '1943 Arizona Court');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Schneider-Volkman', 'jriditch4@cisco.com', '932-422-0118', 'Poland', null, 'Świętochłowice', '2 Clemons Point');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Flatley and Sons', 'pvallis5@bandcamp.com', '479-394-1791', 'Poland', null, 'Wola Uhruska', '04 Aberg Pass');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Bashirian LLC', 'tperassi6@virginia.edu', '146-364-3808', 'Ukraine', null, 'Lebedyn', '53324 Mockingbird Way');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Stiedemann-Lubowitz', 'ejudron7@nasa.gov', '821-710-7021', 'China', null, 'Tieba', '539 Bashford Center');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Ziemann, Sanford and Hansen', 'chuws8@google.com.br', '456-207-9441', 'China', null, 'Qian’an', '02 Lakewood Road');
insert into ProductionCompany (CompanyName, Email, Phone, Country, State, City, Street) values ('Nicolas-Boyle', 'agyngyll9@marketwatch.com', '779-169-1847', 'Portugal', 'Leiria', 'Jardoeira', '65 Gateway Lane');


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

create table user (
  userid INTEGER AUTO_INCREMENT NOT NULL,
  FirstName VARCHAR(50),
	LastName VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50),

  PRIMARY KEY(userid),
  UNIQUE(email)
);
insert into user (FirstName, LastName, email, password) values ('Mara', 'Gounin', 'mgounin0@washingtonpost.com', 'efK9Gw6BLvW0');
insert into user (FirstName, LastName, email, password) values ('Keane', 'Jerrolt', 'kjerrolt1@goodreads.com', '4bKsk7An');
insert into user (FirstName, LastName, email, password) values ('Case', 'Gainsboro', 'cgainsboro2@thetimes.co.uk', 'vy6pci');
insert into user (FirstName, LastName, email, password) values ('Emmalynne', 'Dearlove', 'edearlove3@yahoo.com', 'krUhX1bhS');
insert into user (FirstName, LastName, email, password) values ('Dagmar', 'Pennycuick', 'dpennycuick4@instagram.com', 'sSNdteRop');
insert into user (FirstName, LastName, email, password) values ('Roscoe', 'Pawden', 'rpawden5@zdnet.com', 'DIfjNs4UeA');
insert into user (FirstName, LastName, email, password) values ('Krissy', 'Finden', 'kfinden6@xrea.com', 'Ddjsd4bP');
insert into user (FirstName, LastName, email, password) values ('Christabella', 'Giovannilli', 'cgiovannilli7@wix.com', 'w5HgRyd');
insert into user (FirstName, LastName, email, password) values ('Norma', 'Gramer', 'ngramer8@ehow.com', 'zsjMuCKN1H');
insert into user (FirstName, LastName, email, password) values ('Lynde', 'Nekrews', 'lnekrews9@scribd.com', 'N848Z8');
insert into user (FirstName, LastName, email, password) values ('Gleda', 'Perkinson', 'gperkinsona@free.fr', 'QQ5bl2oz0');
insert into user (FirstName, LastName, email, password) values ('Johnette', 'Corringham', 'jcorringhamb@technorati.com', '3hHw3L50SK');
insert into user (FirstName, LastName, email, password) values ('Harold', 'Danford', 'hdanfordc@360.cn', 'Q4NQcDe1');
insert into user (FirstName, LastName, email, password) values ('Alikee', 'Halfacree', 'ahalfacreed@cpanel.net', 'hN5NSF');
insert into user (FirstName, LastName, email, password) values ('Adelina', 'Shoebottom', 'ashoebottome@zimbio.com', 'HEnd9poWRov');
insert into user (FirstName, LastName, email, password) values ('Clo', 'Clifford', 'ccliffordf@eepurl.com', 'Y68eHVPn0FV');
insert into user (FirstName, LastName, email, password) values ('Irma', 'Griffe', 'igriffeg@fc2.com', 'xATHFyhMURqh');
insert into user (FirstName, LastName, email, password) values ('Hyacinth', 'Luttger', 'hluttgerh@goodreads.com', 'CNx495');
insert into user (FirstName, LastName, email, password) values ('Parry', 'Sollon', 'psolloni@youtu.be', 'NMWyjZvL8fu');
insert into user (FirstName, LastName, email, password) values ('Myrlene', 'Cobbe', 'mcobbej@theatlantic.com', 'v31KOl7RE');
insert into user (FirstName, LastName, email, password) values ('Dugald', 'Duigan', 'dduigank@ucoz.ru', '5O4YPqNdOroA');
insert into user (FirstName, LastName, email, password) values ('Natalya', 'Loakes', 'nloakesl@diigo.com', 'aswENO8qV6J8');
insert into user (FirstName, LastName, email, password) values ('Jamaal', 'Orteu', 'jorteum@fotki.com', 'XBptIuL');
insert into user (FirstName, LastName, email, password) values ('Rayna', 'Galpin', 'rgalpinn@google.com.hk', 'pTm44AL');
insert into user (FirstName, LastName, email, password) values ('Shelley', 'Aubury', 'sauburyo@mysql.com', 'ksvgjU');
insert into user (FirstName, LastName, email, password) values ('Bryan', 'Lillecrap', 'blillecrapp@amazon.co.jp', 'wk6skPWiG');
insert into user (FirstName, LastName, email, password) values ('Shell', 'Geistbeck', 'sgeistbeckq@hexun.com', 'oKsJYtEkF5N8');
insert into user (FirstName, LastName, email, password) values ('Derron', 'Francesc', 'dfrancescr@dagondesign.com', 'VZJecud');
insert into user (FirstName, LastName, email, password) values ('Carmen', 'Eckels', 'ceckelss@google.pl', 'iAGINBZDVI');
insert into user (FirstName, LastName, email, password) values ('Dani', 'Charlewood', 'dcharlewoodt@storify.com', 'ckSk7uftl');
insert into user (FirstName, LastName, email, password) values ('Zachery', 'Duthie', 'zduthieu@typepad.com', 'K3JMECL');
insert into user (FirstName, LastName, email, password) values ('Johny', 'Shirtliff', 'jshirtliffv@sciencedaily.com', 'tE3IiK');
insert into user (FirstName, LastName, email, password) values ('Robbi', 'Basset', 'rbassetw@telegraph.co.uk', '7NFxIqWZyNw');
insert into user (FirstName, LastName, email, password) values ('Quent', 'Bauser', 'qbauserx@google.es', 'g8tCUTKqnVXr');
insert into user (FirstName, LastName, email, password) values ('Sarette', 'Donoghue', 'sdonoghuey@rediff.com', 'IJffiUPq');
insert into user (FirstName, LastName, email, password) values ('Tracie', 'Geikie', 'tgeikiez@posterous.com', 'NxkwRL2a0');
insert into user (FirstName, LastName, email, password) values ('Rodrick', 'Gibbins', 'rgibbins10@xing.com', 'aKNsb1');
insert into user (FirstName, LastName, email, password) values ('Carmen', 'Roussel', 'croussel11@wunderground.com', '55s1REg1t4');
insert into user (FirstName, LastName, email, password) values ('Stacey', 'Karoly', 'skaroly12@spotify.com', 'MLNOy6f');
insert into user (FirstName, LastName, email, password) values ('Edvard', 'Berrisford', 'eberrisford13@goo.ne.jp', 'tsCYUccEHnk8');
insert into user (FirstName, LastName, email, password) values ('Merrilee', 'Beetles', 'mbeetles14@barnesandnoble.com', 'T9CSEZrjs7F');
insert into user (FirstName, LastName, email, password) values ('Jessalyn', 'Luker', 'jluker15@weebly.com', 'aYuCCW');
insert into user (FirstName, LastName, email, password) values ('Ambrose', 'Gyngyll', 'agyngyll16@apple.com', 'avPi9VO');
insert into user (FirstName, LastName, email, password) values ('Sunny', 'Moyles', 'smoyles17@moonfruit.com', 'h5L2nY1ujZ');
insert into user (FirstName, LastName, email, password) values ('Elisa', 'Hanselmann', 'ehanselmann18@ycombinator.com', 'M250SLPBcL');
insert into user (FirstName, LastName, email, password) values ('Jobye', 'McCome', 'jmccome19@acquirethisname.com', 'YCi0KpZA');
insert into user (FirstName, LastName, email, password) values ('Maurise', 'Denning', 'mdenning1a@gizmodo.com', 'Mr2sYeRPO');
insert into user (FirstName, LastName, email, password) values ('Tucker', 'Steane', 'tsteane1b@psu.edu', 'EN6frwpZG');
insert into user (FirstName, LastName, email, password) values ('Jermayne', 'Terrington', 'jterrington1c@goodreads.com', 'f66X2QW');
insert into user (FirstName, LastName, email, password) values ('Ninetta', 'Hacking', 'nhacking1d@jimdo.com', 'U9l4uM');
insert into user (FirstName, LastName, email, password) values ('Gilly', 'Shepherdson', 'gshepherdson1e@samsung.com', 'a5s1XHT');
insert into user (FirstName, LastName, email, password) values ('Rutledge', 'Scottrell', 'rscottrell1f@gravatar.com', 'nl7yLZ');
insert into user (FirstName, LastName, email, password) values ('Jens', 'Zuanelli', 'jzuanelli1g@bluehost.com', 'c5fLiH0h9xb');
insert into user (FirstName, LastName, email, password) values ('Wilmar', 'Tomney', 'wtomney1h@engadget.com', '4oHTGTRCk');
insert into user (FirstName, LastName, email, password) values ('Beret', 'Zoppie', 'bzoppie1i@virginia.edu', 'E4nKEXi');
insert into user (FirstName, LastName, email, password) values ('Alysa', 'Vaudin', 'avaudin1j@clickbank.net', 'wNYBxNeQE5F');
insert into user (FirstName, LastName, email, password) values ('Marin', 'Exter', 'mexter1k@springer.com', 'ucWpwfgC');
insert into user (FirstName, LastName, email, password) values ('Kala', 'Dregan', 'kdregan1l@google.com.br', 'aNXPPPSCVd');
insert into user (FirstName, LastName, email, password) values ('Susann', 'Lamball', 'slamball1m@twitter.com', 'Y3xu0CGNDmHl');
insert into user (FirstName, LastName, email, password) values ('Justus', 'Orpyne', 'jorpyne1n@usnews.com', 'yfIkrvW');

CREATE TABLE liked_movies(
    movieId int NOT NULL,
    userId int NOT NULL,

    PRIMARY KEY(movieId, userId),
    FOREIGN KEY(userId) references user (userid),
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

CREATE TABLE Producer(
  producerid INTEGER AUTO_INCREMENT NOT NULL,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
  email VARCHAR(50),
  Gender VARCHAR(50),
	Country VARCHAR(50),
  phone VARCHAR(50),

    PRIMARY KEY(producerid),
    UNIQUE(email, phone)
);

insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Edi', 'Mafham', 'emafham0@bbc.co.uk', 'Non-binary', 'United States', '571-645-4201');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Glennis', 'Soff', 'gsoff1@pinterest.com', 'Female', 'Japan', '979-532-3257');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Lauralee', 'Chrystal', 'lchrystal2@github.com', 'Female', 'Indonesia', '815-456-3435');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Sophia', 'Gregorin', 'sgregorin3@ovh.net', 'Polygender', 'Afghanistan', '523-260-2478');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Odie', 'Markie', 'omarkie4@eventbrite.com', 'Male', 'Indonesia', '402-943-1795');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Linzy', 'Maneylaws', 'lmaneylaws5@dmoz.org', 'Female', 'Estonia', '187-772-7268');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Cirillo', 'Tollemache', 'ctollemache6@canalblog.com', 'Male', 'Sweden', '626-687-2378');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Malia', 'Skein', 'mskein7@telegraph.co.uk', 'Female', 'Philippines', '704-966-9812');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Claudina', 'Mochar', 'cmochar8@wsj.com', 'Female', 'Italy', '924-280-2283');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Lorianna', 'Jeratt', 'ljeratt9@technorati.com', 'Female', 'Indonesia', '764-809-4211');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Amalia', 'Bewsey', 'abewseya@cafepress.com', 'Female', 'Botswana', '159-559-4557');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Nigel', 'Pagitt', 'npagittb@liveinternet.ru', 'Bigender', 'China', '285-816-2328');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Elwin', 'Charle', 'echarlec@ucsd.edu', 'Male', 'France', '943-466-3079');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Alessandro', 'Twentyman', 'atwentymand@statcounter.com', 'Male', 'Libya', '768-983-6080');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Minerva', 'Sedwick', 'msedwicke@accuweather.com', 'Female', 'Tanzania', '621-103-5806');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Laure', 'Dinnage', 'ldinnagef@jigsy.com', 'Female', 'Japan', '220-946-7898');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Noell', 'Learmont', 'nlearmontg@reference.com', 'Female', 'Thailand', '659-118-6943');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Bobbette', 'Lapere', 'blapereh@epa.gov', 'Genderfluid', 'Venezuela', '462-918-6021');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Ariel', 'Scarr', 'ascarri@homestead.com', 'Female', 'China', '291-440-2850');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Tamar', 'Liddington', 'tliddingtonj@pcworld.com', 'Female', 'Cameroon', '484-764-0494');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Blinni', 'McCome', 'bmccomek@un.org', 'Female', 'Philippines', '943-817-5586');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Rock', 'Yurkov', 'ryurkovl@skyrock.com', 'Male', 'Poland', '715-932-3599');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Brittan', 'Kisar', 'bkisarm@fema.gov', 'Female', 'Portugal', '939-218-8188');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Ephrayim', 'Langer', 'elangern@joomla.org', 'Male', 'Palestinian Territory', '106-887-4861');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Dyanna', 'Gurery', 'dgureryo@ning.com', 'Female', 'Egypt', '812-106-4404');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Marys', 'Phillcox', 'mphillcoxp@unc.edu', 'Female', 'Brazil', '454-856-8686');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Car', 'Brodeau', 'cbrodeauq@bluehost.com', 'Male', 'Indonesia', '385-925-4235');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Shannon', 'Gerard', 'sgerardr@xinhuanet.com', 'Male', 'Vietnam', '124-396-3172');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Haskell', 'Shrieves', 'hshrievess@github.com', 'Male', 'Indonesia', '336-513-2244');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Clerkclaude', 'Shayes', 'cshayest@bigcartel.com', 'Male', 'Greece', '749-261-8370');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Alexine', 'Pendre', 'apendreu@goodreads.com', 'Agender', 'United States', '304-896-0238');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Evonne', 'Derle', 'ederlev@comcast.net', 'Female', 'China', '905-619-7038');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Rozanne', 'Tunnicliff', 'rtunnicliffw@posterous.com', 'Female', 'Poland', '833-302-5042');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Gracie', 'Marney', 'gmarneyx@mac.com', 'Female', 'Peru', '801-851-6385');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Kirbie', 'Cowles', 'kcowlesy@princeton.edu', 'Polygender', 'China', '846-987-4776');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Bear', 'Oaten', 'boatenz@mashable.com', 'Male', 'Portugal', '575-132-7914');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Marten', 'Derry', 'mderry10@gov.uk', 'Male', 'Philippines', '489-626-7335');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Brena', 'Mullarkey', 'bmullarkey11@4shared.com', 'Female', 'Ukraine', '958-795-2988');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Connie', 'Kirkhouse', 'ckirkhouse12@cam.ac.uk', 'Female', 'Russia', '593-103-7821');
insert into Producer (FirstName, LastName, email, gender, country, phone) values ('Nikki', 'Nyssen', 'nnyssen13@gizmodo.com', 'Male', 'Canada', '743-281-3820');

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

CREATE TABLE StreamingCompany(
  companyid INTEGER AUTO_INCREMENT NOT NULL,
	CompanyName VARCHAR(50),
	email VARCHAR(50),
	Phone VARCHAR(50),
	Link VARCHAR(1000),

  PRIMARY KEY(companyid),
  UNIQUE(email, phone)
);
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Heller, McCullough and Raynor', 'cthurling0@theglobeandmail.com', '513-320-7389', 'cbslocal.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Leffler LLC', 'pallbon1@intel.com', '559-500-3269', 'nationalgeographic.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Beer-Dietrich', 'ldrury2@buzzfeed.com', '639-524-6445', 'odnoklassniki.ru');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Terry, Harber and Haag', 'bsummerson3@constantcontact.com', '847-430-2057', 'amazon.de');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Reilly, Schmitt and Schiller', 'toverlow4@cocolog-nifty.com', '362-921-9556', 'si.edu');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Lind LLC', 'schart5@slashdot.org', '770-110-7953', 'businesswire.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Lowe, Kiehn and Runolfsson', 'fpichan6@salon.com', '814-136-1088', 'chron.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Bernhard Inc', 'cjull7@guardian.co.uk', '840-878-0962', 'va.gov');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Smitham, Turcotte and Harris', 'asafhill8@kickstarter.com', '435-680-7917', '1688.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Berge, Willms and Becker', 'egrayley9@sun.com', '276-777-2104', 'hugedomains.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Sauer-King', 'etutina@shinystat.com', '896-514-5918', '360.cn');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Zemlak, Hackett and Zulauf', 'aellingsworthb@naver.com', '741-507-7317', 'senate.gov');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Rowe, Anderson and Denesik', 'lfarrearsc@bbb.org', '769-635-6007', 'google.de');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Walter, Dibbert and Franecki', 'ncammiemiled@irs.gov', '604-412-6405', 'flavors.me');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Padberg, Jenkins and Breitenberg', 'jlarcieree@bandcamp.com', '587-465-5406', 'constantcontact.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Ferry-Ritchie', 'jkobschf@indiegogo.com', '672-756-6219', 'uol.com.br');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Gleason and Sons', 'kmckissackg@answers.com', '988-442-1446', 'ustream.tv');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Feil-Walsh', 'mbenfordh@alexa.com', '308-568-9016', 'goodreads.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Rogahn LLC', 'aspreadburyi@indiegogo.com', '810-138-8119', 'house.gov');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Rolfson, Barrows and Hettinger', 'rortj@scientificamerican.com', '104-776-8988', 'goo.ne.jp');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Larson and Sons', 'pberrisfordk@biblegateway.com', '472-129-8158', 'pagesperso-orange.fr');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Gislason Group', 'dyegorkovl@chicagotribune.com', '141-976-8023', 'cornell.edu');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Gulgowski-Gibson', 'cerrolm@github.com', '381-225-2432', 'mail.ru');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Bradtke-Collins', 'gruusan@washington.edu', '801-389-0527', 'dedecms.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Schumm, Dibbert and Funk', 'kselewayo@yelp.com', '378-190-2305', 'smugmug.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Ziemann-Gaylord', 'nbutep@opensource.org', '553-233-2067', 'dot.gov');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Botsford LLC', 'wsnasdellq@trellian.com', '587-774-2933', 'mail.ru');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Von-Jones', 'ayellandr@moonfruit.com', '447-730-6772', 'netscape.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Tremblay, Ebert and Heller', 'rmcfauls@blogs.com', '654-212-0691', 'wunderground.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Jones Group', 'fmoniert@zdnet.com', '185-167-2031', 'jigsy.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Effertz-Doyle', 'ecourtoisu@nsw.gov.au', '904-783-6921', 'stanford.edu');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Olson Inc', 'trohanv@e-recht24.de', '213-607-1694', 'linkedin.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Goyette LLC', 'vmcgilbonw@seesaa.net', '176-927-2762', 'tinyurl.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Runolfsdottir LLC', 'wbesquex@vk.com', '127-242-3331', 'fda.gov');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Feil, Armstrong and Borer', 'dmcconaghyy@vimeo.com', '508-334-5556', 'nyu.edu');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Bahringer Inc', 'clyddyardz@howstuffworks.com', '832-843-7934', 'blogs.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Predovic, Sporer and Towne', 'dlevermore10@privacy.gov.au', '179-567-6092', 'nationalgeographic.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Windler Group', 'lcobelli11@vistaprint.com', '962-848-6327', 'rediff.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Wilderman-Boehm', 'emeddings12@cnbc.com', '109-393-5058', 'marriott.com');
insert into StreamingCompany (CompanyName, email, Phone, Link) values ('Moen and Sons', 'mearp13@phpbb.com', '466-268-7810', 'shop-pro.jp');

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