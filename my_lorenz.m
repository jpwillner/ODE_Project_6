%
% Project 6 - ODE Lorenz code
%
%
%

function [x,y,z] = my_lorenz(rho, sigma, beta, initV, T, eps)
% LORENZ Function generates the lorenz attractor of the prescribed values
% of parameters rho, sigma, beta
%
%   [X,Y,Z] = LORENZ(RHO,SIGMA,BETA,INITV,T,EPS)
%       X, Y, Z - output vectors of the strange attactor trajectories
%       RHO     - Rayleigh number
%       SIGMA   - Prandtl number
%       BETA    - parameter
%       INITV   - initial point
%       T       - time interval
%       EPS     - ode solver precision
%
% Example.
%        [X Y Z] = lorenz(28, 10, 8/3);
%        

if nargin<3
  error('MATLAB:lorenz:NotEnoughInputs','Not enough input arguments.'); 
end

if nargin<4
  eps = 0.000001;
 % T = [0 25];
 T = [0 100];
  initV = [0 1 1.05];
end

options = odeset('RelTol',eps,'AbsTol',[eps eps eps/10]);
[T,X] = ode45(@(T,X) F(T, X, sigma, rho, beta), T, initV, options);

x = X(:,1);
y = X(:,2);
z = X(:,3);
return
end

function dx = F(T, X, sigma, rho, beta)
% Evaluates the right hand side of the Lorenz system
% x' = sigma*(y-x)
% y' = x*(rho - z) - y
% z' = x*y - beta*z
% typical values: rho = 28; sigma = 10; beta = 8/3;

    dx = zeros(3,1);
    dx(1) = sigma*(X(2) - X(1));
    dx(2) = X(1)*(rho - X(3)) - X(2);
    dx(3) = X(1)*X(2) - beta*X(3);
    return
end


