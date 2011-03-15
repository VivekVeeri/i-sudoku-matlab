% File: h12_a1.m
% Description: 
%      Compute the derivative of: 
%      Function: f(x) = cos(x) * exp(x)
%      Inverval: [-pi/2; 3pi/2]     
%      Step length h = 0.0001
%        -Use forward difference at the left most point
%        -Use backward difference at the right most point
%        -Use central difference in all other points
%        -Plot y'(x)

% Author: Ivan Castro & Andrea Garcia
% E-mail: ico09002@student.mdh.se, aga09001@student.mdh

clc;
clear;
h = 0.0001; % Step size
x = [-pi/2:h:3*pi/2]; % Interval
fx = @(z)cos(z).*exp(z); % Anonymous function

numDerivative = zeros(1, length(x)); % Vector Initialization

% Forward difference for the first point x in the interval (f(x+h) - f(x))/h:
numDerivative(1) = (fx(x(1)+h) - fx(x(1)))/h;

% Backward difference for the last point x in the interval (f(x) - f(x-h))/h:
numDerivative(end) = (fx(x(end)) - fx(x(end)- h)) /h;

% For the remaining points in x, use the central difference (f(x+h) - f(x-h))/2*h; :
numDerivative(2:end-1) = (fx(x(2:end-1)+ h) - fx(x(2:end-1)- h)) ./ (2*h);

% Plot the numerical derivative and compare it against their
% analytical counterpart:

figure(1);
subplot(2,1,1);
plot(x,numDerivative);
hold on;
grid on;
title('Numerical derivative for f(x) = cos(x)*exp(x)');
xlabel('x');
ylabel('y');

% Analytical Derivative:
analyticalDeriv = -sin(x).*exp(x) + cos(x).*exp(x);

subplot(2,1,2);
plot(x,analyticalDeriv, 'r');
hold on;
grid on;
title('Analytical derivative for f(x) = cos(x)*exp(x)');
xlabel('x');
ylabel('y');
