select * from courses

_____"I," followed by exactly seven lowercase letters, where the 8th letter is either "t" or "i," the 12th letter is either "t" or "O," and the 14th letter is either "p" or "d."
select * from courses where course_name ~* '^I[a-z]{7}(t|i)[a-z]{3} (t|O)[a-z] (p|d)[a-z]{5}$'

----- find all course categories that start with two lowercase letters, with the third letter being either "r," "k," or "e," followed by six additional lowercase letters, making the total length exactly nine characters

select category from courses where category ~* '^[a-z][a-z][r|k|e][a-z]{6}$'


	
------------- select course names that start with "D", followed by a specific pattern, and end with "B", followed by exactly two letters and then another specific pattern
select course_name from courses where course_name ~* '^D[a-z](t|a)(a|t) [a-z]{7} B[a-z]{2}(t|c)[a-z]{4}$'

------where the platform name starts with "C" and follows a specific pattern with exactly six characters

select platform from courses where platform ~* '^C[a-x][a-z]{4}(r|a)[a-z]$'

-------select all course durations that start with "6" or "7" and are followed by a specific pattern of exactly six characters

select duration from courses where duration ~* '^[6|7][a-z]{4}(s|k)$'


------find all platforms where the platform name starts with "S" and ends with either "e" or "t" and is exactly nine characters long
select platform from courses where platform ~* '^S[a-z]{8}(e|t)$'