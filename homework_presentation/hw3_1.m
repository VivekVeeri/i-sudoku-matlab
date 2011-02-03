% Script: hw3_1.m
% Description: Evaluate three expressions
% Author: Andrea G Garcia
% e-mail: aga09001@student.mdh.se

%Expression 1:
y = 8/2 < 5*3+1 > 9

% 4 < 16 > 9
% 4 < 16 ----> Returns 1
% 1 > 9  ----> Returns 0
% Final output: y = 0


%Expression 2:
a = 4; 
b = 7;
y = b - a < a < a/b

% 7 - 4 < 4 < 4/7
% 3 < 4 < 0.57
% 3 < 4    ----> Returns 1
% 1 < 0.57 ----> Returns 0
% Final output: y = 0


%Expression 3:
v = [4 -2 5 0 8];
w = [0 2 1 3 6];
(v < w) + v

% v < w = [0 1 0 1 0] 
% [0 1 0 1 0] + v = [4 -1 5 1 8]
% Final output:  [4    -1     5     1     8]