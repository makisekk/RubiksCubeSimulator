function cub = get_cub(cor)
    global LEN;
    CUB_DLT = [
        -1,  0,  0,  0,  0, +1;
         0, +1, -1,  0,  0,  0;
         0,  0,  0, +1, -1,  0;
    ];
    cub.cor = zeros(3, 1);
    cub.fac = repmat(get_fac([0; 0; 0], [0; 0; 0]), 1, 6);
    
    cub.cor = cor;
    for i = 1 : 6
        cub.fac(i) = get_fac(cor + CUB_DLT( : , i) * (LEN / 2), CUB_DLT( : , i));
    end
end