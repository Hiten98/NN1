## Copyright (C) 2017 hiten
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} normmalEqn (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: hiten <hiten@DESKTOP-COI9CR6>
## Created: 2017-07-22

function [retval] = normmalEqn (input1, input2)
a = input1'*input1
fprintf('Theta computed from the normal equations: \n');
retval = inv(input1'*input1) * input1'*input2
endfunction
