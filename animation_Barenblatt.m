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

figure
for i=1:nt
    t = dt*i;
    U = t^(-alpha) * max(0,C-k*abs(x).^2*t^(-2*beta)).^(1/(m-1));
    pause(0.03)
    plot(x,U)
    axis([-2 2 0 10])
    drawnow
end
