function cub = step_6(cub)
    cnt = 0;
    if cub( 3).fac(1).clr == cub( 9).fac(1).clr 
        cnt = cnt+1;
    end   
    if cub( 9).fac(2).clr == cub(27).fac(2).clr 
        cnt = cnt+1;
    end 
    if cub(27).fac(6).clr == cub(21).fac(6).clr
        cnt = cnt+1;
    end 
    if cub(21).fac(3).clr == cub( 3).fac(3).clr
        cnt = cnt+1;
    end 
    if cnt == 0
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1], true);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [-1; 0; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1], true);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [-1; 0; 0]);
        while prod(cub(27).fac(2).clr == cub( 9).fac(2).clr) == 0
            cub = flr_rot(cub, [0; 0; 1], true);
        end
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1], true);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [-1; 0; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1], true);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [-1; 0; 0]);
    elseif cnt == 1
        while prod(cub(27).fac(2).clr == cub( 9).fac(2).clr) == 0
            cub = flr_rot(cub, [0; 0; 1], true);
        end
                cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1], true);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [-1; 0; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [0; 0; 1]);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [0; 0; 1], true);
        cub = flr_rot(cub, [0; -1; 0]);
        cub = flr_rot(cub, [-1; 0; 0]);
    end
    while prod(cub( 1).fac(1).clr == cub( 2).fac(1).clr) == 0
            cub = flr_rot(cub, [0; 0; 1], true);
    end    
    
end