function inv = inverse(f, nb)
inv = 0;
x = size(f);
    for i = 1: x 
        if (f(i) > nb)
           inv = i;
           break;
        end
    end
end