function [] = Histogram( image )
    %Clear the window
    clc;
    
    %Read the image
    img = imread(image);
    
    %Converting the image to gray
    img_gray = rgb2gray(img);
    
    %Size of the image
    [h,w] = size(img_gray);
    
    histogram = zeros([1, 256]);
    hist_cumul = zeros([1, 256]);
    
    for i = 1 : h
        for j = 1 : w
            histogram(1, img_gray(i, j) + 1) = histogram(1, img_gray(i, j) + 1) + 1;
        end
    end
    
    hist_cumul(1, 1) = histogram(1, 1);
    for j = 2 : 256 
        hist_cumul(1, j) = hist_cumul(1, j - 1) + histogram(1, j);
    end
    
    img_histogram = Draw_histogram(histogram);
    img_hist_cumul = Draw_histogram(hist_cumul);    
    
    subplot(1,2,1);
    imshow(img_histogram);
    title('Handmade Histogram');    
    
    subplot(1,2,2);
    imshow(img_hist_cumul);
    title('Cumulated histogram');
    
    %prompt = 'Veuillez définir un seuil pour la binarisation : ';
    %seuil = input(prompt);
    %Binarisation_man(img_gray, seuil);
    
    %Binarisation_auto(img_gray);
    
end