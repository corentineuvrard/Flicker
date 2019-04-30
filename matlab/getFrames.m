function im = getFrames(vid, s, e)
x = vid.Height;
y = vid.Width;

multiWaitbar('Récupération des frames', 0);
pause(3.5);

im = uint8(zeros(x, y, floor(e - s)));
j = 1;
for i = s : e
   im(:, :, j) = readIndex(vid, i);  %frames are grayscale
   j = j + 1;
   multiWaitbar('Récupération des frames', 'Value', i / e);
end
multiWaitbar('Récupération des frames', 'Close');
end