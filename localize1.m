function [ds ang]=localize1(mic_kiri,mic_kanan,fs)
%based on paper Sound source localization on Android Smartphone
%ang = hasil sudut dengan mic kiri sebagai referensi 
addpath('G:\Bu Irma\Sound Source Localization\HRTF\Data HRTF\Sound')% path to hrtf database wave sound
mic_kiri=audioread(mic_kiri);
mic_kanan=audioread(mic_kanan);
c=34500;   %sound speed, cm/s
ds=gccphat(mic_kiri,mic_kanan);
ms=13.72;  %untuk MRT01, 2 kali w, mic spacing dalam cm
ang=rad2deg(acos(c*ds/(fs*ms)));