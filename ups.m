function [y,n] = ups (x, n1, n2, s)
  n=[(n1.*s):(n2.*s)+(s-1)];
  y=[upsample(x,s)];
endfunction
