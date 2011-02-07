%A=[0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0]

% A=[1 0 0 0 0 0 0 0 5; 0 0 0 3 0 0 0 0 0; 3 0 0 0 0 5 0 0 0; 0 0 0 0 7 0 0 0 0; 0 0 8 0 0 0 0 6 0; 0 0 0 9 0 0 2 0 0; 0 0 7 0 0 0 0 0 0; 0 6 0 0 0 0 0 9 0; 0 0 0 0 4 0 5 0 0]

 A=[1 0 0 0 0 4 0 0 5; 0 7 0 3 0 0 0 2 0; 3 0 2 0 0 5 8 0 0; 0 0 0 0 7 0 4 0 0; 0 4 8 0 0 0 0 6 0; 5 0 1 9 0 6 2 0 0; 0 0 7 1 0 8 0 0 3; 0 6 0 0 0 0 0 9 0; 2 0 0 0 4 0 5 0 7]

% A=[1 8 0 2 0 4 3 0 5; 0 7 0 3 6 0 0 2 0; 3 0 2 0 0 5 8 0 6; 0 0 1 5 7 0 4 0 2; 0 4 8 0 1 0 7 6 9; 5 0 1 9 0 6 2 0 0; 4 0 7 1 0 8 0 0 3; 0 6 0 7 2 0 1 9 0; 2 1 3 0 4 9 5 0 7]


clc
%verific daca matricea este corecta
flag=0;

for i=1:9 
    for verif=1:9
        count=0;
        for j=1:9
            if A(i,j)==verif count=count+1;
            end
        end 
        if count>1 flag=1;
        end
    end
end

if flag==1 
    fprintf('Same number on a row.\n') 
    flag=0;
end

for i=1:9 
    for verif=1:9
        count=0;
        for j=1:9
            if A(j,i)==verif count=count+1;
            end
        end
        if count>1 flag=1;
        end
    end
end

if flag==1 
    fprintf('Same number on a column.\n')
    flag=0;
end

for n=1:3 
   for verif=1:9
       count=0;
       for i=((n-1)*3+1):(n*3)
           for j=((n-1)*3+1):(n*3)
                if A(i,j)==verif count=count+1;
                end
            end
       end 
       if count>1 flag=1;
       end
    end
end

if flag==1 
    fprintf('Same number on a small square.\n')
    flag=0;
end

for nr=1:9
%nr=1;
    for i=1:9
        for j=1:9
            flag=0;
            if A(i,j)==0
                count=0;
                for k=1:9
                    if A(i,k)==nr count=count+1;
                    end
                end
                for k=1:9
                    if A(k, j)==nr count=count+1;
                    end
                end
                for k=floor((i-1)/3)*3+1:(floor((i-1)/3)+1)*3
                    for t=floor((j-1)/3)*3+1:(floor((j-1)/3)+1)*3
                        if A(k,t)==nr count=count+1;
                        end
                    end
                end
                if count>0 flag=1;
                end
                if flag==0 
                    A(i,j)=nr
                    break
                end
            end
        end
    end
end


       
            
    
    
        