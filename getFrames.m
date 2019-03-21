function im = getFrames(vid)
vidFrames=read(vid);
nFrames= 30;%vid.NumberOfFrames;
x = size(vidFrames, 1);
y = size(vidFrames, 2);
im = zeros(x, y, nFrames);
for i=1:nFrames
   im(:, :, i) = vidFrames(:,:,i);  %frames are grayscale
end
end