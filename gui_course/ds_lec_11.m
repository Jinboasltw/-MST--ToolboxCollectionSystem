% ����Ի���
name = inputdlg('����������', 'ʵ��');

ret = inputdlg({'name','gender'},'demo')

info = inputdlg('note','info', 10);

re = inputdlg({'name', 'age'}, 'demo', 2, {'kb', 'male'}, 'on')

% uigetdir
uigetdir
uigetdir('C:\', 'Browse')

% listdlg
[Sel, OK] = listdlg(...,
    'ListString', {'A', 'B', 'C'}, ...
    'OKString', 'OK',...
    'CancelString', 'Cancel', ...
    'Name', 'Select', ...
    'SelectionMode', 'single')
