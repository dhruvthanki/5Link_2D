clear all
clc

syms Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10 real

syms s thp thm real
syms a11 a12 a13 a14 a15 a16 a17 real
syms a21 a22 a23 a24 a25 a26 a27 real
syms a31 a32 a33 a34 a35 a36 a37 real
syms a41 a42 a43 a44 a45 a46 a47 real

a1 = [a11 a12 a13 a14 a15 a16 a17]';
a2 = [a21 a22 a23 a24 a25 a26 a27]';
a3 = [a31 a32 a33 a34 a35 a36 a37]';
a4 = [a41 a42 a43 a44 a45 a46 a47]';

x = [Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10]';
c = [1 1 0 0.5 0];
q = [Y1 Y2 Y3 Y4 Y5]';
th = c*q;
s = (th - thp)/(thm - thp);
q_dot = [Y6 Y7 Y8 Y9 Y10 0 0 0 0 0]';
y1 = Y2 - bazier(s,6,a1);
y2 = Y3 - bazier(s,6,a2);
y3 = Y4 - bazier(s,6,a3);
y4 = Y5 - bazier(s,6,a4);
y_q = [y1; y2; y3; y4];
Jyq = jacobian(y_q,x);
Lfh = Jyq*q_dot
list_q_e  = {'thp','thp'; 'thm','thm';'Y1','Y(1)'; 'Y2','Y(2)'; 'Y3','Y(3)'; 'Y4','Y(4)'; ...
    'Y5','Y(5)'; 'Y6','Y(6)';'Y7','Y(7)';'Y8','Y(8)';'Y9','Y(9)';'Y10','Y(10)';...
    'a11','alpha(1,1)';'a12','alpha(1,2)';'a13','alpha(1,3)';'a14','alpha(1,4)';'a15','alpha(1,5)';'a16','alpha(1,6)';'a17','alpha(1,7)';...
    'a21','alpha(2,1)';'a22','alpha(2,2)';'a23','alpha(2,3)';'a24','alpha(2,4)';'a25','alpha(2,5)';'a26','alpha(2,6)';'a27','alpha(2,7)';...
    'a31','alpha(3,1)';'a32','alpha(3,2)';'a33','alpha(3,3)';'a34','alpha(3,4)';'a35','alpha(3,5)';'a36','alpha(3,6)';'a37','alpha(3,7)';...
    'a41','alpha(4,1)';'a42','alpha(4,2)';'a43','alpha(4,3)';'a44','alpha(4,4)';'a45','alpha(4,5)';'a46','alpha(4,6)';'a47','alpha(4,7)';};
Jac = jacobian(Lfh,x);
write_fcn(['h_q.m'],{'Y','alpha','thm','thp'},[list_q_e],{y_q,'y_q'});
write_fcn(['Lfh.m'],{'Y','alpha','thm','thp'},[list_q_e],{Lfh,'Lfh'});
write_fcn(['JacLfh.m'],{'Y','alpha','thm','thp'},[list_q_e],{Jac,'Jac'});