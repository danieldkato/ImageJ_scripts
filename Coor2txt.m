struct = load('Coor.mat');
Coor = struct.Coor;

for i = 1:length(Coor)
%for i = 1:1
    id = fopen(strcat(['ROI_', num2str(i), '_coords.txt']), 'wt');
    currentROI = Coor{i};
    for j = 1:length(currentROI)
        fprintf(id, [num2str(currentROI(1,j)), ' ']);
        fprintf(id, [num2str(currentROI(2,j)), '\n']);        
    end
    fclose(id);
end