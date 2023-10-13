function cub = flr_rot(cub, dir, isNegative)
    if nargin < 3 % set false as default value
        isNegative = false;
    end
    dir = dir / norm(dir);
    flr = round(sum(dir));
    dir = abs(dir);
    global LEN;
    global FPS;
    global PSN;
    global hh;
    
    if flr > 0
        ang = +90 / PSN;
    else
        ang = -90 / PSN;
    end
    if isNegative == true
        ang = -ang;
    end
    for frc = 1 : PSN
        for i = 1 : 27
            if round(transpose(dir) * cub(i).cor / LEN) == flr
                cub(i) = cub_rot(cub(i), dir, ang);
            end
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