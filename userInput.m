function [ret] = userInput(simulation)
ret=struct('maxTime',0,'reptionsTime',0,'minimumSize',0,'Na0',0,'Nb0',0,'Fk',0);
prompts = {'maxTime:','reptionsTime:','minimumSize:','Na0:','Nb0:','Fk:'};
definput = [simulation.maxTime,simulation.reptionsTime,simulation.minimumSize,simulation.Na0,simulation.Nb0,simulation.Fk];
answer=d8params(prompts,definput);
ret.maxTime=answer(1);
ret.reptionsTime=answer(2);
ret.minimumSize=answer(3);
ret.Na0=answer(4);
ret.Nb0=answer(5);
ret.Fk=answer(6);
end

