function ind = fac_ind(cor)
    global LEN;
    cor = round(cor / (LEN / 2));
    CUB_DLT = [
        -1,  0,  0,  0,  0, +1;
         0, +1, -1,  0,  0,  0;
         0,  0,  0, +1, -1,  0;
    ];
    for i = 1 : 6
        if transpose(CUB_DLT( : , i)) * cor > 0
            ind = i;
            break;
        end
    end
end