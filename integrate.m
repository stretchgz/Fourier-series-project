%   Find the integral of the time function.
%   Code will print out the result of A0, An, Bn.
%  

% Reset!!
clc
close all
clear all
syms t n


%% START EDITING
T = 2;							% the period
Wo = 2*pi/T;					% Calculate omega zero
pos_function = -2*t+2;			% function that gives positive
neg_function = 2*t-4;			% function that gives negative

pos_time_from = 0;				% time range for the positive function
pos_time_to   = 1;

neg_time_from = 1;				% time range for the negative function
neg_time_to   = 2;


%% STOP EDITING
A0_int_pos = int( pos_function, t, pos_time_from, pos_time_to);
A0_int_neg = int( neg_function, t, neg_time_from, neg_time_to); 
A0 = 1/T* ( A0_int_pos + A0_int_neg )

An_int_pos = int( pos_function*sin(n*Wo*t), t, pos_time_from, pos_time_to);
An_int_neg = int( neg_function*sin(n*Wo*t), t, neg_time_from, neg_time_to); 
An = 2/T* ( An_int_pos + An_int_neg )

Bn_int_pos = int( pos_function*cos(n*Wo*t), t, pos_time_from, pos_time_to);
Bn_int_neg = int( neg_function*cos(n*Wo*t), t, neg_time_from, neg_time_to); 
Bn = 2/T* ( Bn_int_pos + Bn_int_neg )