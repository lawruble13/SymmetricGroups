function printAction(action)
    arguments
        action (1,:) {mustBeNumeric}
    end
    n = length(action);
    uninspected_items = 1:n;
    totalAction = "";
    while ~isempty(uninspected_items)
        cycle = [uninspected_items(1)];
        while ~ismember(action(cycle(end)), cycle)
            cycle = [cycle action(cycle(end))];
        end
        if length(cycle) > 1
            totalAction = strcat(totalAction,sprintf('(%s)',join(arrayfun(@string, cycle),'')));
        end
        uninspected_items = setdiff(uninspected_items, cycle);
    end
    if strlength(totalAction) == 0
        fprintf('(1)\n');
    else
        fprintf('%s\n',totalAction);
    end
end