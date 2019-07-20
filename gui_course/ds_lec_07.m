% uigetfile
uigetfile
uigetfile('*.m')
[a,b,c] = uigetfile('*.m')

doc uigetfile

%% read txt file
[a,b,c] = uigetfile('*.txt')
if c == 1
    load(fullfile(b,a));
end

%% title
[a,b,c] = uigetfile('*.m','Demo Open Matlab Files', 'default.m')

%% uiputfile
uiputfile
doc uiputfile

[a,b,c] = uiputfile('*.m')
