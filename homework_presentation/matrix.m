% File: matrix.m
% Description: Matrices computations
% Author: Eduard Paul Enoiu & Raluca Marinescu
% Mail: {eeu09001, rmu09001}@student.mdh.se

clc;

%Generate matrix using randi operator
n = input('Input the size of the matrix: ');
x=randi(10, [n,n])


%The minimal element of the first row of the matrix
small_el=x(1,1);
small_poz=1;
for i=1:1:n
    if x(1,i) <small_el;
        small_el=x(1,i);
        small_poz=i;
    end
end
fprintf('Smallest element on the first row is %g on position %g \n',small_el, small_poz);


%Compute the total number of elements equal to the first element of the matrix;
nr_el=x(1,1);
count=-1;
for i=1:1:n
    for j=1:1:n
        if x(i,j)==nr_el 
            count=count+1;
        end
    end
end
fprintf('The number of elements equal to the first element is %g.\n',count);


%Check whether the matrix is symmetrical
if x==x'
    fprintf('The matrix is symmetrical.\n');
else fprintf('The matrix is not symmetrical.\n');
end

    
   