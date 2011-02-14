function varargout = iSudokuGUI(varargin)
% ISUDOKUGUI M-file for iSudokuGUI.fig
%      ISUDOKUGUI, by itself, creates a new ISUDOKUGUI or raises the existing
%      singleton*.
%
%      H = ISUDOKUGUI returns the handle to a new ISUDOKUGUI or the handle to
%      the existing singleton*.
%
%      ISUDOKUGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ISUDOKUGUI.M with the given input arguments.
%
%      ISUDOKUGUI('Property','Value',...) creates a new ISUDOKUGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iSudokuGUI_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iSudokuGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iSudokuGUI

% Last Modified by GUIDE v2.5 01-Feb-2011 12:35:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iSudokuGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @iSudokuGUI_OutputFcn, ...
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


% --- Executes just before iSudokuGUI is made visible.
function iSudokuGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iSudokuGUI (see VARARGIN)

% Choose default command line output for iSudokuGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iSudokuGUI wait for user response (see UIRESUME)

% Read predefined games from the input spreadsheet
[num, cellMat]= xlsread('sudoku.xls', 'Games');
set(handles.RandomBtn,'UserData', cellMat);

% --- Outputs from this function are returned to the command line.
function varargout = iSudokuGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function c11_Callback(hObject, eventdata, handles)
% hObject    handle to c11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c11 as text
%        str2double(get(hObject,'String')) returns contents of c11 as a double


% --- Executes during object creation, after setting all properties.
function c11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c12_Callback(hObject, eventdata, handles)
% hObject    handle to c12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c12 as text
%        str2double(get(hObject,'String')) returns contents of c12 as a double


% --- Executes during object creation, after setting all properties.
function c12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c13_Callback(hObject, eventdata, handles)
% hObject    handle to c13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c13 as text
%        str2double(get(hObject,'String')) returns contents of c13 as a double


% --- Executes during object creation, after setting all properties.
function c13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c21_Callback(hObject, eventdata, handles)
% hObject    handle to c21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c21 as text
%        str2double(get(hObject,'String')) returns contents of c21 as a double


% --- Executes during object creation, after setting all properties.
function c21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c22_Callback(hObject, eventdata, handles)
% hObject    handle to c22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c22 as text
%        str2double(get(hObject,'String')) returns contents of c22 as a double


% --- Executes during object creation, after setting all properties.
function c22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c23_Callback(hObject, eventdata, handles)
% hObject    handle to c23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c23 as text
%        str2double(get(hObject,'String')) returns contents of c23 as a double


% --- Executes during object creation, after setting all properties.
function c23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c31_Callback(hObject, eventdata, handles)
% hObject    handle to c31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c31 as text
%        str2double(get(hObject,'String')) returns contents of c31 as a double


% --- Executes during object creation, after setting all properties.
function c31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c32_Callback(hObject, eventdata, handles)
% hObject    handle to c32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c32 as text
%        str2double(get(hObject,'String')) returns contents of c32 as a double


% --- Executes during object creation, after setting all properties.
function c32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c33_Callback(hObject, eventdata, handles)
% hObject    handle to c33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c33 as text
%        str2double(get(hObject,'String')) returns contents of c33 as a double


% --- Executes during object creation, after setting all properties.
function c33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c14_Callback(hObject, eventdata, handles)
% hObject    handle to c14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c14 as text
%        str2double(get(hObject,'String')) returns contents of c14 as a double


% --- Executes during object creation, after setting all properties.
function c14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c15_Callback(hObject, eventdata, handles)
% hObject    handle to c15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c15 as text
%        str2double(get(hObject,'String')) returns contents of c15 as a double


% --- Executes during object creation, after setting all properties.
function c15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c16_Callback(hObject, eventdata, handles)
% hObject    handle to c16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c16 as text
%        str2double(get(hObject,'String')) returns contents of c16 as a double


% --- Executes during object creation, after setting all properties.
function c16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c24_Callback(hObject, eventdata, handles)
% hObject    handle to c24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c24 as text
%        str2double(get(hObject,'String')) returns contents of c24 as a double


