% line�����÷�
hf = figure;
hl = plot([0:10]);

% get ��������
get(hl)

set(hl, 'Color', 'r')

set(hl, 'Marker', 'p')

set(hl, 'MarkerEdgeColor','g', 'MarkerFaceColor','b')

% ��ͼ sin(x)
hl1 = ezplot('sin(x)');
x =get(hl1, 'XData')
y =get(hl1, 'YData')

figure
plot(x,y)