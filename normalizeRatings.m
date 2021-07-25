function [Ynorm, Ymean] = normalizeRatings(Y, R)
%NORMALIZERATINGS Preprocess data by subtracting mean rating for every 
%movie (every row)
%   [Ynorm, Ymean] = NORMALIZERATINGS(Y, R) normalized Y so that each movie
%   has a rating of 0 on average, and returns the mean rating in Ymean.
%

Ymean = sum(Y,2)./sum(R,2);
Ymean(isnan(Ymean)) = 0;
Ynorm = Y - R.*Ymean;

end
