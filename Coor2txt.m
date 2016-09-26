struct = load('Coor.mat');
Coor = struct.Coor;
outputDirectoryName = 'Coor2txt';

A = exist(outputDirectoryName, 'dir');

if A ~= 7 %if there does not already exist a directory called 'Coor2txt'
    mkdir(outputDirectoryName);
    cd(outputDirectoryName);
    for i = 1:length(Coor)
        id = fopen(strcat(['ROI_', num2str(i), '_coords.txt']), 'wt');
        currentROI = Coor{i};
        for j = 1:length(currentROI)
            fprintf(id, [num2str(currentROI(1,j)), ' ']);
            fprintf(id, [num2str(currentROI(2,j)), '\n']);        
        end
        fclose(id);
    end
end