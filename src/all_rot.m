function cub = all_rot(cub, dir, isNegative)
    if nargin < 3  % set false as default value
        isNegative = false;
    end
    dir = dir / sum(dir);
    if isNegative
        arg = 90;
    else
        arg = -90;
    end
    global FPS;
    global PSN;
    global hh;
    
    for frc = 1 : PSN
        for i = 1 : 27
            cub(i) = cub_rot(cub(i), dir, arg / PSN);
        end
        updateAllPatches(cub, hh);
        pause(0.01);
    end
    tmp = cub;
    sup = cub;
    for i = 1 : 27
        for j = 1 : 6
            tmp(i).fac(fac_ind(sup(i).fac(j).cor - sup(i).cor)) = sup(i).fac(j);
        end
        cub(cub_ind(tmp(i).cor)) = tmp(i);
    end
end