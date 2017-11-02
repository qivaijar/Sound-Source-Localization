function degg=localize2(a,fs,mic_kiri,mic_kanan)
%based on paper Calibration and uncertainty evaluation using monte carlo
%method of a simple 2D sound Localization System
% a refer to length from ear to the inner head
addpath('G:\Bu Irma\Sound Source Localization\HRTF\Data HRTF\Sound')% path to hrtf database wave sound
mic_kiri=audioread(mic_kiri);
mic_kanan=audioread(mic_kanan);
ITD=gccphat(mic_kiri,mic_kanan);
c=34500;  %wave sound speed in cm/s
degg=ITD*c/(2*fs*a);