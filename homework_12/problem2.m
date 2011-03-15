% LECTURE 12 - HOMEWORK
% Authors: Eduard Enoiu & Raluca Marinescu


% 2. You invest $ 100 in a saving account paying 4% interest
% per year. Compute the balance in your account after 20
% years with each of the following methods:
y0=100;
r=0.04;
years=20;

% a) Euler’s method, yearly.
y_a(1)=y0;
for i=2:(years+1)
    y_a(i)=y_a(i-1)+r*y_a(i-1);
end
fprintf('Method a:\n');
fprintf('We have %f money in our account.\n', y_a(end));

% b) Euler’s method, monthly.
y_b(1)=y0;
h=1/12;
time_int=years*(1/h);
for i=2:(time_int+1)
    y_b(i)=y_b(i-1)+h*r*y_b(i-1);
end
fprintf('Method b:\n');
fprintf('We have %f money in our account.\n', y_b(end));

% c) ode45 method, monthly.
y_c(1)=y0;
y(1)=0;
f = inline('0.04*y', 't','y');
t = linspace(0, years, time_int);
[t,y]=ode45(f,t,1);
for i=2:(time_int+1)
    y_c(i)=y_c(i-1)+h*y(i-1);
end
fprintf('Method c:\n');
fprintf('We have %f money in our account.\n', y_c(end));

    