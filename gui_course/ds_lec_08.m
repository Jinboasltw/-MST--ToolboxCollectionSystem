%  颜色设置对话框
uisetcolor
doc uisetcolor

h = plot([1 0 0]);
c = uisetcolor(h);

% simple gui
figure;
b = uicontrol('Parent', gcf, 'String','设置颜色', 'Style', 'pushbutton', 'Callback', ...
    'c = uisetcolor; set(b, ''BackgroundColor'',c);');
uisetcolor('dialogTitle','select color')

%% 字体设置
uisetfont
doc uisetfont
figure;
b = uicontrol('Parent', gcf, 'String','设置颜色', 'Style', 'pushbutton', 'Callback', ...
    'c = uisetcolor; set(b, ''BackgroundColor'',c);');
S = uisetfont(b)

% font demo
b = uicontrol('Parent', gcf, 'String','设置颜色', 'Style', 'pushbutton', 'Callback', ...
    'uisetfont(b);', 'Position', [0.2 0.2 0.3 0.2], 'Units', 'Normalized');
