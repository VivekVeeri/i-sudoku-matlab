% File: fact1.m
% Description: This function computes the factorial function of an input
% number n using a for loop.
% Author: Ivan Castro
% Mail: ico09002@student.mdh.se

function f = fact1(n)

    if (isnumeric(n) && n >= 0) % Simple input validation
        if n == 0
            f = 1;
        else
            f = n;
            for i = n-1:-1:1
                f = f*i;
            end
        end
        return;
    else
        error('input n must be a non negative integer');
    end
end

