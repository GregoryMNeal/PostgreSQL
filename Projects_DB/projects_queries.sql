
-- What are all projects that use JavaScript
SELECT *
FROM project_uses_tech
WHERE tech_id = 3;

-- What are all technologies used by the Personal Website
SELECT *
FROM project_uses_tech
WHERE project_id = 4;

-- Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project?
SELECT *
FROM tech
LEFT OUTER JOIN project_uses_tech
ON tech.id = project_uses_tech.tech_id;

-- Based on the previous query, get the count of the number of techs used by each project
SELECT name, COUNT(tech_id)
FROM tech
LEFT OUTER JOIN project_uses_tech
ON project_uses_tech.tech_id = tech.id
GROUP BY tech.id;

-- Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech
SELECT name, COUNT(project_id)
FROM project
LEFT OUTER JOIN project_uses_tech
ON project_uses_tech.project_id = project.id
GROUP BY project.id;

-- Based on the previous query, get the count of the number of projects that use each tech.
SELECT name, COUNT(tech_id)
FROM tech
LEFT OUTER JOIN project_uses_tech
ON project_uses_tech.tech_id = tech.id
GROUP BY tech.id;

-- List all projects along with each technology used by it. You will need to do a three-way join.
SELECT *
FROM project_uses_tech
JOIN project ON project.id = project_id
JOIN tech ON tech.id = tech_id;

-- List all the distinct techs that are used by at least one project.
SELECT DISTINCT(project_uses_tech.tech_id), tech.name
FROM project_uses_tech
JOIN tech ON tech.id = tech_id
ORDER BY tech.name;

-- List all the distinct techs that are not used by any projects
SELECT tech.name
FROM tech
LEFT JOIN project_uses_tech
ON tech.id = project_uses_tech.tech_id
WHERE project_uses_tech.tech_id IS NULL;

-- List all the distinct projects that use at least one tech
SELECT DISTINCT(project_uses_tech.project_id), project.name
FROM project_uses_tech
JOIN project ON project_id = project.id
JOIN tech ON tech_id = tech.id
ORDER BY project_id;

-- List all the distinct projects that use no tech.
SELECT DISTINCT(project_uses_tech.project_id), project.name
FROM project_uses_tech
JOIN project ON project_uses_tech.project_id = project.id
LEFT JOIN tech ON project_uses_tech.tech_id = tech.id
WHERE tech.id IS NULL
ORDER BY project_uses_tech.project_id;

-- Order the projects by how many tech it uses
SELECT project_id, COUNT(tech_id)
FROM project_uses_tech
GROUP BY project_id
ORDER BY count, project_id;

-- Order the tech by how many projects use it
SELECT tech_id, COUNT(project_id)
FROM project_uses_tech
GROUP BY tech_id
ORDER BY count, tech_id;
