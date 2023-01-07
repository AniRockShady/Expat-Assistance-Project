/*Get existing user applications for a given user*/ 

SELECT  t. title AS Application, u.first_name AS Name, u.last_name AS Surname, a.created_at AS Created, a.updated_at AS Updated, c.first_name AS Consultant_name, c.last_name AS Consultant_surname , c.company_name AS Company, a. status AS Status 
FROM applications AS a
LEFT JOIN application_types as t 
ON a.application_type_id = t.id
LEFT JOIN users AS u
ON a.creator_id = u.id
LEFT JOIN consultants AS c
ON a.assigned_consultant_id = c.id
WHERE creator_id = /*id of logged user*/



/*Get application questions*/

SELECT * FROM questions 
WHERE application_id = /*id of chosen application*/

/* Get new user applications(for consultants)*/

SELECT  a.id AS Application_id, t.title, u.first_name, u.last_name, a.created_at, a.updated_at, c.first_name, c.last_name, a.status
FROM applications as a
LEFT JOIN application_types as t
ON a.application_type_id = t.id
LEFT JOIN users as u
ON 	a.creator_id = u.id
LEFT JOIN consultants as c
ON 	a.assigned_consultant_id = c.id
WHERE a.assigned_consultant_id = NULL or /*logged consultant*/ AND a.status IN ('Submitted') /*choose 


/* Get user response to the queastionnaire given application id or consultant surname*/

SELECT a.id, t.title, q.title AS Question, r.response, u.first_name as By_Name, u.last_name AS By_Surname, r.response AS Response, r.created_at AS Created, r.updated_at AS Updated, c.first_name AS Assigned_Name,  c.last_name AS Assigned_Surname
FROM application_responses AS r
LEFT JOIN questions as q 
ON r.question_id = q.id
LEFT JOIN applications as a
ON r.application_id = a.id
LEFT JOIN application_types as t
ON a.application_type_id = t.id
LEFT JOIN users as u
ON a.creator_id = u.id
LEFT JOIN consultants as c
ON a.assigned_consultant_id = c.id
WHERE c.last_name = 'Powers' /*or pass variable of authentified user here*/ OR application_id = 1 /*or search by app id*/ 




 

