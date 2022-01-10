function inParams = d8params(prompts,defaultParams)
% MATLAB course for biology students
% Class demonstration
% Get numbers from the user
% Display input dialog with paramNames and values of defaultParams,
% until all values are numeric
% Return values of inParams
Nparams = length(prompts);
if Nparams > length(defaultParams) % missing default values
    defaultParams(end+1:Nparams) = nan;
else % could be too many default params
    defaultParams = defaultParams(1:Nparams);
end
isGood = false(1,Nparams); % initial values
% default values
default_char = num2str(defaultParams);
default_cells = split(default_char); % split char array between spaces
while ~all(isGood) % all parameters should be good
    response = inputdlg(prompts,'parameters',[1 50],default_cells);
    if ~isempty(response) % if user pressed OK, not Cancel
        vals = str2double(response); % works only if there is one number in each entry
        % test parameters
        notNum = isnan(vals);
        Negative = vals <= 0;
        isGood = ~Negative & ~notNum;
        inParams = vals'; % row array
        default_char = num2str(inParams);
        default_cells = split(default_char); % use if input dialog is displayed again
        default_cells(notNum) = {'not a number'};
        default_cells(Negative) = {'not a positive value'};
    end
end