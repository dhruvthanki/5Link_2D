function [C,Ceq] = nonlinear(x)
XX = [x(1); x(2); x(3); x(4); x(5); x(6); x(7); x(8); x(9); x(10)];
[a,thm,thp] = value_assign(x);

options = odeset('Events',@(t,q) impactDetection(t,q),'RelTol',1e-5,'AbsTol',1e-4);
[t,y,te,ye,ie] = ode45(@(t,Z) closedLoopControl(t,Z,a,thm,thp),[0 20],XX,options);

if isempty(ye)
    C = 1000000*(ones(7,1) + rand(7,1));
    Ceq = 1000000*(1 + rand);
else
        for j = 1:length(t)
            u(j,:) = controller(y(j,:),a,thm,thp);
            F_con(j,:) = contact_force(y(j,:),u(j,:));
        end
        q1 = y(:,1);
        q4 = y(:,4);
        q5 = y(:,5);
        fp = impactMap(ye);
        friction_cone = abs(F_con(1,:)./F_con(2,:));
        step_length = StepLen(ye);
        average_speed = step_length(1)/te;
        C = [(max(max(abs(u)))-70)/70; -1*min(q4) ; -1*min(q5); (max(friction_cone)-0.8)/0.8 ; ...
            -1*(average_speed-0.2)/0.2 ; (average_speed - 1.2)/1.2 ; -1*(step_length(1) - 0.5)/0.5];
        Ceq = norm(fp - XX);
end
end
