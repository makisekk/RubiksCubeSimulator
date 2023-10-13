function fac = get_fac(cor, dir)
    global LEN;
    
    FAC_DLT = [
        -1, +1, +1, -1;
        +1, +1, -1, -1;
        -1, +1, +1, -1;
        -1, -1, +1, +1];
    fac.cor = zeros(3, 1);
    fac.vrt = zeros(3, 4);
    fac.clr = zeros(1, 3);
    
    if sum(dir) ~= 0
        fac.cor = cor;
        cnt = (sum(dir) > 0) * 2;
        for i = 1 : 3
            if dir(i) == 0
                cnt = cnt + 1;
                fac.vrt(i, : ) = cor(i) + FAC_DLT(cnt, : ) * (LEN / 2);
            else
                fac.vrt(i, : ) = repmat(cor(i), 1, 4);
            end
        end
    end
end