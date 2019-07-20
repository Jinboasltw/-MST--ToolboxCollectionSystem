% 普通对话框
dialog
h = dialog('name','关于...','Position',[200 200 200 70]);
uicontrol('parent', h, 'style', 'pushbutton', 'Position', [80 10 50 20], ...
    'string', '确定', 'Callback', 'delete(gcbf)');

% 错误对话框
errordlg
doc errordlg
errordlg('探测到错误！','ERROR')

% 警告对话框
warndlg
