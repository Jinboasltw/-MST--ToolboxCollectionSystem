function varargout = lec_18_demo(varargin)
% LEC_18_DEMO M-file for lec_18_demo.fig
%      LEC_18_DEMO, by itself, creates a new LEC_18_DEMO or raises the existing
%      singleton*.
%
%      H = LEC_18_DEMO returns the handle to a new LEC_18_DEMO or the handle to
%      the existing singleton*.
%
%      LEC_18_DEMO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEC_18_DEMO.M with the given input arguments.
%
%      LEC_18_DEMO('Property','Value',...) creates a new LEC_18_DEMO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lec_18_demo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lec_18_demo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lec_18_demo

% Last Modified by GUIDE v2.5 20-Jul-2019 19:02:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lec_18_demo_OpeningFcn, ...
                   'gui_OutputFcn',  @lec_18_demo_OutputFcn, ...
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


% --- Executes just before lec_18_demo is made visible.
function lec_18_demo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lec_18_demo (see VARARGIN)

% Choose default command line output for lec_18_demo
handles.output = hObject;

% inject
global ButtonDown pos1
ButtonDown = [];
pos1 = [];
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lec_18_demo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lec_18_demo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ButtonDown pos1
if strcmp(get(gcf, 'SelectionType'), 'normal')
    ButtonDown = 1;
    pos1 = get(handles.axes1, 'CurrentPoint');
end


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ButtonDown pos1

if ButtonDown == 1
    pos = get(handles.axes1, 'CurrentPoint');
    line([pos1(1,1) pos(1,1)], [pos1(1,2) pos(1,2)], 'LineWidth', 4);
    pos1 = pos;
end


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ButtonDown
ButtonDown = 0;
