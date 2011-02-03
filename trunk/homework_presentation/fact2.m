% File: fact2.m
% Description: This function computes the factorial function of an input
% number n using a while loop.
% Author: Ivan Castro
% Mail: ico09002@student.mdh.se

function f = fact2(n)

    if (isnumeric(n) && n >= 0) % Simple input validation
        if n == 0
            f = 1;
        else
            f = n;
            i = n-1;
            while i>=1
                f = f*i;
                i = i-1;
            end
        end
        return;
    else
        error('input n must be a non negative integer')
    end
end