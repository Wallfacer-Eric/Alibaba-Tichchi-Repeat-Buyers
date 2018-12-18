clc
clear
load Data_onehot.mat;
% ��һ����PCA
DataNorm = transpose(mapminmax(transpose(DataInOneMat),0,1));
[COEFF SCORE latent]=princomp(DataNorm(:,1:64)); % 65 66 ���ǽ��
%print cumsum(latent)./sum(latent) �������ѡά��,30ά��Ϣ��>0.95
DataPCA = SCORE(:,1:30);
DataPCA = [ones(size(DataPCA,1),1),DataPCA];
% ����imbalanced data   % label-1 data: 820�����ң�ѵ���������Ԥ��
W = [];
for i = 1:10
    rand_index = randperm(7310);
    X_neg = DataPCA(rand_index(1:820),:);
    X_pos = DataPCA(7311:end,:);
    X = [X_neg;X_pos];
    Y = [zeros(size(X_neg,1),1);ones(size(X_pos,1),1)];
    weight= regress(Y,X);
    W = [W,weight];
end
weight_logic = transpose(mean(transpose(W)));
% ѵ��profitԤ��
X = DataPCA(7311:end,:);
Y = Data{1,23};
for i = 7311:size(DataPCA,1)
     Z(i-7310)=str2double(Y{i});
end
Z=transpose(Z);
weight_profit = regress(Z,X);
% ѵ��׼ȷ�ʼ���
acc = 0;
for i = 1:size(DataPCA,1)
     if (DataPCA(i,:)*weight_logic>0.5)==DataNorm(i,66)
        acc=acc+1; 
     end
end
acc_rate_train = acc/size(DataPCA,1);
loss = zeros(size(Z,1),1);
for i = 7311:size(DataPCA,1)
     loss(i-7310) = DataPCA(i,:)*weight_profit - Z(i-7310);
end
avg_loss = mean(abs(loss));