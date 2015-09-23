%%
clear all
clc

alpha = 1;
A0 = [-26 22 -1 -4; 2 -24 -4 1; 7 11 -24 -22; -13 15 -1 -9];
n = size(A0,1);
A1 = alpha*diag([-1,-0.5,0,0.5]);
W = eye(n);
Xin = zeros(n);
nsteps = 100;
X = GMRESforLcx(A0,A1,1,Xin,1,-W,1e-3,nsteps);                  
L = retrieveOperator(A0,A1,1,1,nsteps);

%% 
clear all
clc
% plot the condition number of the matrix against the number of timesteps
% used to solve the ode system

alpha = 1;
A0 = [-26 22 -1 -4; 2 -24 -4 1; 7 11 -24 -22; -13 15 -1 -9];
n = size(A0,1);
A1 = alpha*diag([-1,-0.5,0,0.5]);
W = eye(n);
Xin = zeros(n);
m = 10;
cc = zeros(m,1);
for i=1:m
    nsteps = i*100;
    L = retrieveOperator(A0,A1,1,1,nsteps);
    cc(i) = cond(L);
end
plot(1:m,cc,'-x','Linewidth',3) 
