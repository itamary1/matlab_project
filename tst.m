%clearAllMemoizedCaches
close all
clear
% experiment struct.
specieA=struct('N0',5,'K',10,'lamda',1.1,'alpha',1);
specieB=struct('N0',5,'K',10,'lamda',1.1,'alpha',1);
ret=userInput(struct('maxTime',0,'reptionsTime',0,'minimumSize',0,'Na0',0,'Nb0',0,'Fk',0));
times=linspace(0,ret.reptionsTime,201);
specieA.N0=ret.Na0;
specieB.N0=ret.Nb0;
Nta=logisticGrowth(specieA,times)



