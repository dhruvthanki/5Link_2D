function F = contact_force(x,u)
dq = [x(6:10)' ; 0 ; 0];
u = u';
B = [zeros(1,4); eye(4); zeros(2,4)];
D = D_e(x);
C = C_e(x(1:5),x(6:10));
G = G_e(x);
J = [0 0 0 0 0 1 0;
    0 0 0 0 0 0 1];
F = (J*(D\J'))\(J*(D\(C*dq+G-B*u)));
