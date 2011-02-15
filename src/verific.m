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