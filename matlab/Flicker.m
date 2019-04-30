function r = Flicker(vid, seconds)

v_in = VideoReader(vid);
name = append('../out/out_', v_in.Name);

v_out = VideoWriter(fullfile(name));
v_out.FrameRate = v_in.FrameRate;
open(v_out);

seconds = seconds * v_in.FrameRate;

multiWaitbar('Flicker', 0);

while size(seconds, 2) > 1
    frames = getFrames(v_in, seconds(1) + 1, seconds(2));
    
    r = midEq(frames);
    
    for i = 1 : size(r, 3)
        multiWaitbar('recreation de la vidéo', i / size(r, 3));
        writeVideo(v_out, r(:, :, i));
    end
    multiWaitbar('recreation de la vidéo', 'Close');
    multiWaitbar('Flicker', 'Increment', seconds(2) - (seconds(1) + 1));
    seconds(1) = [];
end
close(v_out);
multiWaitbar('CLOSEALL');
end