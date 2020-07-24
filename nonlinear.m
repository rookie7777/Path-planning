function [ceq c]=nonlinear(x)
[phi_max, phi_min]=fin_phi(x);
a=[0 0 1];
YB=3.75; %the length of the road;
c=[30*YB/(16*a*x)-3   %The velocity constraint for Y velocity
    0.0962*60*YB/(a*x*a*x)-1
    -0.0962*60*YB/(a*x*a*x)-1 %the accleration constraint of Y velocity
    phi_max-0.15
    -phi_min-0.15 %the curvature constraint;
    ];
ceq=[];
end