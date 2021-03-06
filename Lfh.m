function [Lfh] = Lfh(Y,alpha,thm,thp)

  Lfh(1,1)=Y(7)*((6*alpha(1,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*...
         alpha(1,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) + (6*alpha(1,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 - (6*alpha(1,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 + (30*...
         alpha(1,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 - (30*...
         alpha(1,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (30*...
         alpha(1,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (15*...
         alpha(1,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 -...
          (60*alpha(1,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 + (60*alpha(1,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 + (60*alpha(1,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 - (60*alpha(1,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + 1) - Y(6)*((6*alpha(1,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) -...
          (6*alpha(1,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(1,6)*(Y(1) +...
          Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(1,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(1,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(1,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(1,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(1,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(1,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(1,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(1,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(1,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4) - Y(9)*((3*alpha(1,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (3*...
         alpha(1,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (3*alpha(1,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 + (3*alpha(1,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (15*...
         alpha(1,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (15*...
         alpha(1,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (15*...
         alpha(1,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (15*...
         alpha(1,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (30*...
         alpha(1,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm - thp)^3 -...
          (30*alpha(1,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (30*alpha(1,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (30*alpha(1,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4);
  Lfh(2,1)=Y(8) - Y(9)*((3*alpha(2,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm -...
          thp) - (3*alpha(2,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (3*alpha(2,6)*(Y(1) +...
          Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 + (3*alpha(2,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (15*...
         alpha(2,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (15*...
         alpha(2,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (15*...
         alpha(2,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (15*...
         alpha(2,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (30*...
         alpha(2,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm - thp)^3 -...
          (30*alpha(2,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (30*alpha(2,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (30*alpha(2,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4) - Y(6)*((6*alpha(2,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*...
         alpha(2,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(2,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(2,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(2,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(2,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(2,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(2,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(2,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(2,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(2,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(2,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4) - Y(7)*((6*alpha(2,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*...
         alpha(2,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(2,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(2,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(2,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(2,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(2,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(2,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(2,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(2,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(2,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(2,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4);
  Lfh(3,1)=Y(9)*((3*alpha(3,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (3*...
         alpha(3,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) + (3*alpha(3,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 - (3*alpha(3,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 + (15*...
         alpha(3,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 - (15*...
         alpha(3,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 - (15*...
         alpha(3,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(3,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(3,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm - thp)^3 +...
          (30*alpha(3,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 + (30*alpha(3,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 - (30*alpha(3,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + 1) - Y(6)*((6*alpha(3,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) -...
          (6*alpha(3,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(3,6)*(Y(1) +...
          Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(3,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(3,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(3,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(3,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(3,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(3,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(3,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(3,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(3,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4) - Y(7)*((6*alpha(3,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*...
         alpha(3,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(3,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(3,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(3,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(3,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(3,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(3,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(3,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(3,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(3,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(3,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4);
  Lfh(4,1)=Y(10) - Y(9)*((3*alpha(4,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm -...
          thp) - (3*alpha(4,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (3*alpha(4,6)*(Y(1) +...
          Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 + (3*alpha(4,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (15*...
         alpha(4,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (15*...
         alpha(4,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (15*...
         alpha(4,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (15*...
         alpha(4,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (30*...
         alpha(4,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm - thp)^3 -...
          (30*alpha(4,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (30*alpha(4,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (30*alpha(4,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4) - Y(6)*((6*alpha(4,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*...
         alpha(4,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(4,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(4,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(4,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(4,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(4,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(4,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(4,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(4,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(4,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(4,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4) - Y(7)*((6*alpha(4,1)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*...
         alpha(4,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^5)/(thm - thp) - (6*alpha(4,6)*(Y(1) + Y(2) +...
          Y(4)/2 - thp)^5)/(thm - thp)^6 + (6*alpha(4,7)*(Y(1) + Y(2) + Y(4)/2 - thp)^5)/(thm - thp)^6 - (30*...
         alpha(4,2)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(Y(1) + Y(2) + Y(4)/2 - thp))/(thm - thp)^2 + (30*...
         alpha(4,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 - (30*...
         alpha(4,6)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)*(Y(1) + Y(2) + Y(4)/2 - thp)^4)/(thm - thp)^5 + (15*...
         alpha(4,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^4*(2*Y(1) + 2*Y(2) + Y(4) - 2*thp))/(thm - thp)^2 +...
          (60*alpha(4,3)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 - thp)^2)/(thm -...
          thp)^3 - (60*alpha(4,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^3*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^2)/(thm - thp)^3 - (60*alpha(4,4)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4 + (60*alpha(4,5)*((Y(1) + Y(2) + Y(4)/2 - thp)/(thm - thp) - 1)^2*(Y(1) + Y(2) + Y(4)/2 -...
          thp)^3)/(thm - thp)^4);

 