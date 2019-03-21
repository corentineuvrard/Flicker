function somme = hist_cumul(img)
hist = histogramme(img);
somme = zeros(256, 1);
somme(1) = hist(1);
%somme(1, 2) = 1;

for i = 2 : 256
    somme(i) = somme(i-1, 1) + hist(i);
 %   somme(i, 2) = i;
end
%somme = somme / max(somme);
end