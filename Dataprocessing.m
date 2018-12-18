clc
clear
fid = fopen('DataPredict.csv');
num = 930;
Data = textscan(fid,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s',num,'delimiter',',');
fclose(fid);
Numberlist = [11,12,13,15,16,17,18,19,20,21];
Strlist = [2,3,4,5,6,7,8,9,10,14];
for i = 1:size(Numberlist,2)
    str_list = Data{1,Numberlist(i)};
    %list = Matprocessing(Data{1,Numberlist(i)});
    %Data{1,Numberlist(i)} = list;
    for j = 1:num
        str_list{j}=str2double(str_list{j});
    end
    Data{1,Numberlist(i)} = str_list;
end
str_list = Matprocessing(Data{1,1});
Data{1,1}=str_list;
for i = 1:size(Strlist,2)  % 每个str列
    j = Strlist(i)
    for k = 1:num          % 每个元素
         k
         if Data{1,j}{k} == string('NA')
              Data{1,j}{k} = Strfind(j,k,Data);
         end
    end
end
