load('DataTest.mat');
Data{1,2}=replace(Data{1,2},'admin.','100000000000');
Data{1,2}=replace(Data{1,2},'blue-collar','010000000000');
Data{1,2}=replace(Data{1,2},'entrepreneur','001000000000');
Data{1,2}=replace(Data{1,2},'housemaid','000100000000');
Data{1,2}=replace(Data{1,2},'management','000010000000');
Data{1,2}=replace(Data{1,2},'retired','000001000000');
Data{1,2}=replace(Data{1,2},'self-employed','000000100000');
Data{1,2}=replace(Data{1,2},'services','000000010000');
Data{1,2}=replace(Data{1,2},'student','000000001000');
Data{1,2}=replace(Data{1,2},'technician','000000000100');
Data{1,2}=replace(Data{1,2},'unemployed','000000000010');
Data{1,2}=replace(Data{1,2},'unknown','000000000001');

Data{1,3}=replace(Data{1,3},'divorced','1000');
Data{1,3}=replace(Data{1,3},'married','0100');
Data{1,3}=replace(Data{1,3},'single','0010');
Data{1,3}=replace(Data{1,3},'unknown','0001');

Data{1,4}=replace(Data{1,4},'basic.4y','10000000');
Data{1,4}=replace(Data{1,4},'basic.6y','01000000');
Data{1,4}=replace(Data{1,4},'basic.9y','00100000');
Data{1,4}=replace(Data{1,4},'high.school','00010000');
Data{1,4}=replace(Data{1,4},'illiterate','00001000');
Data{1,4}=replace(Data{1,4},'professional.course','00000100');
Data{1,4}=replace(Data{1,4},'university.degree','00000010');
Data{1,4}=replace(Data{1,4},'unknown','00000001');

Data{1,5}=replace(Data{1,5},'unknown','010');
Data{1,5}=replace(Data{1,5},'no','100');
Data{1,5}=replace(Data{1,5},'yes','001');

Data{1,6}=replace(Data{1,6},'unknown','010');
Data{1,6}=replace(Data{1,6},'no','100');
Data{1,6}=replace(Data{1,6},'yes','001');

Data{1,7}=replace(Data{1,7},'unknown','010');
Data{1,7}=replace(Data{1,7},'no','100');
Data{1,7}=replace(Data{1,7},'yes','001');

Data{1,8}=replace(Data{1,8},'cellular','10');
Data{1,8}=replace(Data{1,8},'telephone','01');

Data{1,9}=replace(Data{1,9},'apr','1000000000');
Data{1,9}=replace(Data{1,9},'aug','0100000000');
Data{1,9}=replace(Data{1,9},'dec','0010000000');
Data{1,9}=replace(Data{1,9},'jul','0001000000');
Data{1,9}=replace(Data{1,9},'jun','0000100000');
Data{1,9}=replace(Data{1,9},'mar','0000010000');
Data{1,9}=replace(Data{1,9},'may','0000001000');
Data{1,9}=replace(Data{1,9},'nov','0000000100');
Data{1,9}=replace(Data{1,9},'oct','0000000010');
Data{1,9}=replace(Data{1,9},'sep','0000000001');

Data{1,10}=replace(Data{1,10},'fri','10000');
Data{1,10}=replace(Data{1,10},'mon','01000');
Data{1,10}=replace(Data{1,10},'thu','00100');
Data{1,10}=replace(Data{1,10},'tue','00010');
Data{1,10}=replace(Data{1,10},'wed','00001');

Data{1,14}=replace(Data{1,14},'failure','100');
Data{1,14}=replace(Data{1,14},'nonexistent','010');
Data{1,14}=replace(Data{1,14},'success','001');

% Data{1,22}=replace(Data{1,22},'no','10');
% Data{1,22}=replace(Data{1,22},'yes','01');
DataTestInOneMat=[];
for i=1:21
    tmp=cell2mat(Data{1,i});
    if(isnumeric(tmp(1)))
        DataTestInOneMat=[DataTestInOneMat tmp];
    else
        [~,l] = size(tmp);
        for j=1:l
            DataTestInOneMat=[DataTestInOneMat str2num(tmp(:,j))];
        end
    end
end