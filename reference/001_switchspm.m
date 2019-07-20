%switchspm: Run different version of SPM
%This tiny script prompts the dialog which SPM version you want to run.
%Prerequisites
%1. Each version of SPM is supporsed to be located under spm_path.
%2. Please copy spm_rmpath.m from SPM5 or later and put it into SPM99 and
%   SPM2 direcotry. Otherwise, Path removal won't work correctly.
%3. Please change the SPM path according to your environment
% Kiyotaka Nemoto 6/Feb/2013

%%%Please change the path below according to your environment%%%
spm_path='C:\spm\';
%%%

%The path for each version of SPM
spm99_path=fullfile(spm_path,'spm99');
spm2_path=fullfile(spm_path,'spm2');
spm5_path=fullfile(spm_path,'spm5');
spm8_path=fullfile(spm_path,'spm8');
spm12b_path=fullfile(spm_path,'spm12b');

str = ['spm99 '; 'spm2  '; 'spm5  '; 'spm8  '; 'spm12b'];
spmver = listdlg('PromptString','SPM ver you want to run...',...
                'SelectionMode','single',...
                'ListString',str,...
                'OKString','Run',...
                'CancelString','Cancel');


switch spmver
	case 1, %spm99
	    % remove spm path
	    while true
            try
                spm_rmpath
            catch break;
            end;
        end;
        % add spm99 path
	    addpath(spm99_path);
	    % run spm99
	    spm;
        
    case 2, %spm2
	    % remove spm path
	    while true
            try
                spm_rmpath
            catch break;
            end;
        end;
        % add spm2 path
	    addpath(spm2_path);
	    % run spm2
	    spm;

    case 3, %spm5
	    % remove spm path
	    while true
            try
                spm_rmpath
            catch break;
            end;
        end;
        % add spm5 path
	    addpath(spm5_path);
	    % run spm5
	    spm;
        
	case 4 %spm8
	    % remove spm path
	    while true
            try
                spm_rmpath;
            catch break;
            end;
        end;
	    % add spm8 path
	    addpath(spm8_path);
	    % run spm8
	    spm;

    case 5 %spm12b
	    % remove spm path
	    while true
            try
                spm_rmpath;
            catch break;
            end;
        end;
	    % add spm12b path
	    addpath(spm12b_path);
	    % run spm12
	    spm;
end
