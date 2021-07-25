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
## @deftypefn {} {@var{retval} =} readAnimeCSV (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: vomin <vomin@TRIETLAPTOP>
## Created: 2021-07-24

function anime = readAnimeTXT (file_name, line_skip)
%return matrix read from anime csv
%use the .txt file. 
fid = fopen(file_name);

for i = 1:line_skip
  fgets(fid);
endfor

line = 1;
anime = cell(0,1);
while (line = fgets(fid)) != -1
  split = strsplit(line,'\t');
  idx = str2num(split{1});
  content = strjoin(split(2:end));
  anime{idx} = strtrim(content);
endwhile
fclose(fid);
endfunction
