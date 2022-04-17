clc
clear all
close all
warning off;
x=rgb2gray(imread('circle.png'));
imshow(x);
k=strel('disk',19);
es=imclose(x,k);
figure;imshow(es);
es=imopen(es,strel('disk',30));
figure;imshow(es);
ks=imbinarize(es,0.9);
figure;
imshow(ks);
boundary=ks-imerode(ks,strel('disk',10));
imshow(labeloverlay(x,boundary,"Colormap",[1 0 0]))
title('Boundary Between Textures');