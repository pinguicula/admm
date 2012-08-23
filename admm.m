%% Initialize
randn('seed',1);
m = 5;
n = 5;
A = rand(m,n);
b = randn(m,1);

%% ADMM SOLVER
% We want to solve the problem
% Ax = b
% i.e. minimize_{x} Ax - b
% s.t. x > 0
% Form the ADMM-version
% Ax + Bz = c <=> 



M = 15;     % No of ADMM-steps


for i = 1:M
   x = argminx_L(x, z, y);
   z = argminz_L(x, z, y);
   y = y + rho*(A*x + B*Z - c);
end

