% demo

%% clear variables 
%
clear; clc; 
warning('off', 'all');
addpath(genpath('src'));
%% read image and load parameters
imName1 = 'frame1.JPG';
imName2 = 'frame2.JPG';
im1 = imresize(double(imread(imName1)), 0.25);
im2 = imresize(double(imread(imName2)), 0.25);

% compute optical flow
uv = estimate_optical_flow(im1, im2);

%% store flow file and visualize flow 
figure(); imshowpair(uint8(im1), uint8(im2)); title('Image Overlay');
figure(); imshow(uint8(flowToColor(uv))); title('Middlebury color coding');

warning('on', 'all');
% EOF