% text
hf = axes;
ht = text(1,1, 'Demo');

get(ht)

get(ht)

% text('String', '\int_0^x dF(x)', 'Position',[0.5, 0.5]);

text('interpreter', 'latex', 'String', '$$\int_0^x dF(x)$$', 'Position', [0.8, 0.5])