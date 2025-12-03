-- Query 1: Top 20 players by market value
SELECT short_name, overall, value_eur, team_name
FROM cleaned_players

ORDER BY value_eur DESC

LIMIT 20;


-- Query 2 : High potential players with low market value

SELECT short_name, club_name, age, overall, potential, value_eur
FROM cleaned_players

WHERE potential >= 85

ORDER BY value_eur ASC

LIMIT 20;

-- Query 3: Strongest players under 21 years old
SELECT short_name, age, club_name, composite_score
FROM cleaned_players

WHERE age < 21

ORDER BY composite_score DESC

LIMIT 20;



-- Query 4: Strongest nationalities

SELECT nationality_name,count(*) as player_count,

avg(overall) as avg_overall,

avg(potential) as avg_potential,

sum(value_eur) as total_value

FROM cleaned_players

GROUP by nationality_name

order by player_count DESC;



-- Query 5: Total market value of each club (Top 20)

SELECT club_name, 

       SUM(value_eur) AS total_value_eur, 

       ROUND(AVG(value_eur), 0) AS avg_value_per_player

FROM cleaned_players

GROUP BY club_name

ORDER BY total_value_eur DESC

LIMIT 20;

-- Query 6: Average performance of each club (Top 20)

SELECT club_name, 

       ROUND(AVG(overall), 2) AS avg_overall, 

       ROUND(AVG(composite_score), 2) AS avg_composite,

       COUNT(*) AS player_count

FROM cleaned_players

GROUP BY club_name

ORDER BY avg_composite DESC

LIMIT 20;



-- Query 7: League comparison by average performance

SELECT league_name,

       ROUND(AVG(overall), 2) AS avg_overall,

       ROUND(AVG(composite_score), 2) AS avg_composite

FROM cleaned_players

WHERE league_name IS NOT NULL

GROUP BY league_name

ORDER BY avg_composite DESC;



-- Query 8: Team ranking by average strength

SELECT club_name,

      round( AVG(overall),2) AS avg_overall,

       round(AVG(composite_score),2) AS avg_composite,

       COUNT(*) AS total_players

FROM cleaned_players

GROUP BY club_name

ORDER BY avg_composite DESC;



-- Query 9: Best national teams by average player rating (only with &gt;20 players)

SELECT nationality_name,

      round( AVG(overall),2) AS avg_overall,

       COUNT(*) AS players_count

FROM cleaned_players

GROUP BY nationality_name

HAVING players_count &gt; 20

ORDER BY avg_overall DESC;



-- Query 10: Value efficiency (market value per overall point)

SELECT short_name, overall, value_eur,

       ROUND(value_eur / overall, 2) AS eur_per_overall

FROM cleaned_players;


