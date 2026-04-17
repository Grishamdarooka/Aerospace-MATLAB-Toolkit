clear all; close all; clc

typhoon = importdata('typhoon_datapoints_side.txt');

x = typhoon(:,1);
yplus = typhoon(:,2);
yminus = -typhoon(:,2);

patch(x,yplus,'k','LineWidth',2)
hold on 
patch(x,yminus,'k','LineWidth',2)
plot(x,yplus,'c','LineWidth',2)
plot(x,yminus,'c','LineWidth',2)
grid minor
xlabel('X')
ylabel('Y')
title('Typhoon Layout')
hold off
