-- create schema
CREATE SCHEMA IF NOT EXISTS db_cp;

-- create table customers
CREATE TABLE IF NOT EXISTS db_cp.customers
(
    id   SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);

-- populate table customers
INSERT INTO db_cp.customers (name)
VALUES ('Cadman Page'),
       ('Leandra Jenkins'),
       ('Jennifer Ward'),
       ('Kai Chase'),
       ('Gail Hooper'),
       ('Nayda Cline'),
       ('Illiana Marks'),
       ('Adam Mcmahon'),
       ('Xenos Copeland'),
       ('Deanna Berg'),
       ('Lunea Fitzpatrick'),
       ('Lavinia Gross'),
       ('Jakeem Mooney'),
       ('Gisela Joseph'),
       ('Dawn Hahn'),
       ('Juliet Pierce'),
       ('Savannah Waters'),
       ('Eliana Berger'),
       ('Macy Hurley'),
       ('Leilani Ball'),
       ('Yoko Houston'),
       ('Desiree Pickett'),
       ('Lucian Price'),
       ('Clayton Osborn'),
       ('Kim Clayton'),
       ('Alice Merritt'),
       ('Suki Clayton'),
       ('Sonia Griffin'),
       ('Oprah Saunders'),
       ('Velma Wise'),
       ('Chanda Olsen'),
       ('Hillary James'),
       ('Kuame Moss'),
       ('Kitra Pruitt'),
       ('Jameson Salinas'),
       ('Aidan Avila'),
       ('Anne Farmer'),
       ('Rowan Morgan'),
       ('Ria Thomas'),
       ('Jermaine Joyner'),
       ('Cadman Cannon'),
       ('Margaret Silva'),
       ('Austin Carr'),
       ('Justine Kaufman'),
       ('Leonard Bowen'),
       ('Haley Park'),
       ('Yardley Lloyd'),
       ('Hiram Acevedo'),
       ('Montana Colon'),
       ('Anjolie Patrick'),
       ('Xanthus Cabrera'),
       ('Veda Duncan'),
       ('Kenneth Mccullough'),
       ('Shafira Glover'),
       ('Arden Henry'),
       ('Eagan Mason'),
       ('Kelsey Frost'),
       ('Dean Trevino'),
       ('Abra Cole'),
       ('Giacomo Sanford'),
       ('Aiko Bryant'),
       ('Stephen Warren'),
       ('Wyatt Dodson'),
       ('Lunea Alexander'),
       ('Jacqueline Byers'),
       ('Madonna Steele'),
       ('Vaughan Hurst'),
       ('Ezekiel Lynn'),
       ('Lareina Odom'),
       ('Ariel Petty'),
       ('Jakeem Whitehead'),
       ('Kasper Yang'),
       ('Lawrence Little'),
       ('Martin Valentine'),
       ('Odette Johns'),
       ('Joshua Simon'),
       ('Orson Durham'),
       ('Aquila Stokes'),
       ('Selma Brock'),
       ('Gannon Fowler'),
       ('Chantale Green'),
       ('Quamar Mendoza'),
       ('Jamalia Dejesus'),
       ('Doris Turner'),
       ('Cleo Carey'),
       ('Erich Powell'),
       ('Keefe Guerrero'),
       ('Amela Tyson'),
       ('Ann Pennington'),
       ('Grant Monroe'),
       ('Serina Mason'),
       ('Nomlanga Puckett'),
       ('Rhea Rios'),
       ('Laurel Head'),
       ('Ira Randall'),
       ('Burke Dyer'),
       ('Austin Lucas'),
       ('Rashad Foley'),
       ('Thomas Mcpherson'),
       ('Debra Collier'),
       ('Laura Maynard'),
       ('Shannon Wolfe'),
       ('Fletcher English'),
       ('Thomas Wilkerson'),
       ('Nolan Morris'),
       ('Alice Parsons'),
       ('Wilma Schroeder'),
       ('Malcolm Church'),
       ('Veronica Bernard'),
       ('Keelie Henry'),
       ('Harding Bell'),
       ('David Mccormick'),
       ('Ginger Serrano'),
       ('Fredericka Livingston'),
       ('Felicia Colon'),
       ('Fulton Haynes'),
       ('Emery Dunn'),
       ('Molly Mason'),
       ('Aiko Burton'),
       ('Fitzgerald Harper'),
       ('Nola Burgess'),
       ('Xander Mays'),
       ('Ray Small'),
       ('Halla Vasquez'),
       ('Noelle Sampson'),
       ('Britanni Horn'),
       ('Prescott Clarke'),
       ('Eric Harper'),
       ('Steel Underwood'),
       ('Randall Austin'),
       ('Reagan Burnett'),
       ('Amity Tillman'),
       ('Fleur Mcintosh'),
       ('Quinlan Cervantes'),
       ('Anthony Nguyen'),
       ('Yoshio Conrad'),
       ('Leandra Logan'),
       ('Stacy Mcclure'),
       ('Yvette Salinas'),
       ('Mari Mccullough'),
       ('Lawrence Rojas'),
       ('Minerva Abbott'),
       ('Kylie Hancock'),
       ('Shea Willis'),
       ('Serena Daniel'),
       ('Zenia Sandoval'),
       ('Glenna Cochran'),
       ('Shea Barrera'),
       ('Sacha Lane'),
       ('Hadley Harper'),
       ('Nomlanga Foley'),
       ('Kylie Brock'),
       ('Nita Barker'),
       ('Amelia Campbell'),
       ('Chaim Duke'),
       ('Kibo Webster'),
       ('Jin Mcfadden'),
       ('Zena Davis'),
       ('Ginger Austin'),
       ('Caryn Suarez'),
       ('Cedric Ramirez'),
       ('Sybil Hensley'),
       ('Giselle Calderon'),
       ('Regan Ball'),
       ('Melinda Mcdonald'),
       ('Plato Coleman'),
       ('Stewart Stokes'),
       ('Leandra Cummings'),
       ('Driscoll Hart'),
       ('Stuart Figueroa'),
       ('Xandra Myers'),
       ('Edward Paul'),
       ('Finn Powell'),
       ('Caldwell Cruz'),
       ('Galvin Henson'),
       ('August Price'),
       ('Cathleen Hewitt'),
       ('Carol Love'),
       ('Carl Guzman'),
       ('Quail Case'),
       ('Anthony Stewart'),
       ('Felicia Navarro'),
       ('Ethan Daniels'),
       ('Sybil Woodard'),
       ('Rosalyn Waller'),
       ('Xanthus Olsen'),
       ('Kylie Rocha'),
       ('Devin Ryan'),
       ('Malik Rodriguez'),
       ('Tana Carpenter'),
       ('Vivian Donovan'),
       ('Scott Mckay'),
       ('Marshall Castillo'),
       ('Chastity Gay'),
       ('Paula Craig'),
       ('Jade Shields'),
       ('Oliver Hardy'),
       ('Noel Baird'),
       ('Alea Valencia'),
       ('Deborah Jennings'),
       ('Dominic Austin'),
       ('Murphy Noble'),
       ('Hermione Tucker'),
       ('Levi Reid'),
       ('Leah Ramsey'),
       ('Wallace Rosario'),
       ('Shaeleigh Francis'),
       ('Hayes Dillard'),
       ('Erasmus Carney'),
       ('Whilemina Delgado'),
       ('Kitra Tyler'),
       ('Jacob Anthony'),
       ('Nasim Prince'),
       ('Isadora Griffin'),
       ('Dominique Fernandez'),
       ('Vanna Dickson'),
       ('Piper Lyons'),
       ('Reed Slater'),
       ('Kane Yang'),
       ('Rooney Silva'),
       ('Galena Phelps'),
       ('Cullen Stewart'),
       ('Zelda Wynn'),
       ('Willa Mason'),
       ('Matthew Price'),
       ('Mira Burt'),
       ('Jackson Harding'),
       ('Joshua Combs'),
       ('Lareina Craig'),
       ('Keaton Reynolds'),
       ('Owen Mcgee'),
       ('Shellie Rios'),
       ('Victoria Mcbride'),
       ('Joy Delacruz'),
       ('Garth Collins'),
       ('Baker Shepard'),
       ('Ross Estrada'),
       ('Louis Valencia'),
       ('Keely Bond'),
       ('Keane Henry'),
       ('Genevieve Bridges'),
       ('Dai Villarreal'),
       ('Jacqueline Mcmillan'),
       ('Upton Hicks'),
       ('Susan Thornton'),
       ('Samson Conway'),
       ('Morgan Woods'),
       ('Laurel Moran'),
       ('Akeem Howard'),
       ('Leandra Copeland'),
       ('Ali Sykes'),
       ('Courtney Hamilton'),
       ('Tate Ingram'),
       ('Clio Adkins'),
       ('Cullen Gallagher'),
       ('Karleigh Juarez'),
       ('Beau Mcgee'),
       ('Cadman Sanders'),
       ('Cassandra Rowland'),
       ('Violet Wilson'),
       ('Aladdin Murphy'),
       ('Carla Cotton'),
       ('Montana Cash'),
       ('Bruce Jacobson'),
       ('Galena Mcdowell'),
       ('Hyacinth Goodman'),
       ('Tanek Russo'),
       ('Oprah Knight'),
       ('Owen Boone'),
       ('Ifeoma Knowles'),
       ('Garrett O''donnell'),
       ('Hall Nguyen'),
       ('Raymond Hatfield'),
       ('Eve Manning'),
       ('Latifah Santana'),
       ('Stuart Shaw'),
       ('Talon Moody'),
       ('Ross Boyd'),
       ('Nathan Curry'),
       ('Whitney Lawrence'),
       ('Dean Tanner'),
       ('Linus Dorsey'),
       ('Jamalia Boyd'),
       ('Amela Parsons'),
       ('Finn Myers'),
       ('Stephanie Campos'),
       ('Imani Whitfield'),
       ('Mary Brennan'),
       ('Jack Raymond'),
       ('Willow Love'),
       ('Rose Rodgers'),
       ('Lucian Coleman'),
       ('Chastity Brady'),
       ('Neil Sawyer'),
       ('Zia Mccall'),
       ('Selma Norris'),
       ('Lysandra Strong'),
       ('Ella Houston'),
       ('Nora Waller'),
       ('Christopher Wilder'),
       ('Kane Petty'),
       ('Cyrus Reed'),
       ('Jeanette Odom'),
       ('Orla Park'),
       ('Janna Gardner'),
       ('Rajah Owen'),
       ('Macon Stafford'),
       ('Emmanuel Sanchez'),
       ('Melanie Hernandez'),
       ('Kennedy Stuart'),
       ('Stephen Sanford'),
       ('Alyssa Hawkins'),
       ('Chloe Holland'),
       ('Tana Houston'),
       ('Cade Rush'),
       ('Maggy Huffman'),
       ('Drake Kirkland'),
       ('Allen Ortiz'),
       ('Fatima Bauer'),
       ('Hayfa Bell'),
       ('Alec Lucas'),
       ('Allistair Blevins'),
       ('Rooney Velez'),
       ('Octavius Franklin'),
       ('Avram Cortez'),
       ('Glenna Downs'),
       ('Mercedes Camacho'),
       ('Fletcher Sharpe'),
       ('Ali Greer'),
       ('Noah Burks'),
       ('Gavin Yates'),
       ('Fitzgerald Gonzalez'),
       ('Ishmael Becker'),
       ('Colorado Hoffman'),
       ('Kiara Douglas'),
       ('Ann Roth'),
       ('Scarlett Montgomery'),
       ('Acton Bradley'),
       ('Irma Mooney'),
       ('Burke Duke'),
       ('Bryar Marquez'),
       ('Halee Park'),
       ('Octavia George'),
       ('Jolene Rivera'),
       ('Melissa Sutton'),
       ('Imani Miles'),
       ('Jillian Cummings'),
       ('Tasha Harper'),
       ('Kiara Nielsen'),
       ('Ali White'),
       ('Clarke Reyes'),
       ('Brennan Burnett'),
       ('Kylie Rosa'),
       ('Caesar Barlow'),
       ('Lee Fields'),
       ('Samantha Bolton'),
       ('Unity Sullivan'),
       ('Alice Allen'),
       ('Hedy Pierce'),
       ('Tobias Willis'),
       ('Joy Mathis'),
       ('Colton Hamilton'),
       ('Ross Carter'),
       ('Nita Walls'),
       ('Mia Middleton'),
       ('Buckminster Beasley'),
       ('Kai Barnes'),
       ('Dalton Clarke'),
       ('Garrett Green'),
       ('Irene Strong'),
       ('Honorato Guzman'),
       ('Dawn Sparks'),
       ('Holly Carson'),
       ('Ursa Mccoy'),
       ('Isadora Logan'),
       ('Carol Cleveland'),
       ('Theodore Murray'),
       ('Madeline Benjamin'),
       ('Igor Preston'),
       ('Eugenia Miles'),
       ('Yael Ryan'),
       ('Tyler Carson'),
       ('Lacey Donaldson'),
       ('Unity Sandoval'),
       ('Orson Dickerson'),
       ('Macaulay Livingston'),
       ('Garth Gray'),
       ('Grant Fitzpatrick'),
       ('Rose Cunningham'),
       ('Vivien Rosa'),
       ('Castor Avery'),
       ('Emma Moss'),
       ('Rajah Santiago'),
       ('Ava Sawyer'),
       ('Rebekah Davenport'),
       ('Jeanette Harmon'),
       ('MacKenzie Dillard'),
       ('Eleanor Bowen'),
       ('Petra Guerrero'),
       ('Bianca Bernard'),
       ('Emi Rogers'),
       ('Hedy Whitaker'),
       ('Hyatt Castaneda'),
       ('Declan Hurley'),
       ('Noel Powell'),
       ('Dante Solis'),
       ('Axel Mccarthy'),
       ('Kylie Reynolds'),
       ('Maris Stafford'),
       ('Raphael Hale'),
       ('Zeus Diaz'),
       ('Quail Barron'),
       ('Rashad Park'),
       ('Grady Valencia'),
       ('Gavin Hodge'),
       ('Aline Haynes'),
       ('Fleur Brewer'),
       ('Zeus Wolfe'),
       ('Rooney Shepard'),
       ('Briar Kerr'),
       ('Shana Le'),
       ('Myra Ware'),
       ('MacKenzie Hopkins'),
       ('Brody Kaufman'),
       ('Rhiannon Hewitt'),
       ('Lucius Whitehead'),
       ('Veronica Rasmussen'),
       ('Clinton Monroe'),
       ('Kasper Galloway'),
       ('Lynn Sheppard'),
       ('Fletcher Hicks'),
       ('Regina Griffin'),
       ('Uriah Dunn'),
       ('Amal Tran'),
       ('Nayda Duke'),
       ('Maryam Arnold'),
       ('Megan Mckenzie'),
       ('Ainsley Schroeder'),
       ('Gray Higgins'),
       ('Shay Ramirez'),
       ('Kyla Reynolds'),
       ('Thane Pena'),
       ('Mari Hughes'),
       ('Solomon Whitehead'),
       ('Jillian Blackwell'),
       ('Prescott Ferguson'),
       ('Susan Ward'),
       ('Kaseem Acosta'),
       ('Amaya Wheeler'),
       ('Kadeem Cook'),
       ('Porter Stark'),
       ('Cain Fischer'),
       ('Gary Pittman'),
       ('Raphael Booth'),
       ('Stella Jacobson'),
       ('Zeus Cooper'),
       ('Sean Boyd'),
       ('Holmes Schwartz'),
       ('Victoria Knight'),
       ('Alec Payne'),
       ('John Hendricks'),
       ('Burton Barry'),
       ('Kelly Suarez'),
       ('Penelope Hutchinson'),
       ('Shay Crosby'),
       ('Charles Foreman'),
       ('Keely Cleveland'),
       ('Chava Mcmillan'),
       ('Fuller Gordon'),
       ('Kalia Anderson'),
       ('Amos Kelley'),
       ('Ava Turner'),
       ('Cade Stein'),
       ('Dillon Tanner'),
       ('Daniel Hughes'),
       ('Kerry O''brien'),
       ('Aline Ray'),
       ('Camille Cohen'),
       ('Tatyana Pierce'),
       ('Kasper Bernard'),
       ('Leandra White'),
       ('Serena Daniel'),
       ('Linus Clarke'),
       ('Emerson Bartlett'),
       ('Farrah Cooper'),
       ('Genevieve Bush'),
       ('Boris Montoya'),
       ('Phoebe Tyler'),
       ('Blythe Garner'),
       ('Victor Garcia'),
       ('Vielka Hammond'),
       ('Ella Griffin'),
       ('Azalia Weeks'),
       ('Gail Lewis'),
       ('Brittany Combs'),
       ('Keane Brock'),
       ('Scott Morgan'),
       ('Daryl Orr'),
       ('George Coffey'),
       ('Jesse Hebert');

