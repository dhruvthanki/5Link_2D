function [value,isterminal,direction] = impactDetection(t,q)
lt=0.4;
lf=0.4;
r = lt*cos(pi-q(1)-q(2)-q(4))+lf*cos(pi-q(1)-q(2))-lf*cos(q(1)+q(3)-pi)-lt*cos(q(1)+q(3)+q(5)-pi);
value = r - 0;
isterminal = 1; 
direction = -1;
end
