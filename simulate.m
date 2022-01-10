function results = simulate(pops,params)
results = struct('Time',[],'pop_A',[],'pop_B',[]);
nanA = nan(params.maxTime+1,params.reptionsTime);
nanB = nan(params.maxTime+1,params.reptionsTime);
nanA(1,:) = pops(1).N0;
nanB(1,:) = pops(2).N0;

