function cub = get_pnt(cub, sur, dir, flr)
    global LEN;
    cnt = 0;
    for i = 1 : 27
        if transpose(dir) * cub(i).cor / LEN == flr
            for j = 1 : 6
                if transpose(dir) * cub(i).fac(j).cor / (1.5 * LEN) == flr
                    cnt = cnt + 1;
                    cub(i).fac(j).clr = sur(cnt, : );
                end
            end
        end
    end
end