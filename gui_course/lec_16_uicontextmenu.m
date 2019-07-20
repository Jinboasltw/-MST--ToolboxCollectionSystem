figure('Menubar','none');
h = uicontextmenu;
uimenu(h, 'Label', 'A');
uimenu(h, 'Label', 'B');
set(gcf, 'UIContextMenu', h)
