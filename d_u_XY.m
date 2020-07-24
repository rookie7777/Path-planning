function [du_X,ddu_X,du_Y,ddu_Y]=d_u_XY(x) %Derivative function
syms u;
U=[1 u u^2 u^3 u^4 u^5];
X_A=[0 0 0;
    1 0 0;
    0 0 0;
    -10 10 0;
    15 -15 0;
    -6 6 0];
YB=3.75;
Y_A=[0 0 0 10*YB -15*YB 6*YB]';

%% X
X=U*X_A*x; %Using the matrix form to represent X(t) function
du_X=diff(X,u);
ddu_X=diff(du_X,u);

%% Y
Y=U*Y_A; %Using the matrix form to represent Y(t) function
du_Y=diff(Y,u);
ddu_Y=diff(du_Y,u);
end