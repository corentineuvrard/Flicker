function res = histogramme(img)
[x, y] = size(img);
res = zeros(256, 1);

for i = 1 : y
   for j = 1 : x
      res(img(j, i) + 1) = res(img(j, i) + 1) + 1;
   end
end
end