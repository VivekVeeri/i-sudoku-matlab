function Mat = getMat(A,i,j)
for i_mat=1:3
    for j_mat=1:3
        Mat(i_mat,j_mat)=A((3*floor((i-1)/3))+i_mat,3*floor((j-1)/3)+j_mat);
    end
end


% if mod(x,3)==1  %the first x position of a minicell
%     if mod(y,3)==1  %Same for y positions
%         Mat=A(x:x+2,y:y+2);
%     elseif mod(y,3)==2
%         Mat=A(x:x+2,y-1:y+1);
%     else
%         Mat=A(x:x+2,y-2:y);
%     end
% elseif mod(x,3)==2  %the middle x position of a minicell
%     if mod(y,3)==1
%         Mat=A(x-1:x+1,y:y+2);
%     elseif mod(y,3)==2
%         Mat=A(x-1:x+1,y-1:y+1);
%     else
%         Mat=A(x-1:x+1,y-2:y);
%     end
% else    %the end x position of a minicell
%     if mod(y,3)==1
%         Mat=A(x-2:x,y:y+2);
%     elseif mod(y,3)==2
%         Mat=A(x-2:x,y-1:y+1);
%     else
%         Mat=A(x-2:x,y-2:y);
%     end
% end