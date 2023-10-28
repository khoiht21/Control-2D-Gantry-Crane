clc;clear all;
syms m1 m2 x1 x2 x1_dot x2_dot x1_2dot x2_2dot g l B R rp KT KE V z
VT1=(((R*B*rp)/(KT*z))+((KE*z)/rp))*x1_dot+((R*rp)/(KT*z))*(m1*l)*((x2_2dot)*cos(x2)-((x2_dot)^2)*sin(x2))+((R*rp)/(KT*z))*(m1+m2)*x1_2dot
VP1=V;  
FF1 = VT1-VP1
VT2=m1*(l^2)*x2_2dot+m1*l*cos(x2)*x1_2dot+m1*l*g*sin(x2);
VP2=0;
FF2 = VT2-VP2
[x1_2dot,x2_2dot] = solve(FF1,FF2,x1_2dot,x2_2dot)