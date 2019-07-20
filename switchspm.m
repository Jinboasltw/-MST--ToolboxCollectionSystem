%switchspm: Run different version of SPM
%This tiny script prompts the dialog which SPM version you want to run.
%Prerequisites
%1. Each version of SPM is supporsed to be located under spm_path.
%2. Please copy spm_rmpath.m from SPM5 or later and put it into SPM99 and
%3. Please change the SPM path according to your environment
% Kiyotaka Nemoto 6/Feb/2013
% Jinbo Zhang 2019-7-19

%%%Please change the path below according to your environment%%%
spm_path='G:\02_extent_toolbox\Toolbox\SPM\';
%%%

%The path for each version of SPM
spm5_path=fullfile(spm_path,'spm5');
spm8_path=fullfile(spm_path,'spm8');
spm12_path=fullfile(spm_path,'spm12');

str = ['spm5 '; 'spm8 '; 'spm12'];

spmver = listdlg('PromptString','SPM ver you want to run...',...
                'SelectionMode','single',...
                'ListString',str,...
                'OKString','Run',...
                'CancelString','Cancel');

if ~isempty(spmver)
switch spmver
    case 1 %spm5
	    % remove spm path
	    while true
            try
                spm_rmpath
            catch break;
            end
        end
        % add spm5 path
	    addpath(spm5_path);
	    % run spm5
	    spm;
        
	case 2 %spm8
	    % remove spm path
	    while true
            try
                spm_rmpath;
            catch break;
            end
        end
	    % add spm8 path
	    addpath(spm8_path);
	    % run spm8
	    spm;

    case 3 %spm12
	    % remove spm path
	    while true
            try
                spm_rmpath;
            catch break;
            end
        end
	    % add spm12b path
	    addpath(spm12_path);
	    % run spm12
	    spm;
    otherwise
        
end
else
    disp('User Exit!');
end
