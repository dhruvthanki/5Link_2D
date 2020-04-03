function cost = objective(x)
warning('off','all');
XX = [x(1); x(2); x(3); x(4); x(5); x(6); x(7); x(8); x(9); x(10)];
[a,thm,thp] = value_assign(x);
options = odeset('Events',@(t,q) impactDetection(t,q),'RelTol',1e-10,'AbsTol',1e-10);
[t,y,te,ye] = ode45(@(t,Z) closedLoopControl(t,Z,a,thm,thp),[0:0.01:200],XX,options);
if isempty(ye)
    cost = 1000000*(1 + rand);
else
    p2 = StepLen(ye);
    for j = 1:length(t)
        u(:,j) = controller(y(j,:),a,thm,thp);
    end
    cost = abs(abs(norm(u))/p2(1));
end
end
