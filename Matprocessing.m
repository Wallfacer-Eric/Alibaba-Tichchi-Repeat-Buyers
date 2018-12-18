function list = Matprocessing(str_list)
num = 930;
sum_value = 0;
sum_times = 0;
for i = 1:num
    if str_list{i} ~= string('NA')
        str_list{i}=str2double(str_list{i});
        sum_value = sum_value + str_list{i};
        sum_times = sum_times + 1;
    end
end
avg_value = sum_value / sum_times;
for i = 1:num
   if str_list{i} == 'NA'
      str_list{i} = avg_value; 
   end
end
list = str_list;