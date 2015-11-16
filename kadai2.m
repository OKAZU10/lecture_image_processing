% 課題２�?階調数と疑似輪郭
% ?�階調?�４階調?�８階調の画像を生�?せよ??
% 下記�?サンプルプログラ�?��ある??
% 課題作�?にあたっては「Lenna」以外�?画像を用�?��??

clear; % 変数のオールクリア
fileName= uigetfile('*');
ORG=imread(fileName); % 原画像�?入�?
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像�?表示
pause; % �?��停止

% ?�階調画像�?生�?
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ?�階調画像�?生�?
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

% ?�階調につ�?��は?�各自検討してください??
IMG0 = ORG> 32;
IMG1 = ORG> 64;
IMG2 = ORG> 96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2+IMG3+IMG4+IM;
imagesc(IMG); colormap(gray); colorbar;  axis image;