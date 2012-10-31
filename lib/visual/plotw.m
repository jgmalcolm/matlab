function h = plotw(V)
  
  
handles.specImg = image(...
        'CData',zeros(handles.rowsInDisplay,handles.colsInDisplay),...
        'CDataMapping','direct',...
        'Parent',handles.gSpectrogram,...
        'HitTest','off',...
        'Tag','handles.specImg',...
        'XData',[1 handles.colsInDisplay],...
        'YData',[-handles.rowsInDisplay/2 handles.rowsInDisplay/2],...
        'EraseMode','normal',...
        'Visible','on');