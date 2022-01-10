function [Nt] = logisticGrowth(spiece,times)
%specie=struct('N0',0,'K',0,'lamda',0,'alpha',0);

N0=spiece.N0;
K=spiece.K;
lamda=spiece.lamda;
t=reshape(times, length(times), 1);
N0=reshape(N0, 1, length(N0));
num_bacteria = N0.*(lamda.^t);
logistic = 1+((N0.*((lamda.^t)-1))./K);
Nt = num_bacteria./logistic;
end

