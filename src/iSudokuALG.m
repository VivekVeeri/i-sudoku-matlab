%clc

% A=[0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0]

% A=[1 0 0 0 0 0 0 0 5; 0 0 0 3 0 0 0 0 0; 3 0 0 0 0 5 0 0 0; 0 0 0 0 7 0 0 0 0; 0 0 8 0 0 0 0 6 0; 0 0 0 9 0 0 2 0 0; 0 0 7 0 0 0 0 0 0; 0 6 0 0 0 0 0 9 0; 0 0 0 0 4 0 5 0 0]

 %A=[1 0 0 0 0 4 0 0 5; 0 7 0 3 0 0 0 2 0; 3 0 2 0 0 5 8 0 0; 0 0 0 0 7 0 4 0 0; 0 4 8 0 0 0 0 6 0; 5 0 1 9 0 6 2 0 0; 0 0 7 1 0 8 0 0 3; 0 6 0 0 0 0 0 9 0; 2 0 0 0 4 0 5 0 7]

% A=[1 8 0 2 0 4 3 0 5; 0 7 0 3 6 0 0 2 0; 3 0 2 0 0 5 8 0 6; 0 0 1 5 7 0 4
% 0 2; 0 4 8 0 1 0 7 6 9; 5 0 1 9 0 6 2 0 0; 4 0 7 1 0 8 0 0 3; 0 6 0 7 2 0 1 9 0; 2 1 3 0 4 9 5 0 7]

function [A]= iSudokuAlg(A)

[flag1]=verific(A);

if flag1==0 fprintf('The matrix is correct.\n')
else fprintf('The matrix is NOT correct.\n')
end

for count=1:200
    for i=1:9
        for j=1:9
            if A(i,j)==0 
                row=[];
                col=[];
                Mat=[];
                
                row=A(i,:);
                col=A(:,j);
                Mat = getMat(A,i,j);
                possible = getPossible(A,i,j);
               
                possiblerow = [];
                possiblecol = [];
                possiblemat = []; 
                
                unique=[];               
                for m=1:9
                    if row(m)==0
                            possiblerow=[possiblerow,getPossible(A,i,m)];
                    end
                end               
                for k=1:length(possible) 
                    unique=compare(possiblerow,possible(k));
                end
                if length(unique)==1
                    A(i,j)=unique(1);
                end
                
                unique=[];
                for m=1:9
                    if col(m)==0
                        possiblecol=[possiblecol,getPossible(A,m,j)];
                    end
                end
                for k=1:length(possible) 
                    unique=compare(possiblecol,possible(k));
                end
                if length(unique)==1
                    A(i,j)=unique(1);
                end
                
                
                unique=[];
                for m=1:3
                    for n=1:3
                        if Mat(m,n)==0
                            possiblemat=[possiblemat,getPossible(A,3*floor((i-1)/3)+m,3*floor((j-1)/3)+n)];
                        end
                    end
                end
                
                for k=1:length(possible) 
                    unique=compare(possiblemat,possible(k));
                end
                if length(unique)==1
                    A(i,j)=unique(1);
                end
            end
        end
    end
end
   
[flag3]=verific(A);
if flag3==0 fprintf('The matrix is correct.\n')
else fprintf('The matrix is NOT correct.\n')
end           


       
            
    
    
        