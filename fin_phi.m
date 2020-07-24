 %% ºá°Ú½ÇËÙ¶È
% This function is to solve the yaw rate constraint;
% But I am not find a accurate inequality 
% If you have method to solve the constraint of yaw rate, please call me.

function [phi_max, phi_min]=fin_phi(x)
syms u;
[du_X,ddu_X,du_Y,ddu_Y]=d_u_XY(x);

tm=x(3);

phi=atan(du_Y/du_X);
d_phi=diff(phi,u)/tm;
d_phi_1=-d_phi;
f_d_phi=matlabFunction(d_phi);
f_d_phi_1=matlabFunction(d_phi_1);
[u_min]=fminbnd(f_d_phi,0,1);
[phi_min]=f_d_phi(u_min);
[u_max]=fminbnd(f_d_phi_1,0,1);

[phi_max]=f_d_phi_1(u_max);
end
