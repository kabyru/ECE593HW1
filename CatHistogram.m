%CatHistogram, used in ECE 593-01 HW1, written by Kaleb Byrum on 1/10/2019

clear all
close all

I = imread('cat.jpg');
%Original cat photo
figure, imshow(I);
%Histogram of Intensities for original cat photo
figure, imhist(I);
title("Histogram of Intensities for 'cat.jpg'"), xlabel("Spectrum of Intensities"), ylabel("Intensity Level");
saveas(gcf, 'CatHistogram/originalCatIntensityHistogram.png');
%Create new photo object with equalized Histogram of Intensities
I2 = histeq(I);
figure, imshow(I2), saveas(gcf, 'CatHistogram/equalizedCat.png');
%Show equalized Histogram of Intensities
figure, imhist(I2);
title("Histogram of Intensities for Equalized 'cat.jpg'"), xlabel("Spectrum of Intensities"), ylabel("Intensity Level");
saveas(gcf, 'CatHistogram/equalizedCatIntensityHistogram.png');

