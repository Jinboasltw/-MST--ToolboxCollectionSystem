function varargout = lec_15_demo(varargin)
% LEC_15_DEMO M-file for lec_15_demo.fig
%      LEC_15_DEMO, by itself, creates a new LEC_15_DEMO or raises the existing
%      singleton*.
%
%      H = LEC_15_DEMO returns the handle to a new LEC_15_DEMO or the handle to
%      the existing singleton*.
%
%      LEC_15_DEMO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEC_15_DEMO.M with the given input arguments.
%
%      LEC_15_DEMO('Property','Value',...) creates a new LEC_15_DEMO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lec_15_demo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lec_15_demo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lec_15_demo

% Last Modified by GUIDE v2.5 20-Jul-2019 14:31:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lec_15_demo_OpeningFcn, ...
                   'gui_OutputFcn',  @lec_15_demo_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before lec_15_demo is made visible.
function lec_15_demo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has sin output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lec_15_demo (see VARARGIN)

% Choose default command line output for lec_15_demo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lec_15_demo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lec_15_demo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function M1_Callback(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function M2_Callback(hObject, eventdata, handles)
% hObject    handle to M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h1 = [handles.axes1 handles.sin handles.clc];
set(h1, 'Visible', 'on');
h2 = [handles.axes2 handles.ima];
set(h2, 'Visible', 'off');
try
    delete(allchild(handles.axes2));
end

% --------------------------------------------------------------------
function M3_Callback(hObject, eventdata, handles)
% hObject    handle to M3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h1 = [handles.axes1 handles.sin handles.clc];
set(h1, 'Visible', 'off');
h2 = [handles.axes2 handles.ima];
set(h2, 'Visible', 'on');
try
    delete(allchild(handles.axes1));
end

% --- Executes on button press in clc.
function clc_Callback(hObject, eventdata, handles)
% hObject    handle to clc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    delete(allchild(handles.axes1));
end


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ezplot(handles.axes1, 'sin(x)');

% --- Executes on button press in ima.
function ima_Callback(hObject, eventdata, handles)
% hObject    handle to ima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axis(handles.axes2)
imshow('pout.tif') % image is embed in MATLAB
