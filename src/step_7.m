function cub = step_7(cub)
    cnt = 0;
    if cub( 3).fac(1).clr == cub( 6).fac(1).clr 
        cnt = cnt+1;
    end   
    if cub( 9).fac(2).clr == cub(18).fac(2).clr 
        cnt = cnt+1;
    end 
    if cub(27).fac(6).clr == cub(24).fac(6).clr
        cnt = cnt+1;
    end 
    if cub(21).fac(3).clr == cub(14).fac(3).clr
        cnt = cnt+1;
    end 
    if cnt == 1
        while prod(cub(27).fac(6).clr == cub(24).fac(6).clr) == 0
            cub = flr_rot(cub, [0; 0; 1]);
        end
        if cub(3).fac(3).clr == cub(6).fac(1).clr %顺三棱换
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; -1; 0], true);
        else %逆三棱换
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0]);
        end
    elseif cnt == 0    
        if cub(3).fac(3).clr == cub(18).fac(2).clr %相对四棱换
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; -1; 0], true);
        else % 相邻四棱换
            if prod(cub( 3).fac(3).clr == cub( 6).fac(1).clr) == 0
                cub = flr_rot(cub, [0; 0; 1], true);
            end
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1], true);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [0; 0; 1]);
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [0; -1; 0], true);
        end
    end
    while prod(cub( 2).fac(1).clr == cub( 3).fac(1).clr) == 0
        cub = flr_rot(cub, [0; 0; 1], true);
    end
        
end