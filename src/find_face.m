function fid = find_face(cub, ind, clr)
    found = false;
    fid = 0;
    for i = 1 : 6
        if cub(ind).fac(i).clr == clr
            found = true;
            fid = i;
            break;
        end
    end
    if ~found 
        error('Something wrong with color.');
    end
end