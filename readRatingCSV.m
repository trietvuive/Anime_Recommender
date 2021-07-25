## Copyright (C) 2021 vomin
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
## @deftypefn {} {@var{retval} =} readRatingCSV (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: vomin <vomin@TRIETLAPTOP>
## Created: 2021-07-24

function [Y,R] = readRatingCSV (file_name, line_skip)

% Read a list of reviews from a csv file to a Y & R matrix for collaborative filtering
%Y and R is num_animes x num_users matrix

data = csvread(file_name,line_skip, 0);
num_users = max(data)(1);
num_animes = max(data)(2);

Y = zeros(num_animes, num_users);
R = zeros(num_animes, num_users);
for i = 1:size(data,1)
  if data(i,3) != -1
    Y(data(i,2),data(i,1)) = data(i,3);
    R(data(i,2),data(i,1)) = 1;
  endif
endfor

endfunction
