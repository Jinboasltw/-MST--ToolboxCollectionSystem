% ��ͨ�Ի���
dialog
h = dialog('name','����...','Position',[200 200 200 70]);
uicontrol('parent', h, 'style', 'pushbutton', 'Position', [80 10 50 20], ...
    'string', 'ȷ��', 'Callback', 'delete(gcbf)');

% ����Ի���
errordlg
doc errordlg
errordlg('̽�⵽����','ERROR')

% ����Ի���
warndlg
