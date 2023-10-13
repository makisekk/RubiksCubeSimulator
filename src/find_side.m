function ind = find_side(cub, clr_1, clr_2)
    found = false;
    for i = 1 : 27
        cnt = 0;
        ept = 0;
        for j = 1 : 6
            if cub(i).fac(j).clr == clr_1
                cnt = cnt + 1;
            end
            if cub(i).fac(j).clr == clr_2
                cnt = cnt + 1;
            end
            if cub(i).fac(j).clr == [0, 0, 0]
                ept = ept + 1;
            end
        end
        if cnt == 2
        if ept == 4
            found = true;
            ind = i;
            break;
        end
        end
    end
    if ~found 
        error('Something wrong with color.');
    end
end