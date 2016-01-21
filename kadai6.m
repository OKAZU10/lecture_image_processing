% 課題６　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア
fileName = uigetfile('*');
ORG  = imread(fileName); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;% 一時停止
imhist(ORG);
pause;

IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;
imhist(IMG);
pause;

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;
imhist(IMG);
