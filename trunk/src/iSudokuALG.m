%clc

% A=[0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0]

% A=[1 0 0 0 0 0 0 0 5; 0 0 0 3 0 0 0 0 0; 3 0 0 0 0 5 0 0 0; 0 0 0 0 7 0 0 0 0; 0 0 8 0 0 0 0 6 0; 0 0 0 9 0 0 2 0 0; 0 0 7 0 0 0 0 0 0; 0 6 0 0 0 0 0 9 0; 0 0 0 0 4 0 5 0 0]

% A=[1 0 0 0 0 4 0 0 5; 0 7 0 3 0 0 0 2 0; 3 0 2 0 0 5 8 0 0; 0 0 0 0 7 0 4 0 0; 0 4 8 0 0 0 0 6 0; 5 0 1 9 0 6 2 0 0; 0 0 7 1 0 8 0 0 3; 0 6 0 0 0 0 0 9 0; 2 0 0 0 4 0 5 0 7]

% A=[1 8 0 2 0 4 3 0 5; 0 7 0 3 6 0 0 2 0; 3 0 2 0 0 5 8 0 6; 0 0 1 5 7 0 4
% 0 2; 0 4 8 0 1 0 7 6 9; 5 0 1 9 0 6 2 0 0; 4 0 7 1 0 8 0 0 3; 0 6 0 7 2 0 1 9 0; 2 1 3 0 4 9 5 0 7]

function [A]= iSudokuALG(A)
[flag1]=verific(A);
if flag1==0 fprintf('The matrix is correct.\n')
else fprintf('The matrix is NOT correct.\n')
end

for i=1:9
    for j=1:9
        B(i,j)=0;
    end
end

for count=1:20
for i=1:9
    for j=1:9
        if (A(i,j)+B(i,j))==0 
            possible=[];
            for k=1:9
                B(i,j)=k;
                flag2=verific(A+B);
                if flag2==0
                    possible=[possible k];
                end
            end
            B(i,j)=0;
            if length(possible)==1
                B(i,j)=possible;
            end
        end
        
    end 
end
end  
A=A+B
[flag3]=verific(A);
if flag3==0 fprintf('The matrix is correct.\n')
else fprintf('The matrix is NOT correct.\n')
end           


       
            
    
    
        