% --- Executes during object creation, after setting all properties.
function c24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c25_Callback(hObject, eventdata, handles)
% hObject    handle to c25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c25 as text
%        str2double(get(hObject,'String')) returns contents of c25 as a double


% --- Executes during object creation, after setting all properties.
function c25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c26_Callback(hObject, eventdata, handles)
% hObject    handle to c26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c26 as text
%        str2double(get(hObject,'String')) returns contents of c26 as a double


% --- Executes during object creation, after setting all properties.
function c26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c34_Callback(hObject, eventdata, handles)
% hObject    handle to c34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c34 as text
%        str2double(get(hObject,'String')) returns contents of c34 as a double


% --- Executes during object creation, after setting all properties.
function c34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c35_Callback(hObject, eventdata, handles)
% hObject    handle to c35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c35 as text
%        str2double(get(hObject,'String')) returns contents of c35 as a double


% --- Executes during object creation, after setting all properties.
function c35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c36_Callback(hObject, eventdata, handles)
% hObject    handle to c36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c36 as text
%        str2double(get(hObject,'String')) returns contents of c36 as a double


% --- Executes during object creation, after setting all properties.
function c36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c17_Callback(hObject, eventdata, handles)
% hObject    handle to c17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c17 as text
%        str2double(get(hObject,'String')) returns contents of c17 as a double


% --- Executes during object creation, after setting all properties.
function c17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c18_Callback(hObject, eventdata, handles)
% hObject    handle to c18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c18 as text
%        str2double(get(hObject,'String')) returns contents of c18 as a double


% --- Executes during object creation, after setting all properties.
function c18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c19_Callback(hObject, eventdata, handles)
% hObject    handle to c19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c19 as text
%        str2double(get(hObject,'String')) returns contents of c19 as a double


% --- Executes during object creation, after setting all properties.
function c19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c27_Callback(hObject, eventdata, handles)
% hObject    handle to c27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c27 as text
%        str2double(get(hObject,'String')) returns contents of c27 as a double


% --- Executes during object creation, after setting all properties.
function c27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c28_Callback(hObject, eventdata, handles)
% hObject    handle to c28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c28 as text
%        str2double(get(hObject,'String')) returns contents of c28 as a double


% --- Executes during object creation, after setting all properties.
function c28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c29_Callback(hObject, eventdata, handles)
% hObject    handle to c29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c29 as text
%        str2double(get(hObject,'String')) returns contents of c29 as a double


% --- Executes during object creation, after setting all properties.
function c29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c37_Callback(hObject, eventdata, handles)
% hObject    handle to c37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c37 as text
%        str2double(get(hObject,'String')) returns contents of c37 as a double


% --- Executes during object creation, after setting all properties.
function c37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c38_Callback(hObject, eventdata, handles)
% hObject    handle to c38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c38 as text
%        str2double(get(hObject,'String')) returns contents of c38 as a double


% --- Executes during object creation, after setting all properties.
function c38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c39_Callback(hObject, eventdata, handles)
% hObject    handle to c39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c39 as text
%        str2double(get(hObject,'String')) returns contents of c39 as a double


% --- Executes during object creation, after setting all properties.
function c39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c41_Callback(hObject, eventdata, handles)
% hObject    handle to c41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c41 as text
%        str2double(get(hObject,'String')) returns contents of c41 as a double


% --- Executes during object creation, after setting all properties.
function c41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c42_Callback(hObject, eventdata, handles)
% hObject    handle to c42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c42 as text
%        str2double(get(hObject,'String')) returns contents of c42 as a double


% --- Executes during object creation, after setting all properties.
function c42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c43_Callback(hObject, eventdata, handles)
% hObject    handle to c43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c43 as text
%        str2double(get(hObject,'String')) returns contents of c43 as a double


% --- Executes during object creation, after setting all properties.
function c43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c51_Callback(hObject, eventdata, handles)
% hObject    handle to c51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c51 as text
%        str2double(get(hObject,'String')) returns contents of c51 as a double


