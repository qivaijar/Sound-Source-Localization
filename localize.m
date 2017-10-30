function [ds ang]=localize(mic_kiri,mic_kanan,fs)
%ang = hasil sudut dengan mic kiri sebagai referensi 
addpath('G:\Bu Irma\Sound Source Localization\HRTF\Data HRTF\Sound')
mic_kiri=audioread(mic_kiri);
mic_kanan=audioread(mic_kanan);
c=34500;   %sound speed, cm/s
ds=gccphat(mic_kiri,mic_kanan);
ms=13.72;  %untuk MRT01, 2 kali w, mic spacing dalam cm
ang=rad2deg(acos(c*ds/(fs*ms)));