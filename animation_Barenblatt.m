close all
clear all
%A small script making an animation of the fundamental solution of the
%PME in 1D.

%Establishing parameters:
m=2;

alpha = 1/(m+1);
beta = alpha;
k = alpha * (m-1) / (2*m);
C=0.5;
%End time:
T = 1;
%Time steps:
nt = 1000;

dt = T/nt;

%Spatial domain:
x = linspace(-2,2,100);
t  = linspace(0, 0.5, 3)
figure
axis([-2 2 0 3])
xlabel('x-axis')
ylabel('u')
title('Example of solution for different times')
hold on
for dt=linspace(0.01, 0.5, 3)
    U = dt^(-alpha) * max(0,C-k*abs(x).^2*dt^(-2*beta)).^(1/(m-1));
    plot(x,U)
end
hold off