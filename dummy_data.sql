
/*INSERT DUMMY DATA*/

INSERT INTO users  (first_name ,last_name, email) 
VALUES 
   ("Palina", "Tkachova", "tkachovapol@gmail.com"),
   ("Karolina", "Przywara", "karolina@gmail.com"),
   ("Olga","Labedzka" , "olabedzka@gmail.com"),
   ("James", "Smith","jsmith@gmail.com"),
   ("Oliver", "Powers","oliverpowers@gnmail.com"),
   ("Katalin","Pierce", "katapierce@gmail.com"),
   ("Paula","Zu", "paulazu@gnail.com"),
   ("Rick","Morty", "rickmorty@gmail.com"),
   ("Kate", "Spade", "katespade@gmail.com");

INSERT INTO application_types (title, id)
VALUES 
    ("Temporary Residence", 1),
    ("Permanent Residence",2),
    ("Blue Card",3);

    INSERT INTO questions (application_type_id, title, required)
VALUES 
	(1,"Please provide your passport number", 1),
    (1,"Please provide PESEL number", 1),
    (1,"Please provide your date of birth", 1),
    (1,"Please provide your place of birth", 1),
    (1,"Please provide your citizenship", 1),
    (1,"Please list travels for the last 5 years", 1),
    (1,"Please provide your monthly income in PLN", 1),
    (1,"Have you finished university in Poland?", 1),
    (1,"Are you registered in Poland?", 1),
    (1,"Do you hold B1 polish exam state certificate?", 1),
    (1,"Do you have a history of permit rejections", 1),
    (1,"How long have you stayed in Poland (in years)?", 1);


INSERT INTO applications (application_type_id, creator_id, assigned_consultant_id)
VALUES 
    (1, 10, 1),
    (1,9, 4),
    (1, 4, 4),
    (1,5, 5),
    (1, 6, 1),
    (1, 8, 4),
    (1, 7, 4),
    (1, 3, 4),
    (1, 2, 2);

INSERT INTO application_responses  (question_id, application_id, response)
VALUES
    (1,2, "MP335079"),
    (2,2,"96062014301"),
    (3,2,"1996-06-20"),
    (4,2,"Belarus"),
    (5,2,"Belarus"),
    (6,2,"20000"),
    (7,2, "Yes"),
    (8,2,"Yes"),
    (9,2,"Yes"),
    (10,2,"Yes"),
    (11,2,"No"),
    (12,2, "5");