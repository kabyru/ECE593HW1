%DogSharpen, used in ECE 593-01 HW1, written by Kaleb Byrum on 1/10/2019

clear all
close all

%Read blurry image.
I = imread("blurryDog.jpg");
figure, imshow(I);
%Generate sharpened version of image using imsharpen
I2 = imsharpen(I, 'Radius', 2, 'Amount', 2);
figure, imshow(I2), saveas(gcf, "DogSharpen/sharpenedDog.png");