% --- Executes during object creation, after setting all properties.
function c51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c52_Callback(hObject, eventdata, handles)
% hObject    handle to c52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c52 as text
%        str2double(get(hObject,'String')) returns contents of c52 as a double


% --- Executes during object creation, after setting all properties.
function c52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c53_Callback(hObject, eventdata, handles)
% hObject    handle to c53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c53 as text
%        str2double(get(hObject,'String')) returns contents of c53 as a double


% --- Executes during object creation, after setting all properties.
function c53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c61_Callback(hObject, eventdata, handles)
% hObject    handle to c61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c61 as text
%        str2double(get(hObject,'String')) returns contents of c61 as a double


% --- Executes during object creation, after setting all properties.
function c61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c62_Callback(hObject, eventdata, handles)
% hObject    handle to c62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c62 as text
%        str2double(get(hObject,'String')) returns contents of c62 as a double


% --- Executes during object creation, after setting all properties.
function c62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c63_Callback(hObject, eventdata, handles)
% hObject    handle to c63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c63 as text
%        str2double(get(hObject,'String')) returns contents of c63 as a double


% --- Executes during object creation, after setting all properties.
function c63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c44_Callback(hObject, eventdata, handles)
% hObject    handle to c44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c44 as text
%        str2double(get(hObject,'String')) returns contents of c44 as a double


% --- Executes during object creation, after setting all properties.
function c44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c45_Callback(hObject, eventdata, handles)
% hObject    handle to c45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c45 as text
%        str2double(get(hObject,'String')) returns contents of c45 as a double


% --- Executes during object creation, after setting all properties.
function c45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c46_Callback(hObject, eventdata, handles)
% hObject    handle to c46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c46 as text
%        str2double(get(hObject,'String')) returns contents of c46 as a double


% --- Executes during object creation, after setting all properties.
function c46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c54_Callback(hObject, eventdata, handles)
% hObject    handle to c54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c54 as text
%        str2double(get(hObject,'String')) returns contents of c54 as a double


% --- Executes during object creation, after setting all properties.
function c54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c55_Callback(hObject, eventdata, handles)
% hObject    handle to c55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c55 as text
%        str2double(get(hObject,'String')) returns contents of c55 as a double


% --- Executes during object creation, after setting all properties.
function c55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c56_Callback(hObject, eventdata, handles)
% hObject    handle to c56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c56 as text
%        str2double(get(hObject,'String')) returns contents of c56 as a double


% --- Executes during object creation, after setting all properties.
function c56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c64_Callback(hObject, eventdata, handles)
% hObject    handle to c64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c64 as text
%        str2double(get(hObject,'String')) returns contents of c64 as a double


% --- Executes during object creation, after setting all properties.
function c64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c65_Callback(hObject, eventdata, handles)
% hObject    handle to c65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c65 as text
%        str2double(get(hObject,'String')) returns contents of c65 as a double


% --- Executes during object creation, after setting all properties.
function c65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c66_Callback(hObject, eventdata, handles)
% hObject    handle to c66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c66 as text
%        str2double(get(hObject,'String')) returns contents of c66 as a double


% --- Executes during object creation, after setting all properties.
function c66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c47_Callback(hObject, eventdata, handles)
% hObject    handle to c47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c47 as text
%        str2double(get(hObject,'String')) returns contents of c47 as a double


% --- Executes during object creation, after setting all properties.
function c47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c48_Callback(hObject, eventdata, handles)
% hObject    handle to c48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c48 as text
%        str2double(get(hObject,'String')) returns contents of c48 as a double


% --- Executes during object creation, after setting all properties.
function c48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c49_Callback(hObject, eventdata, handles)
% hObject    handle to c49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c49 as text
%        str2double(get(hObject,'String')) returns contents of c49 as a double


% --- Executes during object creation, after setting all properties.
function c49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c57_Callback(hObject, eventdata, handles)
% hObject    handle to c57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c57 as text
%        str2double(get(hObject,'String')) returns contents of c57 as a double


% --- Executes during object creation, after setting all properties.
function c57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c58_Callback(hObject, eventdata, handles)
% hObject    handle to c58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c58 as text
%        str2double(get(hObject,'String')) returns contents of c58 as a double


