function result = Strfind(j,k,Data) % j 列 k 行
num = 930;
best_eq = 0;
best_label = 0;
curr_eq = 0;
rand_index = randperm(num);
for i = 1:100
    iii=rand_index(i);
    if Data{1,j}{iii} ==string('NA')
        continue
    end
    for ii = 1:21               % 变量维度
        if string(Data{1,ii}{iii})==string(Data{1,ii}{k})
            curr_eq = curr_eq + 1;
        end
    end
    if curr_eq > best_eq
       best_label =  iii;
       best_eq = curr_eq;
    end
    curr_eq = 0;
end
result = Data{1,j}{best_label};
