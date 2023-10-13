function cub = step_1(cub)
    global LEN;
    
    clr_1 = cub( 5).fac(1).clr;
    clr_2 = cub(15).fac(4).clr;
    % front
    ind = find_side(cub, clr_1, clr_2);     % 根据颜色查找对应的棱块编号
    if round(cub(ind).cor(1) / LEN) < 0
        cub = flr_rot(cub, [0; 1; 1] .* cub(ind).cor);
    end
    % back_side
    ind = find_side(cub, clr_1, clr_2);
    fid = find_face(cub, ind, clr_1);       % 确定该棱块朝向
    if round(cub(ind).cor(1) / LEN) > 0
        if round(cub(ind).fac(fid).cor(1) / (LEN / 2)) < 3
            while round(cub(ind).cor(3) / LEN) <= 0
                cub = flr_rot(cub, [+1; 0; 0]);
                ind = find_side(cub, clr_1, clr_2);
            end
            cub = flr_rot(cub, [0; 0; +1]);
        end
    end
    % side
    ind = find_side(cub, clr_1, clr_2);
    cnt = 0;
    fid = find_face(cub, ind, clr_1);
    dir = abs(cub(ind).fac(fid).cor);
    dir(dir < max(dir)) = 0;
    dir = [0; 1; 1] .* (1 - dir / sum(dir)) .* sign(cub(ind).fac(fid).cor);
    if round(cub(ind).cor(1) / LEN) == 0
        while round(cub(ind).cor(1) / LEN) <= 0
            cub = flr_rot(cub, dir);
            cnt = cnt + 1;
            ind = find_side(cub, clr_1, clr_2);
        end
        cub = flr_rot(cub, [+1; 0; 0]);
        for i = 1 : 4 - cnt
            cub = flr_rot(cub, dir);
        end
    end
    ind = find_side(cub, clr_1, clr_2);
    while round(cub(ind).cor(3) / LEN) <= 0
        cub = flr_rot(cub, [+1; 0; 0]);
        ind = find_side(cub, clr_1, clr_2);
    end
    % back_back
    cub = flr_rot(cub, [0; 0; +1]);
    cub = flr_rot(cub, [0; 0; +1]);
    cub = all_rot(cub, [1; 0; 0]);
end