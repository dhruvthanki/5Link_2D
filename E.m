function [E] = E(q)

  E(1,1)=(2*cos(q(1) + q(3) + q(5)))/5 - (2*cos(q(1) + q(2) + q(4)))/5 - (2*cos(q(1) + q(2)))/5 +...
          (2*cos(q(1) + q(3)))/5;
  E(1,2)=- (2*cos(q(1) + q(2) + q(4)))/5 - (2*cos(q(1) + q(2)))/5;
  E(1,3)=(2*cos(q(1) + q(3) + q(5)))/5 + (2*cos(q(1) + q(3)))/5;
  E(1,4)=-(2*cos(q(1) + q(2) + q(4)))/5;
  E(1,5)=(2*cos(q(1) + q(3) + q(5)))/5;
  E(1,6)=1;
  E(1,7)=0;
  E(2,1)=(2*sin(q(1) + q(2) + q(4)))/5 - (2*sin(q(1) + q(3) + q(5)))/5 + (2*sin(q(1) + q(2)))/5 -...
          (2*sin(q(1) + q(3)))/5;
  E(2,2)=(2*sin(q(1) + q(2) + q(4)))/5 + (2*sin(q(1) + q(2)))/5;
  E(2,3)=- (2*sin(q(1) + q(3) + q(5)))/5 - (2*sin(q(1) + q(3)))/5;
  E(2,4)=(2*sin(q(1) + q(2) + q(4)))/5;
  E(2,5)=-(2*sin(q(1) + q(3) + q(5)))/5;
  E(2,6)=0;
  E(2,7)=1;

 