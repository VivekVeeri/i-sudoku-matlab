function res = compare(B,C)

res = [];
[h,j]=size(B);
[k,l]=size(C);

%Loop through every element in B and compare it to every element in C
for x = 1:h
    for y = 1:j
        for c = 1:k
            for v = 1:l
                if B(x,y)==C(c,v)   %if they match add it
                    if res ~= []    %and if res is not empty
                        for g=1:length(res) %only if we don't already have it
                            if res(g)~=C(c,v)
                                res = [res,C(c,v)];
                            end
                        end
                    else            %if it is empty, we certainly don't have it, go on and add it
                        res = [res,C(c,v)];
                    end
                end
            end
        end
    end
end