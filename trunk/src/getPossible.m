function possible = getPossible(A,i,j)
possible=[];
for k=1:9
    A(i,j)=k;
    flag=verific(A);
    if flag==0
        possible=[possible k];
    end
end

% row = [];
% col = [];
% Mat = [];
% possible = [];
% %get the row, column and 3x3 group our element is in
% row = A(i,:);
% col = A(:,j);
% Mat = getMat(A,i,j);
% %check those three groups for the numbers 1:9
% %if we don't find a number this cell could potentially be
% %   that, add it to a vector
% for k = 1:9
%     valr = compare(row,k);
%     valc = compare(col,k);
%     valm = compare(Mat,k);
%     if (valr+valc+valm) == 0    %if the number isn't found in either the row, column, or sub grid, it is a possible solution
%         possible = [possible,k];
%     end
% end
