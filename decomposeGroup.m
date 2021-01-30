n = 4;

perms = ComputePermutations(1:n);
baseActions = 1:n;
baseActionPeriod = 1;
doneActions = 1:n;
for i=1:size(perms, 2)
    action = perms(i,:);
    if ismember(action, doneActions, 'rows')
        continue
    end
    baseActions = [baseActions; action];
    nApplied = 1;
    
end
