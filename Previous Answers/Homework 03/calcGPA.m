function gpa = calcGPA (courseNums , courseHrs, courseGrades, course)
courseNums = floor(courseNums ./ 1000) .* 1000;
indexVals = (courseNums == course);
courseGrades = courseGrades( indexVals );courseGPA( find(courseGrades >= 90)) = 4;
courseGPA( find(courseGrades >= 80 & courseGrades < 90)) = 3;
courseGPA( find(courseGrades >= 70 & courseGrades <80)) = 2;
courseGPA( find(courseGrades >= 65 & courseGrades < 70)) = 1;
courseGPA( find(courseGrades < 65)) = 0;
selectHrs = courseHrs(indexVals);
gpa = sum(selectHrs .* courseGPA) ./ sum(selectHrs);
end