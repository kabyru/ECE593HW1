%usingCrossEdge, used in ECE 593-01 HW1, written by Kaleb Byrum on 1/10/2019

clear all
close all

I = imread("flower.png");
%Generate grayscale version of input image.
I2 = rgb2gray(I);
figure, imshow(I2), saveas(gcf,"usingCrossEdge/grayScaleFlower.png");
%Create Roberts Cross Edge Enhanced Image
BW1 = edge(I2, "Roberts");
figure, imshow(BW1), saveas(gcf, "usingCrossEdge/crossFlower.png");
