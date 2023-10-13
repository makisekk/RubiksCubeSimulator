function cub = step_3(cub)
    global LEN;
    clr_2 = cub(15).fac(4).clr;
    clr_3 = cub(11).fac(3).clr;
    ind = find_side(cub, clr_2, clr_3);
    if round(cub(ind).cor(1) / LEN) == 0
        cnt = 0;
        while 1
            if round(cub(ind).cor(2) / LEN) < 0
                if round(cub(ind).cor(3) / LEN) > 0
                    break;
                end
            end
            cub = all_rot(cub, [1; 0; 0]);
            cnt = cnt + 1;
            ind = find_side(cub, clr_2, clr_3);
        end
        cub = step_3_1(cub);
        for i = 1 : 4 - cnt
            cub = all_rot(cub, [1; 0; 0]);
        end
    end
    ind = find_side(cub, clr_2, clr_3);
    fid = find_face(cub, ind, clr_2);
    if round(cub(ind).fac(fid).cor(1) / (LEN / 2)) ~= -3
        while round(cub(ind).cor(3) / LEN) <= 0
            cub = flr_rot(cub, [-1; 0; 0]);
            ind = find_side(cub, clr_2, clr_3);
        end
        cub = step_3_1(cub);
    else
        while round(cub(ind).cor(2) / LEN) >= 0
            cub = flr_rot(cub, [-1; 0; 0]);
            ind = find_side(cub, clr_2, clr_3);
        end
        cub = step_3_2(cub);
    end
    cub = all_rot(cub, [1; 0; 0]);
end