% File: frog.m
% Description: PWD Homework 3
% Author: Eduard Paul Enoiu
% Mail: rmu09001@student.mdh.se

% PWD problem: The frog wishes to reach the froggery which
% is situated in 160 meters from the current place where the
% frog is. By each jump, the frog halves the distance between
% her and the froggery.

% Write down a function computing the number of steps
% necessary to make by the frog to be in the distance of 5 cm
% from the froggery. 

% This function have two input parameters:
% the initial distance between the frog and froggery and the
% desirable distance where the frog wants to be.
  
% Additionally, this function should have one output 
% parameter, the number of steps made by the frog.
% Visualize your result.

%RESULT:
%                             desirable_distance
%                                  <---->
%                                  |    |
%                                  |    |
% start |--------------------------|----| froggery
%       |                               | 
%       |                               |
%       |                               | 
%       |                               |
%       <------------------------------->
%                  distance

 
function [steps]=frog(distance, desirable_distance)

counter=0;         %counter variable
yes_we_can=0;      %variable that checks when the frog is in the 
                   %specific distance from the froggery. 
                   
global_distance=distance;

while distance> desirable_distance
   counter=counter+1;
   
   jump=distance/2;
   distance=distance-jump;
   
   viz(counter)=global_distance-distance;%vector for vizualizing
                                         %the jumps done by the frog
   
   if distance==desirable_distance % the frog is in the right point
      yes_we_can=1;                % from the froggery
   end
end

if yes_we_can==1
disp('The number of steps:')
steps=counter;

plot(viz, '--rs','LineWidth',2,...   
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10);
            
else
    disp('Impossible:') %impposible because the frog skips the 
                        %desirable point
    steps=0;
end
    
