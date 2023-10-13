function srt_ele = clr_cls(mat)
    srt_ele = zeros(54, 3);
    for i = 1 : 6
        tmp = zeros(54, 1);
        pvt = mat(9 * (i - 1) + 5, : );
        for j = 1 : 54
            tmp(j, 1) = norm(mat(j, : ).*[1.2 1.2 1] - pvt.*[1.2 1.2 1]);
        end
        tmp = sortrows([tmp, mat]);
        for j = 1 : 9
            srt_ele(9 * (i - 1) + j, : ) = tmp(j, 2 : 4);
        end
    end
end