function varargout = opentoolbox(varargin)
% OPENTOOLBOX MATLAB code for opentoolbox.fig
%      OPENTOOLBOX, by itself, creates a new OPENTOOLBOX or raises the existing
%      singleton*.
%
%      H = OPENTOOLBOX returns the handle to a new OPENTOOLBOX or the handle to
%      the existing singleton*.
%
%      OPENTOOLBOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPENTOOLBOX.M with the given input arguments.
%
%      OPENTOOLBOX('Property','Value',...) creates a new OPENTOOLBOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before opentoolbox_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to opentoolbox_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help opentoolbox

% Last Modified by GUIDE v2.5 23-Jul-2019 09:51:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @opentoolbox_OpeningFcn, ...
                   'gui_OutputFcn',  @opentoolbox_OutputFcn, ...
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


% --- Executes just before opentoolbox is made visible.
function opentoolbox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to opentoolbox (see VARARGIN)

% Choose default command line output for opentoolbox
handles.output = hObject;
% inject
restoredefaultpath();
addpath('G:\02_extent_toolbox\MST_ToolboxCollectionSystem\project_001');
handles.bspath = 'G:\13_brainstorm\brainstorm_190720\brainstorm3';
handles.eeglabpath = 'D:\Toolbox\eeglab_current\eeglab2019_0';
set(handles.bspath_content,'String',handles.bspath);
set(handles.eeglabpath_content,'String',handles.eeglabpath);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes opentoolbox wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = opentoolbox_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in run_bs.
function run_bs_Callback(hObject, eventdata, handles)
% hObject    handle to run_bs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cd(handles.bspath);
brainstorm


function bspath_content_Callback(hObject, eventdata, handles)
% hObject    handle to bspath_content (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bspath_content as text
%        str2double(get(hObject,'String')) returns contents of bspath_content as a double

% --- Executes during object creation, after setting all properties.
function bspath_content_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bspath_content (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eeglabpath_content_Callback(hObject, eventdata, handles)
% hObject    handle to eeglabpath_content (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eeglabpath_content as text
%        str2double(get(hObject,'String')) returns contents of eeglabpath_content as a double


% --- Executes during object creation, after setting all properties.
function eeglabpath_content_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eeglabpath_content (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in runeeglab.
function runeeglab_Callback(hObject, eventdata, handles)
% hObject    handle to runeeglab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addpath(handles.eeglabpath);
eeglab


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
restoredefaultpath();
addpath('G:\02_extent_toolbox\MST_ToolboxCollectionSystem\project_001');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% clear all; % error for delteding GUI related variables
evalin( 'base', 'clearvars -except eventdata handles hObject' )
evalin( 'base', 'whos' )

% --- Executes on button press in clc.
function clc_Callback(hObject, eventdata, handles)
% hObject    handle to clc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(opentoolbox);
disp('Opentoolbox: Bye!')


% --- Executes on button press in gotowd.
function gotowd_Callback(hObject, eventdata, handles)
% hObject    handle to gotowd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cd('G:\14_default_wd\')


% --- Executes on button press in spm_switch.
function spm_switch_Callback(hObject, eventdata, handles)
% hObject    handle to spm_switch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switchspm