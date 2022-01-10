function [summary] = readExelFile()
%simulation=struct('maxTime',0,'reptionsTime',0,'minimumSize',0,'Na0',0,'Nb0',0,'Fk',0);
%specie=struct('N0',0,'K',0,'lamda',0,'alpha',0);
%resoult=struct('time',[],'specieA',[;],'specieB',[;]);
%DataSet=struct('simulation',simulation,'species',[specie,specie],'resoult',resoult,'summary',summary);
summary=struct('title','','timeTitle','','ATitle','','BTitle','','Adata',[],'Bdata',[],'bothData',[]);
[file,path] = uigetfile('*population*.xlsx');
fullPath=[path,file];
c=readcell(fullPath);
titels=c(1,:);
matrix=readmatrix(fullPath);
bothData=matrix(:,7:9);
bothData(any(isnan(bothData),2),:) = [];
Adata=matrix(:,1:2);
Adata(any(isnan(Adata),2),:) = [];
Bdata=matrix(:,4:5);
Bdata(any(isnan(Bdata),2),:) = [];
summary.title=file;
summary.timeTitle=titels{1};
summary.ATitle=titels{2};
summary.BTitle=titels{5};
summary.Adata=Adata;
summary.Bdata=Bdata;
summary.bothData=bothData;
end

