function varargout = BEM(varargin)
% BEM MATLAB code for BEM.fig
%      BEM, by itself, creates a new BEM or raises the existing
%      singleton*.
%
%      H = BEM returns the handle to a new BEM or the handle to
%      the existing singleton*.
%
%      BEM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEM.M with the given input arguments.
%
%      BEM('Property','Value',...) creates a new BEM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BEM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BEM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BEM

% Last Modified by GUIDE v2.5 03-Jun-2014 00:55:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BEM_OpeningFcn, ...
                   'gui_OutputFcn',  @BEM_OutputFcn, ...
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

% --- Executes just before BEM is made visible.
function BEM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BEM (see VARARGIN)

% Choose default command line output for BEM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BEM wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = BEM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnSimulate.
function btnSimulate_Callback(hObject, eventdata, handles)
% hObject    handle to btnSimulate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alpha = str2double(get(handles.alpha, 'String'));
u0 = str2double(get(handles.u0, 'String'));
u = [str2double(get(handles.uBegin, 'String')), str2double(get(handles.uEnd, 'String'))];
x = str2double(get(handles.x, 'String'));
xStep = str2double(get(handles.xStep, 'String'));
t = str2double(get(handles.tMax, 'String'));
tStep = str2double(get(handles.tStep, 'String'));
if xStep <= 0
    xStep = 50;
end
if tStep <= 0
    tStep = t/100;
end
global res;
res = SimulateHeatEq(alpha, x, u0, u, t, tStep, xStep);


% --- Executes on button press in btnSave.
function btnSave_Callback(hObject, eventdata, handles)
% hObject    handle to btnSave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global res;
csvwrite(strcat('bem_calculation_', strjoin(strsplit(int2str(clock())), '_'),'.csv'), res);

% --- Executes on button press in btnLoad.
function btnLoad_Callback(hObject, eventdata, handles)
% hObject    handle to btnLoad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Label: alpha
function alpha_Callback(hObject, eventdata, handles)
function alpha_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: u0
function u0_Callback(hObject, eventdata, handles)
function u0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: uBegin
function uBegin_Callback(hObject, eventdata, handles)
function uBegin_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: uEnd
function uEnd_Callback(hObject, eventdata, handles)
function uEnd_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: x
function x_Callback(hObject, eventdata, handles)
function x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: xStep
function xStep_Callback(hObject, eventdata, handles)
function xStep_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: tMax
function tMax_Callback(hObject, eventdata, handles)
function tMax_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Label: tStep
function tStep_Callback(hObject, eventdata, handles)
function tStep_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
