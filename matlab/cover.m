function [] = cover()
f = waitbar(0,'Please wait...');
w = waitbar(0,'Please wait...');
pause(.5)

waitbar(.33,f,'Loading your data');
waitbar(.33,w,'Loading your data');

pause(1)

waitbar(.67,f,'Processing your data');
waitbar(.67,w,'Processing your data');
pause(1)

waitbar(1,f,'Finishing');
waitbar(1,w,'Finishing');
pause(1)

close(f)
close(w)
end