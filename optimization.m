clear;
clc; 
warning('off','all');
% fix = open('fixed_point_F=0.mat');
% ival1 = (fix.x)';
ival1 = 1+rand(26,1);
LB = ival1(1:26) - 10;
UB = ival1(1:26) + 10;

options = optimset('UseParallel',true,'Display','iter','TolFun',1e-10,'TolX',1e-10,'MaxFunEvals',10000);
x = fmincon('objective',ival1,[],[],[],[],LB,UB,'nonlinear',options);

save('new_value_mod.mat','x');
