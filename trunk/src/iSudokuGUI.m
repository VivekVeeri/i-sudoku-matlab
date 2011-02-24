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

% Last Modified by GUIDE v2.5 23-Feb-2011 23:01:41

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

% --- Executes on button press in RandomBtn.
function RandomBtn_Callback(hObject, eventdata, handles)
% hObject    handle to RandomBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get a sudoku game using a random number
cellMat = get(handles.RandomBtn,'UserData');
randNum = ceil(20.*rand(1));
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
set(handles.verifyBtn, 'Enable', 'on');

% --- Executes on button press in SolveBtn.
function SolveBtn_Callback(hObject, eventdata, handles)
% hObject    handle to SolveBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% First Read the board:
[validMatrix toSolveMatrix hintMatrix] = readBoard(handles);

% At this point toSolveMatrix holds the Sudoku game that needs to be
% solved automatically.

if (validMatrix == 1)
    solvedMatrix = iSudokuALG(toSolveMatrix);

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
end

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
set(handles.verifyBtn, 'Enable', 'off');

% --- Executes on button press in verifyBtn.
function verifyBtn_Callback(hObject, eventdata, handles)
% hObject    handle to verifyBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% First Read the board:
[validMatrix toSolveMatrix hintMatrix] = readBoard(handles);
numberOfHints = sum(sum(hintMatrix));

if (validMatrix == 1)
    % Verify that the solution / partial solution is correct
    incorrectGame = verific(toSolveMatrix);
    
    if (all(all(hintMatrix)) == 1 ) % Complete Game
        if (incorrectGame == 1)
            msg = 'Solution is incorrect';
            h = msgbox(msg,'Error','error', 'replace');
        else
            msg = 'Solution is Correct!, Game Completed';
            h = msgbox(msg,'Correct','help', 'replace');
        end
    else % Partial Game
        if (incorrectGame == 1)
            msg = 'Partial Solution is incorrect';
            h = msgbox(msg,'Error','error', 'replace');
        else
            toGo= 81 - numberOfHints;
            msg = ['Partial Solution is Correct!, Empty Cells: ' num2str(toGo)];
            h = msgbox(msg,'Correct','help', 'replace');
        end
    end
end
        

% This function reads the board and generates a numeric matrix with the
% game and a hint matrix
function [valid toSolveMatrix hintMatrix] = readBoard(handles)

valid = 1;
toSolveMatrix = zeros(9,9);
hintMatrix = zeros(9,9); % This matrix holds the position of the hints 
                         % or given numbers before solving the game
for rowInd = 1:9
    for colInd = 1:9
        cName = ['c' num2str(rowInd) num2str(colInd)];
        expr = ['cValue = get(handles.' cName ', ''String'');'];        
        eval(expr);
        
        %Validate data correctness prior solving the game
        %Only values from 1-9 should be entered, an empty cell is valid 
        if (isempty(cValue) == 0)
            if( isempty(str2num(cValue)) == 1)
                msg = ['Non numeric value found at row: ' num2str(rowInd) ', column: ' num2str(colInd)];
                h = msgbox(msg,'Error','error', 'replace');
                valid = 0;
                break;
            elseif (length(cValue) ~= 1 ||...             
                str2num(cValue) < 1 ||...
                str2num(cValue) > 9 )
                msg = ['Invalid input found at row: ' num2str(rowInd) ', column: ' num2str(colInd)];
                h = msgbox(msg,'Error','error', 'replace');
                valid = 0;
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
    
    if (valid == 0)
        break;
    end
end