% --- Executes during object creation, after setting all properties.
function c58_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c59_Callback(hObject, eventdata, handles)
% hObject    handle to c59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c59 as text
%        str2double(get(hObject,'String')) returns contents of c59 as a double


% --- Executes during object creation, after setting all properties.
function c59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c67_Callback(hObject, eventdata, handles)
% hObject    handle to c67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c67 as text
%        str2double(get(hObject,'String')) returns contents of c67 as a double


% --- Executes during object creation, after setting all properties.
function c67_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c68_Callback(hObject, eventdata, handles)
% hObject    handle to c68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c68 as text
%        str2double(get(hObject,'String')) returns contents of c68 as a double


% --- Executes during object creation, after setting all properties.
function c68_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c69_Callback(hObject, eventdata, handles)
% hObject    handle to c69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c69 as text
%        str2double(get(hObject,'String')) returns contents of c69 as a double


% --- Executes during object creation, after setting all properties.
function c69_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c71_Callback(hObject, eventdata, handles)
% hObject    handle to c71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c71 as text
%        str2double(get(hObject,'String')) returns contents of c71 as a double


% --- Executes during object creation, after setting all properties.
function c71_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c72_Callback(hObject, eventdata, handles)
% hObject    handle to c72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c72 as text
%        str2double(get(hObject,'String')) returns contents of c72 as a double


% --- Executes during object creation, after setting all properties.
function c72_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c73_Callback(hObject, eventdata, handles)
% hObject    handle to c73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c73 as text
%        str2double(get(hObject,'String')) returns contents of c73 as a double


% --- Executes during object creation, after setting all properties.
function c73_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c81_Callback(hObject, eventdata, handles)
% hObject    handle to c81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c81 as text
%        str2double(get(hObject,'String')) returns contents of c81 as a double


% --- Executes during object creation, after setting all properties.
function c81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c82_Callback(hObject, eventdata, handles)
% hObject    handle to c82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c82 as text
%        str2double(get(hObject,'String')) returns contents of c82 as a double


% --- Executes during object creation, after setting all properties.
function c82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c83_Callback(hObject, eventdata, handles)
% hObject    handle to c83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c83 as text
%        str2double(get(hObject,'String')) returns contents of c83 as a double


% --- Executes during object creation, after setting all properties.
function c83_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c91_Callback(hObject, eventdata, handles)
% hObject    handle to c91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c91 as text
%        str2double(get(hObject,'String')) returns contents of c91 as a double


% --- Executes during object creation, after setting all properties.
function c91_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c92_Callback(hObject, eventdata, handles)
% hObject    handle to c92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c92 as text
%        str2double(get(hObject,'String')) returns contents of c92 as a double


% --- Executes during object creation, after setting all properties.
function c92_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c93_Callback(hObject, eventdata, handles)
% hObject    handle to c93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c93 as text
%        str2double(get(hObject,'String')) returns contents of c93 as a double


% --- Executes during object creation, after setting all properties.
function c93_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c74_Callback(hObject, eventdata, handles)
% hObject    handle to c74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c74 as text
%        str2double(get(hObject,'String')) returns contents of c74 as a double


% --- Executes during object creation, after setting all properties.
function c74_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c75_Callback(hObject, eventdata, handles)
% hObject    handle to c75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c75 as text
%        str2double(get(hObject,'String')) returns contents of c75 as a double


% --- Executes during object creation, after setting all properties.
function c75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c76_Callback(hObject, eventdata, handles)
% hObject    handle to c76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c76 as text
%        str2double(get(hObject,'String')) returns contents of c76 as a double


% --- Executes during object creation, after setting all properties.
function c76_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c84_Callback(hObject, eventdata, handles)
% hObject    handle to c84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c84 as text
%        str2double(get(hObject,'String')) returns contents of c84 as a double


% --- Executes during object creation, after setting all properties.
function c84_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c85_Callback(hObject, eventdata, handles)
% hObject    handle to c85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c85 as text
%        str2double(get(hObject,'String')) returns contents of c85 as a double