-- create table regions
CREATE TABLE IF NOT EXISTS db_cp.regions
(
    id     SERIAL PRIMARY KEY,
    region varchar(50) NOT NULL unique
);

-- populate table regions
INSERT INTO db_cp.regions (region)
VALUES ('Saint Petersburg City'),
       ('Sakhalin Oblast'),
       ('Vladimir Oblast'),
       ('Tambov Oblast'),
       ('Arkhangelsk Oblast'),
       ('Tyumen Oblast'),
       ('Moscow Oblast'),
       ('Novosibirsk Oblast'),
       ('Magadan Oblast'),
       ('Tomsk Oblast'),
       ('Lipetsk Oblast'),
       ('Omsk Oblast'),
       ('Ulyanovsk Oblast'),
       ('Leningrad Oblast'),
       ('Kurgan Oblast'),
       ('Amur Oblast'),
       ('Oryol Oblast'),
       ('Samara Oblast'),
       ('Smolensk Oblast'),
       ('Volgograd Oblast'),
       ('Kaliningrad Oblast'),
       ('Voronezh Oblast'),
       ('Vologda Oblast'),
       ('Bryansk Oblast'),
       ('Chelyabinsk Oblast'),
       ('Belgorod Oblast'),
       ('Kursk Oblast'),
       ('Kaluga Oblast'),
       ('Penza Oblast'),
       ('Orenburg Oblast'),
       ('Ivanovo Oblast'),
       ('Sverdlovsk Oblast'),
       ('Kemerovo Oblast'),
       ('Kostroma Oblast'),
       ('Astrakhan Oblast'),
       ('Rostov Oblast'),
       ('Murmansk Oblast'),
       ('Moscow City'),
       ('Sevastopol City'),
       ('Tula Oblast'),
       ('Kirov Oblast'),
       ('Ryazan Oblast'),
       ('Novgorod Oblast'),
       ('Yaroslavl Oblast'),
       ('Saratov Oblast'),
       ('Pskov Oblast'),
       ('Irkutsk Oblast'),
       ('Tver Oblast'),
       ('Nizhny Novgorod Oblast');

