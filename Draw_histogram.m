function [img_histogram] = Draw_histogram( histogram )
    max_histogram = max(histogram);
    
    img_histogram = zeros([max_histogram, 256]);
    img_histogram(:, :) = 255;
    img_histogram(max_histogram, :) = 0;
    img_histogram(:, 1) = 0;
    
    for i = 1 : 256
        for j = max_histogram : -1 : max_histogram - histogram(1, i)
            if j ~= 0
                img_histogram(j, i) = 0;
            end
        end            
    end
end