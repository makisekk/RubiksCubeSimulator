function cub = step_2(cub)
    global LEN;
    
    % front
    clr_1 = cub( 5).fac(1).clr;
    clr_2 = cub(15).fac(4).clr;
    clr_3 = cub(11).fac(3).clr;
    ind = find_corner(cub, clr_1, clr_2, clr_3);
    if round(cub(ind).cor(1) / LEN) < 0
        if (ind == 1)
            cub = flr_rot(cub, [0; -1; 0]);
            cub = flr_rot(cub, [1; 0; 0]);
            cub = flr_rot(cub, [0; -1; 0], true);
        elseif (ind == 3)
            cub = flr_rot(cub, [0; -1; 0], true);
            cub = flr_rot(cub, [1; 0; 0]);
            cub = flr_rot(cub, [0; -1; 0]);    
        elseif (ind == 7)
            cub = flr_rot(cub, [0; 1; 0], true);
            cub = flr_rot(cub, [1; 0; 0]);
            cub = flr_rot(cub, [0; 1; 0]); 
        else
            cub = flr_rot(cub, [0; 1; 0]);
            cub = flr_rot(cub, [1; 0; 0]);
            cub = flr_rot(cub, [0; 1; 0], true); 
        end
    end
    % back_back
    ind = find_corner(cub, clr_1, clr_2, clr_3);
    fid = find_face(cub, ind, clr_1);
    if round(cub(ind).fac(fid).cor(1) / (LEN / 2)) == 3
        while 1
            if round(cub(ind).cor(2) / LEN) < 0
                if round(cub(ind).cor(3) / LEN) > 0
                    break;
                end
            end
            cub = flr_rot(cub, [+1; 0; 0]);
            ind = find_corner(cub, clr_1, clr_2, clr_3);
        end
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [+1; 0; 0]);
        cub = flr_rot(cub, [0; -1; 0]);
    end
    % back_side
    ind = find_corner(cub, clr_1, clr_2, clr_3);
    while 1
        if round(cub(ind).cor(2) / LEN) < 0
            if round(cub(ind).cor(3) / LEN) > 0
                break;
            end
        end
        cub = flr_rot(cub, [+1; 0; 0]);
        ind = find_corner(cub, clr_1, clr_2, clr_3);
    end
    fid = find_face(cub, ind, clr_2);
    if round(cub(ind).fac(fid).cor(1) / (LEN / 2)) == 3
        cub = flr_rot(cub, [+1; 0; 0], true);
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [+1; 0; 0]);
        cub = flr_rot(cub, [0; -1; 0]);
    else
        cub = flr_rot(cub, [0; -1; 0], true);
        cub = flr_rot(cub, [+1; 0; 0], true);
        cub = flr_rot(cub, [0; -1; 0]);
    end
    cub = all_rot(cub, [1; 0; 0]);
end