function varargout = a7mad_color_edit(varargin)
% A7MAD_COLOR_EDIT MATLAB code for a7mad_color_edit.fig
%      A7MAD_COLOR_EDIT, by itself, creates a new A7MAD_COLOR_EDIT or raises the existing
%      singleton*.
%
%      H = A7MAD_COLOR_EDIT returns the handle to a new A7MAD_COLOR_EDIT or the handle to
%      the existing singleton*.
%
%      A7MAD_COLOR_EDIT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in A7MAD_COLOR_EDIT.M with the given input arguments.
%
%      A7MAD_COLOR_EDIT('Property','Value',...) creates a new A7MAD_COLOR_EDIT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before a7mad_color_edit_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to a7mad_color_edit_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help a7mad_color_edit

% Last Modified by GUIDE v2.5 02-Nov-2014 01:20:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @a7mad_color_edit_OpeningFcn, ...
                   'gui_OutputFcn',  @a7mad_color_edit_OutputFcn, ...
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


% --- Executes just before a7mad_color_edit is made visible.
function a7mad_color_edit_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to a7mad_color_edit (see VARARGIN)

% Choose default command line output for a7mad_color_edit
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes a7mad_color_edit wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = a7mad_color_edit_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_start.
function pb_start_Callback(hObject, eventdata, handles)
% hObject    handle to pb_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
x=get(hObject,'Value');
switch x
    case 1
        set(handles.pb_start,'backgroundcolor','r') % r is reserved for red color
    case 2
        set(handles.pb_start,'backgroundcolor','g') % g is reserved for green color
    case 3
        set(handles.pb_start,'backgroundcolor','b') % b is reserved for blue color
    case 4
        set(handles.pb_start,'backgroundcolor','y')  %direct choose y >>> yellow
    case 5
        set(handles.pb_start,'backgroundcolor',[ 1 0.6 0]) % ornage color
    case 6
        set(handles.pb_start,'backgroundcolor',[ 0 1 1]) % cyan color
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% first i get values of the sliders
r=get(handles.Slider_red,'value');
g=get(handles.Slider_green,'value');
b=get(handles.Slider_blue,'value');
% second setting pb color
% by setting the value of backgroundcolor it a vector = [ red green blue]
% the allowable value betwwen 0 and 1 

set(handles.axes1,'Color',[ r g b]);



% --- Executes on slider movement.
function Slider_red_Callback(hObject, eventdata, handles)
set(handles.textrojo,'String',get(hObject,'Value'))
% hObject    handle to Slider_red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Slider_red_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slider_red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Slider_green_Callback(hObject, eventdata, handles)

set(handles.textverde,'String',get(hObject,'Value'))
% hObject    handle to Slider_green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Slider_green_CreateFcn(hObject, eventdata, handles)

% hObject    handle to Slider_green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Slider_blue_Callback(hObject, eventdata, handles)
set(handles.textazul,'String',get(hObject,'Value'))
% hObject    handle to Slider_blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Slider_blue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slider_blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function ABRIR_Callback(hObject, eventdata, handles)



% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
global a;
[archivo ruta]=uigetfile({'*.gif';'*.jpg'},'abrir imagen');
if isequal(archivo,0)%si el usuario no eleige ningun archivo
 return 
else
    a=imread(strcat(ruta,archivo));
    axis(handles.axes2);
    imshow(a);
    msgbox('Se abrio con exito','mensaje');
 

    
end

% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function salir_Callback(hObject, eventdata, handles)
close(gcbf);

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
