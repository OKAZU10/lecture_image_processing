% èª²é¡ï¼ã?éèª¿æ°ã¨çä¼¼è¼ªé­
% ?éèª¿?ï¼éèª¿?ï¼éèª¿ã®ç»åãçæ?ãã??
% ä¸è¨ã?ãµã³ãã«ãã­ã°ã©ã?§ãã??
% èª²é¡ä½æ?ã«ããã£ã¦ã¯ãLennaãä»¥å¤ã?ç»åãç¨ã???

clear; % å¤æ°ã®ãªã¼ã«ã¯ãªã¢
fileName= uigetfile('*');
ORG=imread(fileName); % åç»åã?å¥å?
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ç»åã?è¡¨ç¤º
pause; % ä¸?åæ­¢

% ?éèª¿ç»åã?çæ?
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ?éèª¿ç»åã?çæ?
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

% ?éèª¿ã«ã¤ã?¦ã¯?åèªæ¤è¨ãã¦ãã ãã??
IMG0 = ORG> 32;
IMG1 = ORG> 64;
IMG2 = ORG> 96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2+IMG3+IMG4+IM;
imagesc(IMG); colormap(gray); colorbar;  axis image;