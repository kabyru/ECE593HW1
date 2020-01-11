%usingMedianFilters, used in ECE 593-01 HW1, written by Kaleb Byrum on 1/10/2019

I = imread("dandelion.jpg");
%Generate grayscale version of input image.
I2 = rgb2gray(I);
figure, imshow(I2), saveas(gcf,"usingMedianFilters/grayScaleDandelion.png");

%SNR = 0.02
I3 = imnoise(I2, 'salt & pepper', 0.02);
figure, imshow(I3), saveas(gcf, "usingMedianFilters/noisyDandelionSNR002.png");
I4 = medfilt2(I3);
figure, imshow(I4), title("Median-filtered version of dandelion.jpg with SNR = 0.02");
saveas(gcf,"usingMedianFilters/medianDandelionImageSNR002.png");

%SNR = 0.04
I3 = imnoise(I2, 'salt & pepper', 0.04);
figure, imshow(I3), saveas(gcf, "usingMedianFilters/noisyDandelionSNR004.png");
I4 = medfilt2(I3);
figure, imshow(I4), title("Median-filtered version of dandelion.jpg with SNR = 0.04");
saveas(gcf,"usingMedianFilters/medianDandelionImageSNR004.png");

%SNR = 0.08
I3 = imnoise(I2, 'salt & pepper', 0.08);
figure, imshow(I3), saveas(gcf, "usingMedianFilters/noisyDandelionSNR008.png");
I4 = medfilt2(I3);
figure, imshow(I4), title("Median-filtered version of dandelion.jpg with SNR = 0.08");
saveas(gcf,"usingMedianFilters/medianDandelionImageSNR008.png");