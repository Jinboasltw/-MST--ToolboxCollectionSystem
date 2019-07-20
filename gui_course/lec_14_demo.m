function varargout = lec_14_demo(varargin)
% LEC_14_DEMO M-file for lec_14_demo.fig
%      LEC_14_DEMO, by itself, creates a new LEC_14_DEMO or raises the existing
%      singleton*.
%
%      H = LEC_14_DEMO returns the handle to a new LEC_14_DEMO or the handle to
%      the existing singleton*.
%
%      LEC_14_DEMO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEC_14_DEMO.M with the given input arguments.
%
%      LEC_14_DEMO('Property','Value',...) creates a new LEC_14_DEMO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lec_14_demo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lec_14_demo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lec_14_demo

% Last Modified by GUIDE v2.5 20-Jul-2019 12:11:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lec_14_demo_OpeningFcn, ...
                   'gui_OutputFcn',  @lec_14_demo_OutputFcn, ...
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


% --- Executes just before lec_14_demo is made visible.
function lec_14_demo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lec_14_demo (see VARARGIN)

% Choose default command line output for lec_14_demo
handles.output = hObject;

% inject self made
handles.x = -pi:0.01:pi;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lec_14_demo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lec_14_demo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in dsin.
function dsin_Callback(hObject, eventdata, handles)
% hObject    handle to dsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = handles.x;
y = sin(x);
plot(handles.plot, x, y, 'b');

% --- Executes on button press in dcos.
function dcos_Callback(hObject, eventdata, handles)
% hObject    handle to dcos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = handles.x;
y = cos(x);
plot(handles.plot, x, y, 'g');

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    delete(allchild(handles.plot));
end

% --- Executes on button press in TAN.
function TAN_Callback(hObject, eventdata, handles)
% hObject    handle to TAN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = handles.x;
y = 1/200 * tan(x);
plot(handles.plot, x, y, 'r');
