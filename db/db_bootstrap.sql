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
	NumOfLikes INT
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