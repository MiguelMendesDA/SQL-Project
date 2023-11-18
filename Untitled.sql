USE accenture_ironhack;


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
    GROUP_CONCAT(review_body ORDER BY review_body) AS concatenatedReviews
FROM
    reviews
WHERE
    graduatingYear <= 2016
    AND school = 'ironhack'
GROUP BY
    graduatingYear, school;

    
    
/* Find a average for each ratig after 2016*/
CREATE VIEW ironhack_avg_scores_after_2016 AS
SELECT
    graduatingYear,
    school,
    AVG(overallScore) AS avgOverallScore,
    AVG(overall) AS avgOverall,
    AVG(curriculum) AS avgCurriculum,
    GROUP_CONCAT(review_body ORDER BY review_body) AS concatenatedReviews
FROM
    reviews
WHERE
    graduatingYear > 2016
    AND school = 'ironhack'
GROUP BY
    graduatingYear, school;