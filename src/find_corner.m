function ind = find_corner(cub, clr_1, clr_2, clr_3)
    found = false;
    for i = 1 : 27
        cnt = 0;
        for j = 1 : 6
            if cub(i).fac(j).clr == clr_1
                cnt = cnt + 1;
            end
            if cub(i).fac(j).clr == clr_2
                cnt = cnt + 1;
            end
            if cub(i).fac(j).clr == clr_3
                cnt = cnt + 1;
            end
        end
        if cnt == 3
            found = true;
            ind = i;
        end
    end
    if ~found 
        error('Something wrong with color.');
    end
end