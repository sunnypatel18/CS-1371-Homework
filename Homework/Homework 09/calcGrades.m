function [out] = calcGrades(structure,section)
sec = {structure.Sections};
ind = find(strcmp(sec,section));
grade = structure(ind).Grades';
out = mean(grade);

end