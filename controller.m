function [u,fx,gx] = controller(x,a,thm,thp)

dq = [x(6); x(7); x(8); x(9); x(10)];
D = D_q(x);
G = G_q(x);
C = C_q(x(1:5),x(6:10));
B = [zeros(1,4);eye(4)];

fx = [dq;D\(-C*dq-G)];
gx = [zeros(5,4);D\B];

lfh = Lfh(x,a,thm,thp);
l2fh = JacLfh(x,a,thm,thp)*fx;
lglfh = JacLfh(x,a,thm,thp)*gx;
h = h_q(x,a,thm,thp);

v=PSIi(h,lfh,0.9,0.1);
u = lglfh\(v - l2fh);
