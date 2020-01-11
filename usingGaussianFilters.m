%usingGaussianFilters, used in ECE 593-01 HW1, written by Kaleb Byrum on 1/10/2019

I = imread("dandelion.jpg");
%Generate grayscale version of input image.
I2 = rgb2gray(I);
figure, imshow(I2), saveas(gcf,"usingGaussianFilters/grayScaleDandelion.png");

%SNR = 0.02
I3 = imnoise(I2, 'salt & pepper', 0.02);
figure, imshow(I3), saveas(gcf, "usingGaussianFilters/noisyDandelionSNR002.png");
I4 = imgaussfilt(I3, 2);
figure, imshow(I4), title("Gaussian-filtered version of dandelion.jpg with SNR = 0.02");
saveas(gcf,"usingGaussianFilters/gaussianDandelionImageSNR002.png");

%SNR = 0.04
I3 = imnoise(I2, 'salt & pepper', 0.04);
figure, imshow(I3), saveas(gcf, "usingGaussianFilters/noisyDandelionSNR004.png");
I4 = imgaussfilt(I3, 2);
figure, imshow(I4), title("Gaussian-filtered version of dandelion.jpg with SNR = 0.04");
saveas(gcf,"usingGaussianFilters/gaussianDandelionImageSNR004.png");

%SNR = 0.08
I3 = imnoise(I2, 'salt & pepper', 0.08);
figure, imshow(I3), saveas(gcf, "usingGaussianFilters/noisyDandelionSNR008.png");
I4 = imgaussfilt(I3, 2);
figure, imshow(I4), title("Gaussian-filtered version of dandelion.jpg with SNR = 0.08");
saveas(gcf,"usingGaussianFilters/gaussianDandelionImageSNR008.png");