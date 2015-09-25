function gpa = GPAcalculate (courseNums , courseHrs, courseGrades, course)
% takes vectors of course numbers w/ corresponding hrs and grades and
% searches this input data for a specific course level and returns the GPA
% for that course level
% usage: gpa = GPAcalculate (courseNums , courseHrs, courseGrades, course)

courseNums = floor(courseNums ./ 1000) .* 1000;
% converts course numbers from specific number to just level (1034 -->
% 1000)

indexVals = (courseNums == course);
% determines the index value(s) for the selected course number

courseGrades = courseGrades( indexVals );
% changes the courseGrades vector to contain only the grades for the
% desired course

courseGPA( find(courseGrades >= 90)) = 4;
courseGPA( find(courseGrades >= 80 & courseGrades < 90)) = 3;
courseGPA( find(courseGrades >= 70 & courseGrades <80)) = 2;
courseGPA( find(courseGrades >= 65 & courseGrades < 70)) = 1;
courseGPA( find(courseGrades < 65)) = 0;
%creates a vector with GPA conversion for each grade in the course

selectHrs = courseHrs(indexVals);
% creates a vector with just the hours corresponding to the course

gpa = sum(selectHrs .* courseGPA) ./ sum(selectHrs);
% performs GPA calculation

end