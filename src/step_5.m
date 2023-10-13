function cub = step_5(cub)
    global LEN;
    
    clr_1 = cub(5).fac(1).clr;
    cnt = 0;
    
    if sum(cub(1).fac(1).clr ~= clr_1) > 0
        cnt = cnt + 1;
    end
    if sum(cub(3).fac(1).clr ~= clr_1) > 0
        cnt = cnt + 1;
    end
    if sum(cub(7).fac(1).clr ~= clr_1) > 0
        cnt = cnt + 1;
    end
    if sum(cub(9).fac(1).clr ~= clr_1) > 0
        cnt = cnt + 1;
    end
    if cnt == 2
        if (all(cub(3).fac(1).clr == clr_1) && all(cub(7).fac(1).clr == clr_1)) || (all(cub(1).fac(1).clr == clr_1) && all(cub(9).fac(1).clr == clr_1))
            while sum(cub(3).fac(4).clr ~= clr_1) > 0
                cub = flr_rot(cub, [-1; 0; 0]);
            end
            cub = step_5_1(cub);
            cub = step_5_2(cub);
        else
            while 1
                if sum(cub(3).fac(1).clr ~= clr_1) > 0
                    if sum(cub(9).fac(1).clr ~= clr_1) > 0
                        break;
                    end
                end
                cub = flr_rot(cub, [-1; 0; 0]);
            end
            if sum(cub(3).fac(4).clr ~= clr_1) > 0
                cub = step_5_2(cub);
                cub = step_5_1(cub);
            else
                cub = flr_rot(cub, [-1; 0; 0], true);
                cub = step_5_2(cub);
                cub = flr_rot(cub, [-1; 0; 0]);
                cub = flr_rot(cub, [-1; 0; 0]);
                cub = step_5_1(cub);
            end
        end
    elseif cnt == 3
        while sum(cub(3).fac(1).clr ~= clr_1) > 0
            cub = flr_rot(cub, [-1; 0; 0]);
        end
        if prod(cub(9).fac(4).clr == clr_1) > 0
            cub = step_5_1(cub);
        else
            cub = step_5_2(cub);
        end
    elseif cnt == 4
        while 1
            if prod(cub(1).fac(3).clr == clr_1) > 0
                if prod(cub(3).fac(3).clr == clr_1) > 0
                    break;
                end
            end
            cub = flr_rot(cub, [-1; 0; 0]);
        end
        if prod(cub(7).fac(3).clr == clr_1) > 0
            cub = step_5_1(cub);
            cub = step_5_1(cub);
        else
            cub = step_5_1(cub);
            cub = flr_rot(cub, [-1; 0; 0]);
            cub = step_5_1(cub);
        end
    end
end