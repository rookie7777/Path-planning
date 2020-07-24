
function f=bojecfun(x) %% cost function


[du_X,ddu_X,du_Y,ddu_Y]=d_u_XY(x); %% Call back derivative function 
%% Ä¿±êº¯Êý
ds=sqrt(du_X^2+du_Y^2);
dk=abs(du_X * ddu_Y+du_Y*ddu_X)/(du_X^2+du_Y^2)^(2/3);
dk_f=matlabFunction(dk);
ds_f=matlabFunction(ds);
k=integral(dk_f,0,1);
s=integral(ds_f,0,1);

f=1000*k+s;



end






















