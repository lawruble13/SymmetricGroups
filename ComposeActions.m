function result = ComposeActions(baseaction, action)
    arguments
        baseaction (1,:) {mustBeNumeric}
    end
    arguments (Repeating)
        action (1,:) {mustBeNumeric}
    end
    result = baseaction;
    for i=1:length(action)
        if size(action{i}) ~= size(result);
            error("All actions must have the same length");
        end
        result = result(action{i});
    end
end