SELECT assignment_id, name, day, chapter, count(assignment_id) as total_requests
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignment_id, name, day, chapter
ORDER BY total_requests DESC;