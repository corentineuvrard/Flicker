function outputFrame = readIndex(videoSource,frameNumber)
info = get(videoSource);
videoSource.CurrentTime=(frameNumber-1)/info.FrameRate;
outputFrame=rgb2gray(readFrame(videoSource));
end