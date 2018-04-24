SELECT CAST(a.user_id AS INT), CAST(a.question AS INT), SUM(CAST("Answered0" AS INT)) AS "Answered0", SUM(CAST("Answered1" AS INT)) AS "Answered1", SUM(CAST("Answered2" AS INT)) AS "Answered2", SUM(CAST("Answered3" AS INT)) AS "Answered3", SUM(CAST("Answered4" AS INT)) AS "Answered4", SUM(CAST("Answered5" AS INT)) AS "Answered5", SUM(CAST("Answered6" AS INT)) AS "Answered6", SUM(CAST("Answered7" AS INT)) AS "Answered7", SUM(CAST("Answered8" AS INT)) AS "Answered8", SUM(CAST("Answered9" AS INT)) AS "Answered9", SUM(CAST("Answered10" AS INT)) AS "Answered10"
FROM
	(SELECT CAST(a.user_id AS INT) AS "user_id", CAST(a.question AS INT) AS question, CAST("Answered0" AS INT) AS "Answered0", CAST("Answered1" AS INT) AS "Answered1", CAST("Answered2" AS INT) AS "Answered2", CAST("Answered3" AS INT) AS "Answered3", CAST("Answered4" AS INT) AS "Answered4", CAST("Answered5" AS INT) AS "Answered5", CAST("Answered6" AS INT) AS "Answered6", CAST("Answered7" AS INT) AS "Answered7", CAST("Answered8" AS INT) AS "Answered8", CAST("Answered9" AS INT) AS "Answered9", CAST("Answered10" AS INT) AS "Answered10"
	FROM
		(SELECT cast(a.user_id AS INT), CAST(b.question AS INT),
		CASE
			WHEN a.q1 IN('0') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%0|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|0%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN a.q2 IN('0') AND CAST(b.question AS INT) = 2 THEN 1
			WHEN a.q2 LIKE '%0|%' AND CAST(b.question AS INT) = 2 THEN 1
			WHEN a.q2 LIKE '%|0%' AND CAST(b.question AS INT) = 2 THEN 1
			WHEN a.q2 = NULL AND CAST(b.question AS INT) = 2 THEN NULL
			WHEN a.q3 IN('0') AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%0|%' AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%|0%' AND CAST(b.question AS INT) = 3 THEN 1
		   	WHEN a.q3 = NULL AND CAST(b.question AS INT) = 3 THEN NULL
		   	WHEN a.q4 IN('0') AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%0|%' AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%|0%' AND CAST(b.question AS INT) = 4 THEN 1
		   	WHEN a.q4 = NULL AND CAST(b.question AS INT) = 4 THEN NULL
		   	WHEN a.q5 IN('0') AND CAST(b.question AS INT) = 5 THEN 1
			WHEN a.q5 LIKE '%0|%' AND CAST(b.question AS INT) = 5 THEN 1
			WHEN a.q5 LIKE '%|0%' AND CAST(b.question AS INT) = 5 THEN 1
		   	WHEN a.q5 = NULL AND CAST(b.question AS INT) = 5 THEN NULL
		   	WHEN a.q6 IN('0') AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%0|%' AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%|0%' AND CAST(b.question AS INT) = 6 THEN 1	     
		   	WHEN a.q6 = NULL AND CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('0') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%0|%' AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%|3%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 IN('0') AND CAST(b.question AS INT) = 8 THEN 1
			WHEN a.q8 LIKE '%0|%' AND CAST(b.question AS INT) = 8 THEN 1
			WHEN a.q8 LIKE '%|0%' AND CAST(b.question AS INT) = 8 THEN 1
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q9 IN('0') AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%0|%' AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%|0%' AND CAST(b.question AS INT) = 9 THEN 1     
		   	WHEN a.q9 = NULL AND CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('0') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%0|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|0%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
		   	WHEN a.q11 IN('0') AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%0|%' AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%|0%' AND CAST(b.question AS INT) = 11 THEN 1     
		   	WHEN a.q11 = NULL AND CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('0') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%0|%' AND a.q12 NOT LIKE '%|10%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|0%' AND a.q12 NOT LIKE '%|10%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
		   	WHEN a.q13 IN('0') AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%0|%' AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%|0%' AND CAST(b.question AS INT) = 13 THEN 1     
			WHEN CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered0",
		CASE
			WHEN a.q1 IN('1') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%1|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|1%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN a.q2 IN('1') AND CAST(b.question AS INT) = 2 THEN 1
			WHEN a.q2 LIKE '%1|%' AND CAST(b.question AS INT) = 2 THEN 1
			WHEN a.q2 LIKE '%|1%' AND CAST(b.question AS INT) = 2 THEN 1
			WHEN a.q2 = NULL AND CAST(b.question AS INT) = 2 THEN NULL
			WHEN a.q3 IN('1') AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%1|%' AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%|1%' AND CAST(b.question AS INT) = 3 THEN 1
		   	WHEN a.q3 = NULL AND CAST(b.question AS INT) = 3 THEN NULL
		   	WHEN a.q4 IN('1') AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%1|%' AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%|1%' AND CAST(b.question AS INT) = 4 THEN 1
		   	WHEN a.q4 = NULL AND CAST(b.question AS INT) = 4 THEN NULL
		   	WHEN a.q5 IN('1') AND CAST(b.question AS INT) = 5 THEN 1
			WHEN a.q5 LIKE '%1|%' AND CAST(b.question AS INT) = 5 THEN 1
			WHEN a.q5 LIKE '%|1%' AND CAST(b.question AS INT) = 5 THEN 1
		   	WHEN a.q5 = NULL AND CAST(b.question AS INT) = 5 THEN NULL
		   	WHEN a.q6 IN('1') AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%1|%' AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%|1%' AND CAST(b.question AS INT) = 6 THEN 1     
		   	WHEN a.q6 = NULL AND CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('1') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%1|%' AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%|1%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q9 IN('1') AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%1|%' AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%|1%' AND CAST(b.question AS INT) = 9 THEN 1     
		   	WHEN a.q9 = NULL AND CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('1') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%1|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|1%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
		   	WHEN a.q11 IN('1') AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%1|%' AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%|1%' AND CAST(b.question AS INT) = 11 THEN 1     
		   	WHEN a.q11 = NULL AND CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('1') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%1|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|1%' AND a.q12 NOT LIKE '%|10%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
		   	WHEN a.q13 IN('1') AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%1|%' AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%|1%' AND CAST(b.question AS INT) = 13 THEN 1 
		   	WHEN a.q13 = NULL AND CAST(b.question AS INT) = 13 THEN NULL
			WHEN CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered1",
		CASE
			WHEN a.q1 IN('2') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%2|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|2%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN a.q3 IN('2') AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%2|%' AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%|2%' AND CAST(b.question AS INT) = 3 THEN 1
		   	WHEN a.q3 = NULL AND CAST(b.question AS INT) = 3 THEN NULL
		   	WHEN a.q4 IN('2') AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%2|%' AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%|2%' AND CAST(b.question AS INT) = 4 THEN 1
		   	WHEN a.q4 = NULL AND CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
		   	WHEN a.q6 IN('2') AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%2|%' AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%|2%' AND CAST(b.question AS INT) = 6 THEN 1	     
		   	WHEN a.q6 = NULL AND CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('2') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%2|%' AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%|2%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
			WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL   	
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q9 IN('2') AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%2|%' AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%|2%' AND CAST(b.question AS INT) = 9 THEN 1     
		   	WHEN a.q9 = NULL AND CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('2') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%2|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|2%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
		   	WHEN a.q11 IN('2') AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%2|%' AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%|2%' AND CAST(b.question AS INT) = 11 THEN 1     
		   	WHEN a.q11 = NULL AND CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('2') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%2|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|2%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
		   	WHEN a.q13 IN('2') AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%2|%' AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%|2%' AND CAST(b.question AS INT) = 13 THEN 1     
		   	WHEN a.q13 = NULL AND CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL      
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered2",
		CASE
			WHEN a.q1 IN('3') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%3|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|3%' AND CAST(b.question AS INT) = 1 THEN 1
		 	WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN a.q3 IN('3') AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%3|%' AND CAST(b.question AS INT) = 3 THEN 1
			WHEN a.q3 LIKE '%|3%' AND CAST(b.question AS INT) = 3 THEN 1
		   	WHEN a.q3 = NULL AND CAST(b.question AS INT) = 3 THEN NULL
		   	WHEN a.q4 IN('3') AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%3|%' AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%|3%' AND CAST(b.question AS INT) = 4 THEN 1
		   	WHEN a.q4 = NULL AND CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
		   	WHEN a.q6 IN('3') AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%3|%' AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%|3%' AND CAST(b.question AS INT) = 6 THEN 1	     
		   	WHEN a.q6 = NULL AND CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('3') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%3|%' AND CAST(b.question AS INT) = 7 THEN 1
		   	WHEN a.q7 LIKE '%|3%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q9 IN('3') AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%3|%' AND CAST(b.question AS INT) = 9 THEN 1
			WHEN a.q9 LIKE '%|3%' AND CAST(b.question AS INT) = 9 THEN 1     
		   	WHEN a.q9 = NULL AND CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('3') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%3|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|3%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
		   	WHEN a.q11 IN('3') AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%3|%' AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%|3%' AND CAST(b.question AS INT) = 11 THEN 1     
		   	WHEN a.q11 = NULL AND CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('3') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%3|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|3%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
		   	WHEN a.q13 IN('3') AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%3|%' AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%|3%' AND CAST(b.question AS INT) = 13 THEN 1     
		   	WHEN a.q13 = NULL AND CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL 
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered3",
		CASE
			WHEN a.q1 IN('4') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%4|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|4%' AND CAST(b.question AS INT) = 1 THEN 1
		 	WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
		   	WHEN a.q4 IN('4') AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%4|%' AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%|4%' AND CAST(b.question AS INT) = 4 THEN 1
		   	WHEN a.q4 = NULL AND CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
		   	WHEN a.q6 IN('4') AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%4|%' AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%|4%' AND CAST(b.question AS INT) = 6 THEN 1	     
		   	WHEN a.q6 = NULL AND CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('4') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%4|%' AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%|4%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('4') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%4|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|4%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
		   	WHEN a.q11 IN('4') AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%4|%' AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%|4%' AND CAST(b.question AS INT) = 11 THEN 1     
		   	WHEN a.q11 = NULL AND CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('4') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%4|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|4%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
		   	WHEN a.q13 IN('4') AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%4|%' AND CAST(b.question AS INT) = 13 THEN 1
			WHEN a.q13 LIKE '%|4%' AND CAST(b.question AS INT) = 13 THEN 1     
		    WHEN a.q13 = NULL AND CAST(b.question AS INT) = 13 THEN NULL
		    WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered4",
		CASE
			WHEN a.q1 IN('5') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%5|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|5%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
		   	WHEN a.q4 IN('5') AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%5|%' AND CAST(b.question AS INT) = 4 THEN 1
			WHEN a.q4 LIKE '%|5%' AND CAST(b.question AS INT) = 4 THEN 1
		   	WHEN a.q4 = NULL AND CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
		   	WHEN a.q6 IN('5') AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%5|%' AND CAST(b.question AS INT) = 6 THEN 1
			WHEN a.q6 LIKE '%|5%' AND CAST(b.question AS INT) = 6 THEN 1	     
		   	WHEN a.q6 = NULL AND CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('5') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%5|%' AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%|5%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('5') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%5|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|5%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
		   	WHEN a.q11 IN('5') AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%5|%' AND CAST(b.question AS INT) = 11 THEN 1
			WHEN a.q11 LIKE '%|5%' AND CAST(b.question AS INT) = 11 THEN 1     
		   	WHEN a.q11 = NULL AND CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('5') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%5|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|5%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
		   	WHEN a.q13 IN('5') AND CAST(b.question AS INT) = 13 THEN 1
			WHEN CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered5",
		CASE
			WHEN a.q1 IN('6') AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%6|%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 LIKE '%|6%' AND CAST(b.question AS INT) = 1 THEN 1
			WHEN a.q1 = NULL AND CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
			WHEN CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
			WHEN CAST(b.question AS INT) = 6 THEN NULL
		   	WHEN a.q7 IN('6') AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%6|%' AND CAST(b.question AS INT) = 7 THEN 1
			WHEN a.q7 LIKE '%|6%' AND CAST(b.question AS INT) = 7 THEN 1     
		   	WHEN a.q7 = NULL AND CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
		   	WHEN a.q10 IN('6') AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%6|%' AND CAST(b.question AS INT) = 10 THEN 1
			WHEN a.q10 LIKE '%|6%' AND CAST(b.question AS INT) = 10 THEN 1     
		   	WHEN a.q10 = NULL AND CAST(b.question AS INT) = 10 THEN NULL
			WHEN CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('6') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%6|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|6%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
			WHEN CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered6",
		CASE
			WHEN CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
			WHEN CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
			WHEN CAST(b.question AS INT) = 6 THEN NULL
			WHEN CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q9 LIKE '%' AND CAST(b.question AS INT) = 9 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
			WHEN CAST(b.question AS INT) = 10 THEN NULL
		 	WHEN CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('7') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%7|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|7%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
			WHEN CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered7",
		CASE
			WHEN CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
			WHEN CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
			WHEN CAST(b.question AS INT) = 6 THEN NULL
			WHEN CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
			WHEN CAST(b.question AS INT) = 10 THEN NULL
			WHEN CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('8') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%8|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|8%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
			WHEN CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered8",
		CASE
			WHEN CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
			WHEN CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
			WHEN CAST(b.question AS INT) = 6 THEN NULL
			WHEN CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
			WHEN CAST(b.question AS INT) = 10 THEN NULL
			WHEN CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('9') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%9|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|9%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
			WHEN CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered9",
		CASE
			WHEN CAST(b.question AS INT) = 1 THEN NULL
			WHEN CAST(b.question AS INT) = 2 THEN NULL
			WHEN CAST(b.question AS INT) = 3 THEN NULL
			WHEN CAST(b.question AS INT) = 4 THEN NULL
			WHEN CAST(b.question AS INT) = 5 THEN NULL
			WHEN CAST(b.question AS INT) = 6 THEN NULL
			WHEN CAST(b.question AS INT) = 7 THEN NULL
		   	WHEN a.q8 LIKE '%' AND CAST(b.question AS INT) = 8 THEN NULL
		   	WHEN a.q8 = NULL AND CAST(b.question AS INT) = 8 THEN NULL
			WHEN CAST(b.question AS INT) = 9 THEN NULL
		 	WHEN CAST(b.question AS INT) = 10 THEN NULL
			WHEN CAST(b.question AS INT) = 11 THEN NULL
		   	WHEN a.q12 IN('10') AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%10|%' AND CAST(b.question AS INT) = 12 THEN 1
			WHEN a.q12 LIKE '%|10%' AND CAST(b.question AS INT) = 12 THEN 1     
		   	WHEN a.q12 = NULL AND CAST(b.question AS INT) = 12 THEN NULL
			WHEN CAST(b.question AS INT) = 13 THEN NULL
		   	WHEN a.q14 LIKE '%' AND CAST(b.question AS INT) = 14 THEN NULL  
		   	WHEN a.q14 = NULL AND CAST(b.question AS INT) = 14 THEN NULL
		   	ELSE 0
			END AS "Answered10"
		FROM survey a
		JOIN
		    (SELECT q1, user_id,
		        CASE
		            WHEN q1 LIKE('%') OR NULL THEN '1' ELSE '1'
		            END AS "question"
		            FROM survey AS "question"
		     UNION
		     SELECT q2, user_id,
		        CASE
		            WHEN q2 LIKE('%') OR NULL THEN '2' ELSE '2'
		            END AS "question"
		            FROM survey AS question
		     UNION
		     SELECT q3, user_id,
		        CASE
		            WHEN q3 LIKE('%') OR NULL THEN '3' ELSE '3'
		            END AS "question"
		            FROM survey AS question
		     UNION
		     SELECT q4, user_id,
		        CASE
		            WHEN q4 LIKE('%') OR NULL THEN '4' ELSE '4'
		            END AS "question"
		            FROM survey AS question
		     UNION
		     SELECT q5, user_id,
		        CASE
		            WHEN q5 LIKE('%') OR NULL THEN '5' ELSE '5'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q6, user_id,
		        CASE
		            WHEN q6 LIKE('%') OR NULL THEN '6' ELSE '6'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q7, user_id,
		        CASE
		            WHEN q7 LIKE('%') OR NULL THEN '7' ELSE '7'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q8, user_id,
		        CASE
		            WHEN q8 LIKE('%') OR NULL THEN '8' ELSE '8'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q9, user_id,
		        CASE
		            WHEN q9 LIKE('%') OR NULL THEN '9' ELSE '9'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q10, user_id,
		        CASE
		            WHEN q10 LIKE('%') OR NULL THEN '10' ELSE '10'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q11, user_id,
		        CASE
		            WHEN q11 LIKE('%') OR NULL THEN '11' ELSE '11'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q12, user_id,
		        CASE
		            WHEN q12 LIKE('%') OR NULL THEN '12' ELSE '12'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q13, user_id,
		        CASE
		            WHEN q13 LIKE('%') OR NULL THEN '13' ELSE '13'
		            END AS "question"
		            FROM survey AS question
		    UNION
		    SELECT q14, user_id,
		        CASE
		            WHEN q14 LIKE('%') OR NULL THEN '14' ELSE '14'
		            END AS "question"
		            FROM survey AS question) AS b
ON a.user_id = b.user_id) AS a) AS a
GROUP BY CAST(a.user_id AS INT), CAST(a.question AS INT)
ORDER BY 1
LIMIT 1000