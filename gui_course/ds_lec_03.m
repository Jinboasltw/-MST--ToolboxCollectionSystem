% 常用对象的属性
%% 1. figure
hf = figure();
% get(figure)

% 改变颜色
set(hf, 'Color', 'w')
set(hf, 'Menubar','none')
set(hf, 'NumberTitle','off','name','演示') 
set(hf, 'ReSize', 'off');
pause(3)
set(hf, 'Visible','off');
pause(3)
set(hf, 'Visible','on');

set(hf, 'WindowStyle','modal');
set(hf, 'WindowKeyPressFcn','closereq')
set(hf, 'WindowButtonDownFcn', 'closereq');
hb = uicontrol('Style', 'pushbutton','Callback','closereq','String', 'close');

%% 2. axes
ha = axes;
get(ha)
set(ha, 'NextPlot','add')
plot([0:100]);
plot(sin([0:0.1:31]))