% --- Executes during object creation, after setting all properties.
function c85_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c86_Callback(hObject, eventdata, handles)
% hObject    handle to c86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c86 as text
%        str2double(get(hObject,'String')) returns contents of c86 as a double


% --- Executes during object creation, after setting all properties.
function c86_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c94_Callback(hObject, eventdata, handles)
% hObject    handle to c94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c94 as text
%        str2double(get(hObject,'String')) returns contents of c94 as a double


% --- Executes during object creation, after setting all properties.
function c94_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c95_Callback(hObject, eventdata, handles)
% hObject    handle to c95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c95 as text
%        str2double(get(hObject,'String')) returns contents of c95 as a double


% --- Executes during object creation, after setting all properties.
function c95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c96_Callback(hObject, eventdata, handles)
% hObject    handle to c96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c96 as text
%        str2double(get(hObject,'String')) returns contents of c96 as a double


% --- Executes during object creation, after setting all properties.
function c96_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c77_Callback(hObject, eventdata, handles)
% hObject    handle to c77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c77 as text
%        str2double(get(hObject,'String')) returns contents of c77 as a double


% --- Executes during object creation, after setting all properties.
function c77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c78_Callback(hObject, eventdata, handles)
% hObject    handle to c78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c78 as text
%        str2double(get(hObject,'String')) returns contents of c78 as a double


% --- Executes during object creation, after setting all properties.
function c78_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c79_Callback(hObject, eventdata, handles)
% hObject    handle to c79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c79 as text
%        str2double(get(hObject,'String')) returns contents of c79 as a double


% --- Executes during object creation, after setting all properties.
function c79_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c87_Callback(hObject, eventdata, handles)
% hObject    handle to c87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c87 as text
%        str2double(get(hObject,'String')) returns contents of c87 as a double


% --- Executes during object creation, after setting all properties.
function c87_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c88_Callback(hObject, eventdata, handles)
% hObject    handle to c88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c88 as text
%        str2double(get(hObject,'String')) returns contents of c88 as a double


% --- Executes during object creation, after setting all properties.
function c88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c89_Callback(hObject, eventdata, handles)
% hObject    handle to c89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c89 as text
%        str2double(get(hObject,'String')) returns contents of c89 as a double


% --- Executes during object creation, after setting all properties.
function c89_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c97_Callback(hObject, eventdata, handles)
% hObject    handle to c97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c97 as text
%        str2double(get(hObject,'String')) returns contents of c97 as a double


% --- Executes during object creation, after setting all properties.
function c97_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c98_Callback(hObject, eventdata, handles)
% hObject    handle to c98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c98 as text
%        str2double(get(hObject,'String')) returns contents of c98 as a double


% --- Executes during object creation, after setting all properties.
function c98_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c99_Callback(hObject, eventdata, handles)
% hObject    handle to c99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c99 as text
%        str2double(get(hObject,'String')) returns contents of c99 as a double


% --- Executes during object creation, after setting all properties.
function c99_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RandomBtn.
function RandomBtn_Callback(hObject, eventdata, handles)
% hObject    handle to RandomBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get a sudoku game using a random number
cellMat = get(handles.RandomBtn,'UserData');
randNum = ceil(12.*rand(1));
srtTarg = ['S' num2str(randNum)];
[cRowSize cColSize] = size(cellMat);

rowOffset = 1;
for cRowInd = 1: cRowSize
    if (strcmp(srtTarg, cellMat(cRowInd,1)) == 1)
        rowOffset = cRowInd;
        break;
    end
end

