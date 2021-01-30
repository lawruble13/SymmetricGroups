function perms = ComputePermutations(items)
    arguments
        items (1,:)
    end
    n = length(items);
    if n == 1
        perms = items(1);
        return;
    end
    perms = zeros(0, n);
    for firstEl = items
        iterPerms = ComputePermutations(setdiff(items, firstEl));
        for i=1:size(iterPerms, 1)
            perms = [perms; firstEl iterPerms(i,:)];
        end
    end
end