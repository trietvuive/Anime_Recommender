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
## @deftypefn {} {@var{retval} =} readUserRating (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: vomin <vomin@TRIETLAPTOP>
## Created: 2021-07-24

function user_rating = readUserRating (file_name, num_of_movies, line_skip)

% Steal your data

data = csvread(file_name,line_skip, 0)
user_rating = zeros(num_of_movies,1);
for i = 1:size(data,1)
  if data(i,2) != -1
    user_rating(data(i,1)) = data(i,2);
    a = 3
  endif
endfor

endfunction

