clear
close all

A = {'1,5012,0,35,6' ; '2,395,1,35,8'} ;
A = repmat(A,250000,1) ; % big array!
tic ;
A2 = strcat(A,',') ;
V = sscanf([A2{:}],'%f,') ;
% V = reshape(V,5,[]).' ;
toc