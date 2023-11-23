
USE accenture_ironhack;

/* Ironhack */
SELECT * FROM reviews;

SELECT *
FROM reviews
WHERE graduatingYear<=2016 and school = 'ironhack';


/* Find a average for each ratig befrore 2016*/
CREATE VIEW ironhack_avg_scores_before_2016 AS
SELECT
    graduatingYear,
    school,
    AVG(overallScore) AS avgOverallScore,
    AVG(overall) AS avgOverall,
    AVG(curriculum) AS avgCurriculum,
    AVG(jobSupport) AS avgjobSupport,
    GROUP_CONCAT(review_body ORDER BY review_body) AS concatenatedReviews
FROM
    reviews
WHERE
    graduatingYear <= 2016
    AND school = 'ironhack'
GROUP BY
    graduatingYear, reviews.school;

/* Find a average for each ratig after 2016 */

CREATE VIEW ironhack_avg_scores_after_2016 AS
SELECT
	 graduatingYear,
1    school,
    AVG(overallScore) AS avgOverallScore,
    AVG(overall) AS avgOverall,
    AVG(curriculum) AS avgCurriculum,
    AVG(jobSupport) AS avgjobSupport,
    GROUP_CONCAT(review_body ORDER BY review_body) AS concatenatedReviews
FROM
    reviews
WHERE
    graduatingYear > 2016
    AND school = 'ironhack'
GROUP BY
    graduatingYear, reviews.school;
     
    /* Le-Wagon */
    
SELECT *
FROM reviews
WHERE graduatingYear<=2016 and school = 'le-wagon';

    
    /* Find a average for each ratig */
CREATE VIEW lewagon_avg_scores AS
SELECT
	graduatingYear,
	school,
    AVG(overallScore) AS avgOverallScore,
    AVG(overall) AS avgOverall,
    AVG(curriculum) AS avgCurriculum,
    AVG(jobSupport) AS avgjobSupport,
    GROUP_CONCAT(review_body ORDER BY review_body) AS concatenatedReviews
FROM
    reviews
WHERE
	school = 'le-wagon'
GROUP BY
    graduatingYear, school;
    
    #Ironhack
SELECT program, COUNT(*) as reviewCount
FROM reviews
WHERE overallScore < 4 and school ='Ironhack' 
GROUP BY program;


SELECT program, AVG(overallScore) as avgScore
FROM reviews
WHERE overallScore < 4 and school='ironhack'
GROUP BY program;



0 row(s) affected, 1 warning(s): 1052 Column 'school' in group statement is ambiguous

    
    