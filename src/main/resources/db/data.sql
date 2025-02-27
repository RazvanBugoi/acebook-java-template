-- This file must be named 'data.sql' and will be used to populate test database when using @Entity (JPA) for tests

-- These are the encrypted passwords:
-- This is seed data for users table
INSERT INTO "users" ("username", "password", "enabled", "interests", "education", "occupation", "location") VALUES
('Benjamin', '$2a$10$Q2SOVeeMsS12GcQfYGma6OwlAT/MeYO3QHIgOCCBWOBDU0q0EKHY6', 'true', 'Going on hikes, travelling, camping, biking', 'Civil Engineering BEng at Keele University', 'Architecture Consultant', 'Keele, UK'),
('Chris', '$2a$10$psnEupfHrjS.oV5dQAy2yuVopl2K.6ComU2o5HDVgz47IMbyXJjwK', 'true', 'Breaking Bad, Narcos, The Boys, Marvel', 'Digital Marketing and Channel Management MSc', 'Digital Marketing Intern at Richter', 'Surrey, UK'),
('Sophia', '$2a$10$os4xIh6HqYLdkmJ8mKmeyuX5coA4eGkdjNFOzx2.mZHfA41aSqsWK', 'true', 'Fashion, Real Estate, Cuisine', 'Fashion Design at UAL', 'Self Employed (Vove) CEO', 'London, UK'),
('Xiaoyu', '$2a$10$O7sCK3BnFqaigMrDSIGFGOIX.tRLJTfHlVSURMxqRqQ2llM.eaKCO', 'true', 'Jin Kazama, Panda, Kung Fu, Sweets, Photo Booths, Karaoke, Jin Kazama', 'Mishima Polytechnical School', 'Student', 'Japan'),
('Walter White', '$2a$10$h0qZrNQmv4eIXYG7GMOh/.LcVsOhoWcJZo0t2wgGy4RsxmDIWQlOu', 'true', 'Chemistry, The Uncertainty Principle, Revenge, Sandwiches, Blue Meth', 'Chemistry at Cal Tech', 'Gray Matter Technologies (former), Undisclosed (current)', 'California, USA'),
('Timothy', '$2a$10$OFFLATJiNopow1VlA8fRH.GRw5QkCRir0eLP8a1HVqu5U7e84e8LC', 'true', 'Dance, Theatre, Art', 'Theatre at RADA', 'Alter Ego Troupe', 'London'),
('Dave The Rave', '$2a$10$iYWNmNNDdoKNogNl2UVyfOr9pSx1X2pX.goE8gqZ6tpbiCpKiRWPm', 'true', 'Raves, parties, shindigs, fiestas, luaus, etc.', 'Masters in partying...ha, just kidding!', 'Promoter at Ministry of Sound', 'London innit'),
('Yasmin', '$2a$10$/WKTLmvdu8etToeRq.fMf.440sir/F8uFbXoqxJ4ie27.bOcmut9G', 'true', 'Fashion, Home Decoration, Horse-riding, Travelling, Being a BB', 'Graphic Design at Princeton', 'Editor at BB Media', 'New Jersey, USA'),
('Scarlet', '$2a$10$9N8LYElYaMYdEzSjXMd7ROnPd9HjbNbay7s4kreztuGsj9pShLRD6', 'true', 'Dominating slaves, Being desired, Leather, Six Packs', 'Wouldn''t you like to know...', 'Why don''t you come and find out...', 'Heaven and Hell'),
('Aoife', '$2a$10$4XYHuQmKp4R5/ZCXRakQauGPQ40B2S0zP6udL0oKc3DzFB09ldj46', 'true', 'Meditation, Spirituality, Final Fantasy, Natural Beauty Spots, Art', 'Social Studies at SOAS', 'Meditation Coach at Lavender Wellness Centre', 'London, UK'),
('Eoin', '$2a$10$rxnvRWqMnkDlV/smgj6aHe77ET3HB9rC.4kZGUf7Uqm.Oputl2Am6', 'true', 'Coding, Tech, Gadgets, Apple, Quake, Doom', 'Computer Science at Kings College London', 'Software Engineer at Merveda', 'London, UK'),
('Mario', '$2a$10$248UWI9RG4m.pXbWhTlZ4eGW51E1vUuLRfmIZV2thqOjefFbXkcIa', 'true', 'Peaches, Linguini, Mushrooms, Brooklyn Deep Pan Pizza', 'Plumbing at Toad Academy', 'Plumber (Superhero)', 'The Mushroom Kingdom');

-- This is seed data for posts table
TRUNCATE TABLE "posts" RESTART IDENTITY CASCADE;

INSERT INTO "posts" ("title", "content", "time_posted", "user_id") VALUES
('Title 1', 'Content 1', '2022-09-27 14:13:41.531', '1'),
('Title 2', 'Content 2', '2022-09-27 14:13:41.531', '2'),
('Title 3', 'Content 3', '2022-09-27 14:13:41.531', '3'),
('Title 3', 'Content 3', '2022-09-27 14:13:41.531', '2'),
('Title 3', 'Content 3', '2022-09-27 14:13:41.531', '1');

-- This is seed data for friends table
TRUNCATE TABLE "friends" RESTART IDENTITY CASCADE;

INSERT INTO "friends" ("requester_id", "requestee_id", "request_status", "low_id", "high_id") VALUES
('1', '4', 'accepted', '1', '4'),
('1', '3', 'pending', '1', '3'),
('5', '6', 'blocked', '5', '6'),
('7', '8', 'accepted', '7', '8'),
('4', '12', 'accepted', '4', '12'),
('12', '9', 'pending', '9', '12'),
('5', '4', 'blocked', '4', '5'),
('8', '10', 'pending', '8', '10'),
('11', '1', 'accepted', '1', '11'),
('7', '12', 'accepted', '7', '12'),
('11', '10', 'pending', '10', '11'),
('1', '8', 'pending', '1', '8');

-- This is seed data for authorities table
TRUNCATE TABLE "authorities" RESTART IDENTITY CASCADE;

INSERT INTO "authorities" ("username", "authority") VALUES
('Benjamin', 'ROLE_USER'),
('Chris', 'ROLE_USER'),
('Sophia', 'ROLE_USER'),
('Xiaoyu', 'ROLE_USER'),
('Walter White', 'ROLE_USER'),
('Timothy', 'ROLE_USER'),
('Dave The Rave', 'ROLE_USER'),
('Yasmin', 'ROLE_USER'),
('Scarlet', 'ROLE_USER'),
('Aoife', 'ROLE_USER'),
('Eoin', 'ROLE_USER'),
('Mario', 'ROLE_USER');

-- This is seed data for comments table
TRUNCATE TABLE "comments" RESTART IDENTITY CASCADE;

INSERT INTO "comments" ("content", "userid", "postid", "time_posted") VALUES
('You look nice', '1', '1', '2022-09-27 14:13:41.531'),
('Very nice post', '1', '1', '2022-09-27 14:15:41.531'),
('Could not agree more with you!', '1', '1', '2022-09-25 14:13:41.531'),
('I think I would have done the same in your shoes.', '3', '1', '2022-09-24 14:13:45.551');