% File: verific.m
% Description: This file implements the corectness verification
% function. It has as input the cell matrix A which contains
% the current puzzle. The output of the function is stored in 
% variable val which can have two values: 0 if the puzzle is 
% correct and 1 otherwise.
% Author(s): Raluca Marinescu, Eduard Enoiu
% Mail(s): rmu09001@student.mdh.se, eeu09001@student.mdh.se
% Group number: A-3

function [val]=verific(A)

flag=0;
for i=1:9 
    for nr=1:9
        count=0;
        for j=1:9
            if A(i,j)==nr count=count+1;
            end
        end 
        if count>1 flag=1;
        end
    end
end

% if flag==1 
%     fprintf('Same number on a row.\n') 
%     flag=0;
% end

for i=1:9 
    for nr=1:9
        count=0;
        for j=1:9
            if A(j,i)==nr count=count+1;
            end
        end
        if count>1 flag=1;
        end
    end
end

% if flag==1 
%     fprintf('Same number on a column.\n')
%     flag=0;
% end

for n=1:3 
   for nr=1:9
       count=0;
       for i=((n-1)*3+1):(n*3)
           for j=((n-1)*3+1):(n*3)
                if A(i,j)==nr count=count+1;
                end
            end
       end 
       if count>1 flag=1;
       end
    end
end

if flag==0 val=0;
else val=1;
end