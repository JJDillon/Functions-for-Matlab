%GFPS2SPD converts decimal lat, long and seconds, to distance and speed


function [d,s]=GPS2SPD(x,y,t)
% format: [d1km d2km]=lldistkm(latlon1,latlon2)
% Distance:
% d1km: distance in km based on Haversine formula
% (Haversine: http://en.wikipedia.org/wiki/Haversine_formula)
% 
% --Inputs:
%   latlon1: latlon of origin point [lat lon]
%   latlon2: latlon of destination point [lat lon]
%
%   d1km: distance calculated by Haversine formula
%  
%--------------------------------------------------------------------------

        
xl=length(x);
yl=length(y); 

if xl == yl 
    
lat=x.*pi/180; 
lat1=lat(1:xl-1); 
lat2=lat(2:xl); 
long=y.*pi/180; 
radius=6371;

dlat=diff(lat); 
dlong=diff(long); 

a=sin((dlat)/2).^2 + cos(lat1).*cos(lat2).*sin(dlong/2).^2;
c=2*atan2(sqrt(a),sqrt(1-a));
d=(radius.*c).*1000;    %Haversine distance
d(isnan(d))=0; 


else
    error('input vectors are not equal lengths'); 
end

switch(nargin)
    case 3
        tl=length(t); mi
      if xl == yl && yl==tl
          
          tdiff=diff(t); 
          
          s=d/tdiff; 
      end
end

end