-- create table categories
CREATE TABLE IF NOT EXISTS db_cp.categories
(
    id   SERIAL PRIMARY KEY,
    name varchar(48) NOT NULL
);

-- populate table categories
INSERT INTO db_cp.categories (name)
SELECT random_string(8) as name
FROM generate_series(1, 48);

-- create table products
CREATE TABLE IF NOT EXISTS db_cp.products
(
    id          SERIAL PRIMARY KEY,
    category_id integer      NOT NULL
        constraint products_categories_id_fk references db_cp.categories,
    name        varchar(128) NOT NULL,
    color       varchar(16)  NOT NULL,
    price       integer      NOT NULL
);

-- populate table products
INSERT INTO db_cp.products (category_id, name, color, price)
SELECT random_number(1, 48)::int                                         as category_id,
       random_string(10)                                                 as name,
       ('{red, green, blue, white, yellow}'::text[])[ceil(random() * 5)] as color,
       random_number(1, 5000)::int                                       as price
FROM generate_series(1, 800);

-- create table purchases
CREATE TABLE IF NOT EXISTS db_cp.purchases
(
    id         SERIAL PRIMARY KEY,
    user_id    integer NOT NULL
        constraint purchases_customers_id_fk references db_cp.customers,
    product_id integer NOT NULL
        constraint purchases_products_id_fk references db_cp.products,
    region_id  integer NOT NULL
        constraint purchases_regions_id_fk references db_cp.regions,
    amount     int     NOT NULL,
    date       date
);

-- populate table purchases
INSERT INTO db_cp.purchases (user_id, product_id, region_id, amount, date)
SELECT random_number(1, 500)::int                                    as user_id,
       random_number(1, 200)::int                                    as product_id,
       random_number(1, 49)::int                                     as region_id,
       ceil(random() * 1000)                                         as amount,
       '2021-01-01'::date + interval '1 days' * ceil(random() * 365) as date
FROM generate_series(1, 1000);