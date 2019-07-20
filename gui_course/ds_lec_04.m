% line对象用法
hf = figure;
hl = plot([0:10]);

% get 对象属性
get(hl)

set(hl, 'Color', 'r')

set(hl, 'Marker', 'p')

set(hl, 'MarkerEdgeColor','g', 'MarkerFaceColor','b')

% 绘图 sin(x)
hl1 = ezplot('sin(x)');
x =get(hl1, 'XData')
y =get(hl1, 'YData')

figure
plot(x,y)