function [y,n] = adds (x1,n1,x2,n2)
  n=min(min(nl),min(n2)):max(max(nl),max(n2));
  yl = zeros(1,length(n));
  y2 = yl;
  yl(find((n>=min(nl))&(n<=max(nl))==l))=x1;
  y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
  y = y1+y2;
endfunction
