function m = midEq(I)
[x, y, P] = size(I);
H = zeros(256, 1, P);

for p = 1 : P
    H(:, :, p) = hist_cumul(I(:, :, p));
end

midH = ones(x * y, 1);
for p = 1 : P
    for i = 1: x * y
        midH(i) = midH(i) + inverse(H(:, :, p), i);
    end
end
midH = round(midH / P);

for p = 1 : P
    h = H(:, :, p);
    img = I(:, :, p);
    for i = 1: x
        for j = 1: y
            m(i, j, p) = midH(h(img(i, j) + 1));
        end
    end
    figure
    bar(hist_cumul(m(:, :, p)));
end
m = uint8(m);
end
