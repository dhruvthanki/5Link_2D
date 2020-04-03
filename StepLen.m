function SwingFoot = StepLen(q)
lt=0.4;lf=0.4;
SwingFoot=[-lt*sin(pi-q(1)-q(2)-q(4))-lf*sin(pi-q(1)-q(2))-lf*sin(q(1)+q(3)-pi)-lt*sin(q(1)+q(3)+q(5)-pi) lt*cos(pi-q(1)-q(2)-q(4))+lf*cos(pi-q(1)-q(2))-lf*cos(q(1)+q(3)-pi)-lt*cos(q(1)+q(3)+q(5)-pi)];
end
