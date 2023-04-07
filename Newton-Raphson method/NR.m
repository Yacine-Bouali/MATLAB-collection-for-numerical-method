clc;clear;
%% By: YACINE BOUALI
%% 
% Define the function and its derivative
f = @(x) x^6 + 7.8*x^5 + 5.28*x^4 + 6*x^3 + 7.2*x^2 + 3*x - 7.28;
df = @(x) 6*x^5 + 39*x^4 + 21.12*x^3 + 18*x^2 + 14.4*x + 3;

% Set the initial guess and tolerance level
x0 = -1.27;
tol = 1e-6;

% Perform the Newton-Raphson iterations
x = x0;
while true
    % Calculate the next approximation
    x_new = x - f(x) / df(x);
    
    % Check for convergence
    if abs(x_new - x) < tol
        break;
    end
    
    % Update the current approximation
    x = x_new;
end

% Display the final result
fprintf('The root of the equation is approximately %.6f\n', x);
%% 
disp('Solution xs')
xS=x
disp('Solution f(xs)')
fs=f(xS)
%% plot
X=-xS*100:xS:xS*100;
Y = X.^6 + 7.8*X.^5 + 5.28.*X.^4 + 6.*X.^3 + 7.2.*X.^2 + 3*X - 7.28;
plot(X,Y)