%Fill-up the board using the game matrix
for rowInd = 1:9
    for colInd = 1:9
        cName = ['c' num2str(rowInd) num2str(colInd)];
        cValue = strtrim(cellMat{rowOffset+rowInd, colInd});
        if strcmp(cValue, '')
            expr = ['set(handles.' cName ', ''String'', ''' cValue ''', ''FontWeight'', ''normal'', ''Enable'', ''on'', ''ForegroundColor'', [' num2str([0 0 0]) '])'];
        else
            expr = ['set(handles.' cName ', ''String'', ''' cValue ''', ''FontWeight'', ''bold'', ''Enable'', ''inactive'', ''ForegroundColor'', [' num2str([0 0 0]) '])'];
        end
        eval(expr);
    end
end

set(handles.SolveBtn, 'Enable', 'on');
set(handles.ClearBtn, 'Enable', 'on');

% --- Executes on button press in SolveBtn.
function SolveBtn_Callback(hObject, eventdata, handles)
% hObject    handle to SolveBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

invalid = 0;
toSolveMatrix = zeros(9,9);
hintMatrix = zeros(9,9); % This matrix holds the position of the hints 
                         % or given numbers before solving the game
for rowInd = 1:9
    for colInd = 1:9
        cName = ['c' num2str(rowInd) num2str(colInd)];
        expr = ['cValue = get(handles.' cName ', ''String'');'];        
        eval(expr);
        
        %Validate data correctness prior solving the game
        %Only values from 1-9 should be entered, an empty cell is validq 
        if (isempty(cValue) == 0)
            if( isempty(str2num(cValue)) == 1)
                msg = ['Non numeric value found at row: ' num2str(rowInd) ', column: ' num2str(colInd)];
                h = msgbox(msg,'Error','error');
                invalid = 1;
                break;
            elseif (length(cValue) ~= 1 ||...             
                str2num(cValue) < 1 ||...
                str2num(cValue) > 9 )
                msg = ['Invalid input found at row: ' num2str(rowInd) ', column: ' num2str(colInd)];
                h = msgbox(msg,'Error','error');
                invalid = 1;
                break;
            end
         
            %Cell data is valid, add it to the matrix
            toSolveMatrix(rowInd,colInd) = str2num(cValue);
            hintMatrix(rowInd,colInd) = 1;
        else
            %Change the empty cell to zero and add it to the matrix
            toSolveMatrix(rowInd,colInd) = 0;
        end
        
    end
    
    if (invalid == 1)
        break;
    end
end

% At this point toSolveMatrix holds the Sudoku game that needs to be
% solved automatically.

solvedMatrix = iSudokuAlg(toSolveMatrix, hintMatrix);

% Now it's time to populate the GUI with the solution obtained from
% the solving algorithm:

for rowInd = 1:9
    for colInd = 1:9
        cName = ['c' num2str(rowInd) num2str(colInd)];
        cValue = num2str(solvedMatrix(rowInd, colInd));
        if (hintMatrix(rowInd,colInd) == 1)
            % This position corresponds to a hint
            expr = ['set(handles.' cName ', ''String'', ''' cValue ''')'];
        else
            % This position is part of the solution
            expr = ['set(handles.' cName ', ''String'', ''' cValue ''', ''ForegroundColor'', [' num2str([1 0 0]) '], ''Enable'', ''inactive'')'];
        end
        eval(expr);
    end
end
%set(handles.SolveBtn, 'Enable', 'off');

%--------------------------------------------------------------------------
% This is just a dummy function that simulates the sudoku solver. This
% function needs to be substituted with the real solver
function outputMatrix = iSudokuAlg(inputMatrix, hintMatrix)

outputMatrix = zeros(9,9);
for rowInd = 1:9
    for colInd = 1:9
        if(hintMatrix(rowInd,colInd) == 1)
            %hint
            outputMatrix(rowInd,colInd) = inputMatrix (rowInd,colInd);
        else
            %"Solve"
            outputMatrix(rowInd,colInd) = ceil(9.*rand(1));
        end
    end
end
%--------------------------------------------------------------------------


% --- Executes on button press in ClearBtn.
function ClearBtn_Callback(hObject, eventdata, handles)
% hObject    handle to ClearBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Clear the board
for rowInd = 1:9
    for colInd = 1:9
        cName = ['c' num2str(rowInd) num2str(colInd)];
        cValue = '';
        expr = ['set(handles.' cName ', ''String'', ''' cValue ''', ''FontWeight'', ''normal'', ''Enable'', ''on'')'];
        eval(expr);
    end
end

set(handles.SolveBtn, 'Enable', 'off');