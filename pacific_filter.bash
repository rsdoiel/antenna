#!/bin/bash
cat <<SQL | sqlite3 pacific.skim 
UPDATE items SET status = 'read'
WHERE description LIKE '%(Reuters)%'
   OR description LIKE '%(The Center Square)%'
   OR description LIKE '%(HealthDay News)%'
   OR title LIKE 'OPINION%'
   OR link LIKE '%/news/national/%'
SQL
