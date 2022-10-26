## Copyright (C) 2022 Gerald
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} sigadd (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Gerald <Gerald@LAPTOP-BAONSK8R>
## Created: 2022-10-22

function [y,n] = sigmult (x1,n1,x2,n2)
  n=min(min(n1),min(n2)):max(max(n1),max(n2));
  y1 = zeros(1,length(n));
  y2 = y1;
  y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
  y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
  y = y1.*y2;

endfunction
