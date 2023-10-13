function cub = step_4(cub)
    clr_1 = cub(5).fac(1).clr;
    cnt = 0;
    if prod(cub(2).fac(1).clr == clr_1) > 0
        cnt = cnt + 1;
    end
    if prod(cub(4).fac(1).clr == clr_1) > 0
        cnt = cnt + 1;
    end
    if prod(cub(6).fac(1).clr == clr_1) > 0
        cnt = cnt + 1;
    end
    if prod(cub(8).fac(1).clr == clr_1) > 0
        cnt = cnt + 1;
    end
    if cnt == 0
        while 1
            if prod(cub(2).fac(3).clr == clr_1) > 0
                if prod(cub(6).fac(4).clr == clr_1) > 0
                    break;
                end
            end
            cub = flr_rot(cub, [-1; 0; 0]);
        end
        cub = step_4_1(cub);
        cub = flr_rot(cub, [-1; 0; 0], true);
        cub = step_4_2(cub);
    elseif cnt == 2
        while sum(cub(8).fac(1).clr ~= clr_1) > 0
            cub = flr_rot(cub, [-1; 0; 0]);
        end
        cnt = 0;
        if prod(cub(4).fac(1).clr == clr_1) > 0
            cnt = cnt + 1;
        elseif prod(cub(6).fac(1).clr == clr_1) > 0
            cnt = cnt + 1;
        end
        if cnt == 1
            while 1
                if prod(cub(4).fac(1).clr == clr_1) > 0
                    if prod(cub(8).fac(1).clr == clr_1) > 0
                        if prod(cub(2).fac(3).clr == clr_1) > 0
                            if prod(cub(6).fac(4).clr == clr_1) > 0
                                break;
                            end
                        end
                    end
                end
                cub = flr_rot(cub, [-1; 0; 0]);
            end
            cub = step_4_1(cub);
        else
            while 1
                if prod(cub(2).fac(1).clr == clr_1) > 0
                    if prod(cub(8).fac(1).clr == clr_1) > 0
                        if prod(cub(6).fac(4).clr == clr_1) > 0
                            break;
                        end
                    end
                end
                cub = flr_rot(cub, [-1; 0; 0]);
            end
            cub = step_4_2(cub);
        end
    end
end