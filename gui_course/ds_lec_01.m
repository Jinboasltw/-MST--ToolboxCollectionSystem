%% Õº–ŒΩÁ√Ê
h = figure('Units','Normalized', ...
    'Position',[0.2 0.2 0.5 0.3], ...
    'Menu','none');

ha = axes('Parent',h,'Units','Normalized',...
    'Position',[0.1,0.1,0.8,0.8]);

hl = line('Parent',ha, 'XData', [0:0.01:6], 'YData', sin([0:0.01:6]),'Color','r');

cstring = 'gbkay';

for k= 1:5
    set(hl, 'Color', cstring(k));
    pause(3)
end