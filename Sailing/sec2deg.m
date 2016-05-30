    %SEC2DEG converts coordinates in the seconds format to the decimal format
%
%This function will automatically convert latitude and longitude
%coordinates in seconds and minutes into decimal degrees to allow for
%simple computations 
%
%The preferred format is Nxx°xx.xxx' and will output xx.xxxx
%
%   [x,y]=SEC2DEG(input) where input is a character string 
%
%     Example: If input='N43°39.228 W079°17.850'; 
%     
%     then  [x,y]=SEC2DEG(input)
%
%       x = 43.7133
%       y = 79.5194

% Copyright 2016 John Dillon 




function [lat,long]=sec2deg(a)

a=strsplit(a); 
x=a{1}; 
y=a{2}; 

i=strfind(a,'.'); 
j=strfind(a,'°'); 

%xsec=str2num(x(i{1}+1:i{1}+3))/3600; 
xmin=str2num(x(j{1}+1:j{1}+6))/60; 
xhr=str2num(x(j{1}-2:j{1}-1)); 

%ysec=str2num(y(i{2}+1:i{2}+3))/3600; 
ymin=str2num(y(j{2}+1:j{2}+6))/60; 
yhr=str2num(y(j{2}-2:j{2}-1)); 

lat=xhr+xmin;
long=yhr+ymin;  
