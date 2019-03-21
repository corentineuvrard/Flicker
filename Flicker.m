function r = Flicker(vid)
frames = getFrames(vid);
r = midEq(frames);
end