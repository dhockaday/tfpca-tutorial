function halt_ptr(h,f)
%HALT_PTR Creates a HALT pointer.
%   HALT_PTR(H,F) creates a HALT pointer for 
%   the figure with handle H. F is a flag for
%   the pointer style. F=0 (default) refers to
%   a "STOP" pointer, and F=1 refers to a "(/)"
%   pointer.

%   Copyright (c) 1998 by Robert M. Nickel
%   $Revision: 1.1.1.1 $
%   $Date: 2001/03/05 09:09:36 $

% check for number of input arguments
if nargin<2; f=0; end

% color matrix for pointer
if f==0;
% stop pointer
A=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;...
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;...
   1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;...
  	1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;...
  	2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ;...
  	0 1 1 1 1 1 1 2 1 1 2 2 1 1 1 2 ;...
  	1 2 2 2 2 1 2 1 2 2 1 2 1 2 2 1 ;...
  	1 2 2 2 2 1 2 1 2 2 1 2 1 2 2 1 ;...
  	2 1 1 2 2 1 2 1 2 2 1 2 1 1 1 2 ;...
  	2 2 2 1 2 1 2 1 2 2 1 2 1 2 2 2 ;...
  	2 2 2 1 2 1 2 1 2 2 1 2 1 2 2 2 ;...
   1 1 1 1 2 1 2 2 1 1 2 2 1 2 2 2 ;...
  	2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ;...
   1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;...
  	1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;...
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];
else
% (/) pointer   
A=[0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 ;...
   0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 ;...
   0 0 0 1 1 1 2 2 2 2 1 1 1 0 0 0 ;...
  	0 0 1 1 1 2 2 2 2 2 2 1 1 1 0 0 ;...
  	0 1 1 1 2 2 2 2 2 2 1 1 1 1 1 0 ;...
  	0 1 1 2 2 2 2 2 2 1 1 1 2 1 1 0 ;...
  	1 1 2 2 2 2 2 2 1 1 1 2 2 2 1 1 ;...
  	1 1 2 2 2 2 2 1 1 1 2 2 2 2 1 1 ;...
  	1 1 2 2 2 2 1 1 1 2 2 2 2 2 1 1 ;...
  	1 1 2 2 2 1 1 1 2 2 2 2 2 2 1 1 ;...
  	0 1 1 2 1 1 1 2 2 2 2 2 2 1 1 0 ;...
   0 1 1 1 1 1 2 2 2 2 2 2 1 1 1 0 ;...
   0 0 1 1 1 2 2 2 2 2 2 1 1 1 0 0 ;...
   0 0 0 1 1 1 2 2 2 2 1 1 1 0 0 0 ;...
   0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 ;...
   0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 ];  
end
Q=find(A==0); A(Q)=NaN;

% set pointer
set(h,'Pointer','custom',...
   'PointerShapeCData',A,...
   'PointerShapeHotSpot',[8,8]);