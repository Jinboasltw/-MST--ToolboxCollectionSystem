%% ������
% waitbar
h = waitbar(0.5,'����ʾ��')
get(h)
%   ��ȡ���������Ӷ���
get(get(h,'Children'))

ha = get(h, 'Children')
get(ha, 'Children')

get(ans(1))
get(ans(2))

% demo
hrand = waitbar(0.14, '��ɫ')
hal = get(hrand,'Children');
hac = get(hal,'Children');
hapa = findall(hac, 'Type', 'patch')
set(hapa,'FaceColor','k')
set(hapa,'EdgeColor','k')

doc waitbar

waitbar(0.5, hrand)
