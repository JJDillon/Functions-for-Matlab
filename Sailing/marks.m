% MARKS returns the  GPS coordinates in decimal format for the
% cooresponding ABYC fixed race course numbers. 
%
% MARKS automatically returns a list of the GPS coordinates for either,
%       1,2,or 3 fixed bouys in a vector. 
%
% Example coords=MARKS(5,0,3)
%    
%    coords =   43.6387   79.3019
%               43.6471   79.2841
%               43.6456   79.2954
%  



%Copyright 2016 John Dillon 

function [x]=marks(a,b,c)

%ABYC race course marks from events book 2016
% 0	N43°38.736?	W079°17.723?	
% 1	N43°39.149?	W079°17.332?
% 2	N43°38.828?	W079°17.044?
% 3	N43°38.454?	W079°17.153?
% 4	N43°38.245?	W079°17.596?
% 5	N43°38.324?	W079°18.114?
% 6	N43°38.645?	W079°18.402?
% 7	N43°39.019?	W079°18.293?
% 8	N43°39.228?	W079°17.850?

d= exist('c','var'); 
e= exist('b','var'); 
f= exist('a','var');  
narginchk(0,8); 
r=nargin; 
switch (r)
    case 1
        g=[a];
    case 2
        g=[a, b];
    case 3
        g=[a,b,c];
end




m=[       43.6456                   79.2953833333333
          43.6524833333333          79.2888666666667
          43.6471333333333          79.2840666666667
          43.6409                   79.2858833333333
          43.6374166666667          79.2932666666667
          43.6387333333333          79.3019
          43.6440833333333          79.3067
          43.6503166666667          79.3048833333333
          43.6538                   79.2975]; 

for i = 1:r
    for j=1:2
    x(i,j)=m(g(i)+1,j);
    end
end
