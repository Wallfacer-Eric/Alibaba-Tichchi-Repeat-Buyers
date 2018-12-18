clc
clear
load train.mat;
load DataTest_onehot.mat;
DataNorm_test = transpose(mapminmax(transpose(DataTestInOneMat),0,1));
score_test = bsxfun(@minus,DataNorm_test(:,1:64),mean(DataNorm_test(:,1:64),1)) * COEFF;
DataPCA = score_test(:,1:30);
DataPCA = [ones(size(DataPCA,1),1),DataPCA];
Predict_logic = zeros(size(DataPCA,1),1);
Predict_profit = zeros(size(DataPCA,1),1);
for i = 1:size(DataPCA,1)
     Predict_logic(i) = (DataPCA(i,:)*weight_logic>0.5);
     if Predict_logic(i) == 1
        Predict_profit(i) = DataPCA(i,:)*weight_profit ;
     end
end