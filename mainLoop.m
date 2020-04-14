clear;
close all;
clc;

compile=false;
if(compile)
    matrices
    Ematrices
    lieController
end

optimise=false;
if(optimise)
    warning('off','all');
    % fix = open('fixed_point_F=0.mat');
    % ival1 = (fix.x)';
    ival1 = 1+rand(26,1);
    LB = ival1(1:26) - 10;
    UB = ival1(1:26) + 10;

    options = optimset('UseParallel',true,'Display','iter','TolFun',1e-10,'TolX',1e-10,'MaxFunEvals',10000);
    x = fmincon('objective',ival1,[],[],[],[],LB,UB,'nonlinear',options);

    save('new_value_mod.mat','x');
end

fix1 = open('fixed_point_F=0.mat');  %working already converged
fix2 = open('fixed_point_mod.mat'); %working but already converged
fix3 = open('goodout.mat');  %working
fix4 = open('new_fixed_point_mod.mat');  %working

step = 5;
ival = fix3.x';
X0 = ival(1:10)';
tout = [];
uout = [];
yout = [];
hout = [];
hout_d = [];
ts = 0;
Fcon_out = [];
[a,thm,thp] = value_assign(ival);

for i = 1:step
    options = odeset('Events',@(t,q)impactDetection(t,q),'RelTol',1e-5,'AbsTol',1e-4);
    [t,y,te,ye,ie] = ode45(@(t,x) closedLoopControl(t,x,a,thm,thp),[ts:0.01:50],X0(:,i),options);
    X0(:,i+1) = impactMap(ye);
    ts = t(length(t));
    yout = [yout; y];
    tout = [tout; t];
    step_length = StepLen(ye);
    clear u h hdot F_con
    for j = 1:length(t)
        [z, p] = closedLoopControl(t,y(j,:),a,thm,thp);
        u(:,j) = p;
        h(j,:) = h_q(y(j,:),a,thm,thp);
        hdot(j,:) = Lfh(y(j,:),a,thm,thp);
        F_con(j,:) = contact_force(y(j,:),u(:,j)');
    end
    uout = [uout; u];
    hout = [hout; h];
    hout_d = [hout_d; hdot];
    Fcon_out = [Fcon_out; F_con];
end

th = yout(:,1) + yout(:,2) + 0.5*yout(:,4);
thd = yout(:,6) + yout(:,7) + 0.5*yout(:,9);
limitcycle=figure('Name','Limit cycle');
plot(th,thd)
saveas(limitcycle,'limitcycle.jpg');
