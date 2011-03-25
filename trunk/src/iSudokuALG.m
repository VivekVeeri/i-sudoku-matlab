% File: iSudokuALG.m
% Description: This file impements the algorithm for ISudoku Matlab
% app. The process is performed by SudokuALG function. This 
% function receives as an input parameter the cell
% matrix A and gives as output a solved puzzle in the form of a
% matrix.
% Author(s): Raluca Marinescu, Eduard Enoiu
% Mail(s): rmu09001@student.mdh.se, eeu09001@student.mdh.se
% Group number: A-3

function [A]= iSudokuALG(A)
clc;
tic;
[flag1]=verific(A);
if flag1==0 fprintf('The Sudoku Puzzle is correct.\n')

    err_flag=0;
    count_zeros=81;
    
    for i=1:9
        for j=1:9
            B(i,j)=0;
        end
    end

    step=1;
    while ((err_flag==0)&&(count_zeros>0))
        fprintf('\n Step %d\n', step);
        step=step+1;
        
        C=B;
        %I look for the postions where there is a single possible value
        %and I put that value in the matrix
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
               fprintf('Value %d in A(%d,%d)--singleton.\n', B(i,j), i, j);
                    end
                end
            end
        end

        %If we don't find one position with a single possible value
        %I put a number (correct) in an empty cell
        if C==B
            count2=0;
            x=1;
            y=1;
            while (count2==0)
                if (A(x,y)+B(x,y))==0 
                    for k=1:9
                        B(x,y)=k;
                        flag3=verific(A+B);
                        if flag3==0
                            count2=1;
                            fprintf('Value %d in A(%d,%d).\n', B(x,y), x, y);
                            break
                        else
                        B(x,y)=0;
                        end
                    end
                end
        
                if(x<9) x=x+1;
                elseif (y<9)x=1; y=y+1; 
                else break
                end

            end
        end
        
        %if the matrix is the same then I have an error
        if (B==C) err_flag=1;
        end
        
        %I count the empty cells to know when the puzzle is solved
        count_zeros=0;
        for i=1:9
            for j=1:9
                if ((A(i,j)+B(i,j))==0) count_zeros=count_zeros+1;
                end
            end
        end
                 
    end
    
    %We save the result; check if it is correct
    A=A+B
    [flag3]=verific(A);
    if flag3==0 fprintf('The Sudoku Puzzle is correct.\n')
    else fprintf('The Sudoku Puzzle is incorrect.\n')
    end           
    else fprintf('The Sudoku Puzzle is incorrect.\n')
end
time=toc;
fprintf('\n\n Execution Time: %f \n', time);
       
            
    
    
        