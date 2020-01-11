%usingCannyEdge, used in ECE 593-01 HW1, written by Kaleb Byrum on 1/10/2019

clear all
close all

I = imread("flower.png");
%Generate grayscale version of input image.
I2 = rgb2gray(I);
figure, imshow(I2), saveas(gcf,"usingCannyEdge/grayScaleFlower.png");
%Create Canny Edge Enhanced Image
BW1 = edge(I2, "Canny");
figure, imshow(BW1), saveas(gcf, "usingCannyEdge/cannyFlower.png");
