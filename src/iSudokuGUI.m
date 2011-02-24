% File: iSudokuGUI.m
% Description: This file implements the graphical user interface for the
% iSudoku solver. The user interface consists of 81 text boxes to represent
% the 9 by 9 sudoku board, 1 label fot the GUI title (iSudoku) and 4
% buttons: Random, Verify, Solve and Clear.
% Author(s): Andrea Garcia, Ivan Castro
% Mail(s): aga09001@student.mdh.se, ico09002@student.mdh.se
% Group number: A-3

function varargout = iSudokuGUI(varargin)
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

%---------------------------------------------------------------------
% --- Outputs from this function are returned to the command line.
function varargout = iSudokuGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%----------------------------------------------------------------------
% Executes on button press in RandomBtn.
% This button is in charge of generating a random dudoku game and display
% it in the user interface. This button also enables the "verify", "solve"
% and "clear" button.
%----------------------------------------------------------------------
function RandomBtn_Callback(hObject, eventdata, handles)
% hObject    handle to RandomBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get a sudoku game using a random number
cellMat = get(handles.RandomBtn,'UserData');
randNum = ceil(20.*rand(1));
srtTarg = ['S' num2str(randNum)];
[cRowSize cColSize] = size(cellMat);

% Find the random game in from the database
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
        % Set a number in the appropriate position in the board
        if strcmp(cValue, '')
            expr = ['set(handles.' cName ', ''String'', ''' cValue ''', ''FontWeight'', ''normal'', ''Enable'', ''on'', ''ForegroundColor'', [' num2str([0 0 0]) '])'];
        else
            expr = ['set(handles.' cName ', ''String'', ''' cValue ''', ''FontWeight'', ''bold'', ''Enable'', ''inactive'', ''ForegroundColor'', [' num2str([0 0 0]) '])'];
        end
        eval(expr);
    end
end

% Enable the solve, verify and clear buttons
set(handles.SolveBtn, 'Enable', 'on');
set(handles.ClearBtn, 'Enable', 'on');
set(handles.verifyBtn, 'Enable', 'on');


%----------------------------------------------------------------------
% Executes on button press in SolveBtn.
% This button is in charge of solving the sudoku game displayed on the user
% interface using the iSudokuAlg function.
%----------------------------------------------------------------------
function SolveBtn_Callback(hObject, eventdata, handles)
% hObject    handle to SolveBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% First Read the board:
[validMatrix toSolveMatrix hintMatrix] = readBoard(handles);

% At this point "toSolveMatrix" holds the Sudoku game that needs to be
% solved automatically.

if (validMatrix == 1) % % The board has only valid characters (1-9)
    % Verify that the solution / partial solution is correct
    incorrectGame = verific(toSolveMatrix);
    if (incorrectGame == 0)
        % Solve the Game using the iSudokuAlg function:
        solvedMatrix = iSudokuALG(toSolveMatrix);
        % Populate the GUI with the solution obtained from
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
    else
        % The current game is incorrect, display an error message.
        msg = 'Invalid Game!';
        h = msgbox(msg,'Error','error', 'replace');
    end
end

%----------------------------------------------------------------------
% Executes on button press in ClearBtn.
% This button just clears the board and resets the solve button and the
% verify button to their default state, disabled.
%----------------------------------------------------------------------
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
% Disable the Solve and Verify buttons:
set(handles.SolveBtn, 'Enable', 'off');
set(handles.verifyBtn, 'Enable', 'off');

%----------------------------------------------------------------------
% Executes on button press in verifyBtn.
% This button verifies that the solution (partial or complete) displayed on
% the board is correct. If it is correct, a pop-up window will display that
% the solution is correct. Otherwise it will display an error message.
%----------------------------------------------------------------------
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
        
%----------------------------------------------------------------------
% This function reads the board and generates a numeric matrix with the
% game and a hint matrix. This function is used by both the solve and the
% verify buttons
%----------------------------------------------------------------------
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