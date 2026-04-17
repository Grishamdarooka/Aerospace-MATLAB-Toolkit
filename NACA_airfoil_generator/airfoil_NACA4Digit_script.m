clear all; close all; clc

% This program generates the shape of 
% NACA 4 digit series airfoils 
n = input('Enter the number of points on the airfoil: ');

M = input('Enter the first digit of the airfoil: ');       % First digit
P = input('Enter the second digit of the airfoil: ');       % Second digit
T = input('Enter the last 2 digit of the airfoil: ');      % Last 2 digit

c = 1;        % Chord Length

m = M*c/100;  % Max Chamber
p = P*c/10;    % Location of Max Chamber from leading edge
t = T*c/100;   % Max Thickness

for i=1:n
    theta = (i-1)*2*pi/n;
    % Eq. 1
    x = 0.5*c*(1 + cos(theta));

    % Camber Eq
    if x<p
        % Eq 2
        yc(i) = (m/p^2)*(2*p*x - x^2);
    else
        % Eq 3 
        yc(i) = (m/(1-p)^2)*((1-2*p)+2*p*x - x^2);
    end

    %  Thickness Distribution
    yt = 5*t*(0.2969*sqrt(x)...
              -0.1260*x ...
              - 0.3516*x^2 ...
              + 0.2843*x^3 ...
              - 0.1026*x^4);

    if i<(1+n/2)
        % Upper surface points (Eq 5 and 6)
        xa(i) = x;
        ya(i) = yc(i) + yt;
    else
        % Lower surface points (Eq 7 and 8)
        xa(i) = x;
        ya(i) = yc(i) - yt;
    end
    xa(n+1) = c; ya(n+1) = 0;   %Trailing edge
    yc(n+1) = 0;  %Camber value at trailing edge
end

% Plotting Syntax
fill(xa,ya,'c')

hold on
% plot(xa,ya,'-ok')
plot(xa,ya,'-k','LineWidth',1.5)
axis([-0.1 1.1 -0.5 0.6])
xlabel('X')
ylabel('Y')
title ('Shape of NACA 4 Digit Airfoil')
grid minor

% Mean camber line
plot(xa,yc,'--r')
% axis off
hold off
