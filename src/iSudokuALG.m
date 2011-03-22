function [A]= iSudokuALG(A)
clc;
tic;
[flag1]=verific(A);
if flag1==0 fprintf('The matrix is correct.\n')

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
        %and I pot that value in my matrix
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
                        fprintf('I put the value %d in A(%d,%d)--singelton.\n', B(i,j), i, j);
                    end
                end
            end
        end

        %if I could not find a single position with a single possible value
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
                            fprintf('I put the value %d in A(%d,%d).\n', B(x,y), x, y);
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
        
        %if still the matrix is the same then I have an error
        if (B==C) err_flag=1;
        end
        
        %I count the empty cells to know when the I solved the puzzle
        count_zeros=0;
        for i=1:9
            for j=1:9
                if ((A(i,j)+B(i,j))==0) count_zeros=count_zeros+1;
                end
            end
        end
                 
    end
    
    %I save my result I chech if it is correct
    A=A+B
    [flag3]=verific(A);
    if flag3==0 fprintf('The matrix is correct.\n')
    else fprintf('The matrix is NOT correct.\n')
    end           
    else fprintf('The matrix is NOT correct.\n')
end
time=toc;
fprintf('\n\n The time for the alg is: %f', time);
       
            
    
    
        