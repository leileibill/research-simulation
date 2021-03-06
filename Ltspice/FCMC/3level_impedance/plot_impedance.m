clc;
close all;
clear;
set_figure_style_pre();

%% hard-charging

figure;
var_name = '3level_impedance_hard.mat';
load(var_name);
% loglog(freq, (vin.*-iin-vout.*iout),'s-')
% hold on
loglog(freq, (vin/2-vout)./iout)

ylim([1e-2,2e0])
% title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_impedance_hard','pdf')
% 
%% soft-charging

figure;
var_name = '3level_impedance_soft.mat';
load(var_name);
% loglog(freq, (vin.*-iin-pout)./iout.^2,'s-')
% hold on
loglog(freq, (vin/2-vout)./iout)

ylim([1e-2,2e0])
xlim([1e4,3e5])
% title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_impedance_soft','pdf')



%% soft-charging, ditributed inductance

figure;
var_name = '3level_impedance_distributed.mat';
load(var_name);
% loglog(freq, (vin.*-iin-pout)./iout.^2,'s-')
% hold on
loglog(freq, (vin/2-vout)./iout)

ylim([1e-2,2e0])
xlim([1e4,1e6])
% title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_impedance_distributed','pdf')


cascade