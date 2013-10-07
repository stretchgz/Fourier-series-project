% Author: W. Tsang
% Coauthor: Kawa
% 
% 

clc
close all
clear all

T = 2;          % time to finish one cycle
Wo = 2*pi/T;    % omega zero
A0 =0;
t = -2:.01:4;   % Period of the graph

%% Plot the first graph at 2,2,1
ft = A0;
for n=1:5
    An = - (2*(sin(pi*n) - 2*cos(pi*n)*sin(pi*n) + pi*n*cos(pi*n)))/(pi^2*n^2) - (2*(sin(pi*n) - pi*n))/(pi^2*n^2);
    Bn = (4*sin((pi*n)/2)^2 - 4*sin(pi*n)^2 + 2*pi*n*sin(pi*n))/(pi^2*n^2) + (4*sin((pi*n)/2)^2)/(pi^2*n^2);
    ft = ft + An*sin(n*Wo*t) + Bn*cos(n*Wo*t);
end
subplot(2,2,1)
plot([-2 -2 -1 -1 0 0 1 1 2 2 3 3 4],...    % plot original y(t)
     [0 2 0 -2 0 2 0 -2 0 2 0 -2 0], '--r','LineWidth',2);
hold;
plot(t, ft)                                 % plot the fourier series
grid on
title('Group 7, n=1:5')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('original', 'calculated')


%% Plot the second graph at 2,2,2
ft = A0;
for n=1:10
    An = - (2*(sin(pi*n) - 2*cos(pi*n)*sin(pi*n) + pi*n*cos(pi*n)))/(pi^2*n^2) - (2*(sin(pi*n) - pi*n))/(pi^2*n^2);
    Bn = (4*sin((pi*n)/2)^2 - 4*sin(pi*n)^2 + 2*pi*n*sin(pi*n))/(pi^2*n^2) + (4*sin((pi*n)/2)^2)/(pi^2*n^2);
    ft = ft + An*sin(n*Wo*t) + Bn*cos(n*Wo*t);
end

subplot(2,2,2)
plot([-2 -2 -1 -1 0 0 1 1 2 2 3 3 4],...    % plot original y(t)
     [0 2 0 -2 0 2 0 -2 0 2 0 -2 0], '--r','LineWidth',2);
hold;
plot(t, ft)                                 % plot the fourier series
grid on
title('Group 7, n=1:10')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('original', 'calculated')

%% plot the third graph at 2,2,3
ft = A0;
for n=1:50
    An = - (2*(sin(pi*n) - 2*cos(pi*n)*sin(pi*n) + pi*n*cos(pi*n)))/(pi^2*n^2) - (2*(sin(pi*n) - pi*n))/(pi^2*n^2);
    Bn = (4*sin((pi*n)/2)^2 - 4*sin(pi*n)^2 + 2*pi*n*sin(pi*n))/(pi^2*n^2) + (4*sin((pi*n)/2)^2)/(pi^2*n^2);
    ft = ft + An*sin(n*Wo*t) + Bn*cos(n*Wo*t);
end

subplot(2,2,3)
plot([-2 -2 -1 -1 0 0 1 1 2 2 3 3 4],...    % plot original y(t)
     [0 2 0 -2 0 2 0 -2 0 2 0 -2 0], '--r','LineWidth',2);
hold;
plot(t, ft)                                 % plot the fourier series
grid on
title('Group 7, n=1:50')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('original', 'calculated')

%% plot the fourth graph at 2,2,4
ft = A0;
for n=1:100
    An = - (2*(sin(pi*n) - 2*cos(pi*n)*sin(pi*n) + pi*n*cos(pi*n)))/(pi^2*n^2) - (2*(sin(pi*n) - pi*n))/(pi^2*n^2);
    Bn = (4*sin((pi*n)/2)^2 - 4*sin(pi*n)^2 + 2*pi*n*sin(pi*n))/(pi^2*n^2) + (4*sin((pi*n)/2)^2)/(pi^2*n^2);
    ft = ft + An*sin(n*Wo*t) + Bn*cos(n*Wo*t);
end

subplot(2,2,4)
plot([-2 -2 -1 -1 0 0 1 1 2 2 3 3 4],...    % plot original y(t)
     [0 2 0 -2 0 2 0 -2 0 2 0 -2 0], '--r','LineWidth',2);
hold;
plot(t, ft)                                 % plot the fourier series
grid on
title('Group 7, n=1:100')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('original', 'calculated')