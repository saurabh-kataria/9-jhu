%base_path = '/home/peter/AAU/9-jhu/';
base_path = '/export/b16/pfredericks/AAU/9-jhu/';

addpath([base_path 'src/external/']);

input_dir = [base_path,'data/processed/lre17_dev/'];
output_dir = [base_path,'data/interim/lre17_dev/OM_LSA/'];

filenames = dir([input_dir '*.wav'])
filenames = {filenames.name};
if ~7==exist(output_dir,'dir')
    mkdir(output_dir)
end

for i=1:length(filenames);
    filename = filenames{i};
    ifp = [input_dir filename];
    ufp = [output_dir filename];

    %klt(ifp,ufp);
    %wiener_as(ifp,ufp);
    OM_LSA(ifp(1:length(ifp)-4),ufp(1:length(ufp)-4)); % no .wav at the end !!!!
end
