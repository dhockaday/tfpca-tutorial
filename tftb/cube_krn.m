function K=cube_krn(D,L,A)
%CUBE_KRN Cube kernel function.
%   K = CUBE_KRN(D,L,A) returns the values K of a cubic kernel
%   function evaluated at the doppler-values in matrix D and the lag-
%   values in matrix L. Matrices D and L must have the same size. The  
%   values in D should be in the range between -1 and +1 (with +1 being
%   the Nyquist frequency). The parameter vector A is optional and
%   contains three elements that control the "cube volume" of the
%   kernel. A(1) contains the kernel extent in doppler direction
%   (-1<A(1)<+1) and A(2) contains the kernel extent in lag direction.
%   If A(3) is one, then the resulting kernel will produce a TFD
%   that satisfies the marginals. A(3) sould be zero otherwise.
%   Matrix K is of the same size as the matrices D and L. Parameter A
%   defaults to [ 0.5 10 1 ] if omitted.

%   Copyright (c) 1998 by Robert M. Nickel
%   $Revision: 1.1.1.1 $
%   $Date: 2001/03/05 09:09:36 $

if nargin<3; A=[]; end
if isempty(A); A=[ 0.5 10 1 ]; end
if A(3)~=1;
   K=((abs(D)<=A(1))&(abs(L)<=A(2)))+0.0;
else
   K=((abs(D)<=A(1))&(abs(L)<=A(2))|(D==0)|(L==0))+0.0;
end