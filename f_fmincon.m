%This is the main function;
%Using SQP algorithm to optimize the parameter of the quintic polynomial;

function x=f_fmincon()
v0=20;
A=[1 0 -20];%Linear inequality constraint
b=0;
Aeq=[1 0 -v0];% Linear equality constraint;
x0=[10 10 4]';%Initial paremeter value;
options=optimoptions('fmincon','Display','iter','Algorithm','sqp');
x=fmincon(@bojecfun,x0,A,b,Aeq,0,[],[],@nonlinear,options);
end
