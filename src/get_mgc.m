function cub = get_mgc(path)
global LEN;
    f1 = figure(1);
    subplot(2,3,1);
    imshow([path,'/front.png']),title('front');
    subplot(2,3,2);
    imshow([path,'/left.png']),title('left');
    subplot(2,3,3);
    imshow([path,'/right.png']),title('right');
    subplot(2,3,4);
    imshow([path,'/up.png']),title('up');
    subplot(2,3,5);
    imshow([path,'/down.png']),title('down');
    subplot(2,3,6);
    imshow([path,'/back.png']),title('back');
    f2 = figure(2);
    front = preproccess([path,'/front.png']);
    left = preproccess([path,'/left.png']);
    right = preproccess([path,'/right.png']);
    up = preproccess([path,'/up.png']);
    down = preproccess([path,'/down.png']);
    back = preproccess([path,'/back.png']);
    imwrite(front, [path,'/front_processed.png']);
    imwrite(left, [path,'/left_processed.png']);
    imwrite(right, [path,'/right_processed.png']);
    imwrite(up, [path,'/up_processed.png']);
    imwrite(down, [path,'/down_processed.png']);
    imwrite(back, [path,'/back_processed.png']);
    
    cub = repmat(get_cub([0; 0; 0]), 27, 1);
    cnt = 0;
    for i = -1 : +1
        for j = -1 : +1
            for k = -1 : +1
                cnt = cnt + 1;
                cub(cnt) = get_cub([i * LEN; j * LEN; k * LEN]);
            end
        end
    end
    frt = get_sur([path,'\front_processed.png'], 1, -1);
    lft = get_sur([path,'\left_processed.png'], 1, -1);
    rgt = get_sur([path,'\right_processed.png'], 0, -1);
    top = get_sur([path,'\up_processed.png'], 0,  2);
    btm = get_sur([path,'\down_processed.png'], 1,  0);
    bck = get_sur([path,'\back_processed.png'], 0, -1);
    srt_ele = clr_cls([frt; lft; rgt; top; btm; bck]);
    for i = 1 : 6
        srt_val((i - 1) * 9 + 1 : i * 9, : ) = repmat(mean(srt_ele((i - 1) * 9 + 1 : i * 9, : )), 9, 1);
    end
    cub = get_pnt(cub, upd_sur(frt, srt_ele, srt_val), [1; 0; 0], -1);
    cub = get_pnt(cub, upd_sur(lft, srt_ele, srt_val), [0; 1; 0], +1);
    cub = get_pnt(cub, upd_sur(rgt, srt_ele, srt_val), [0; 1; 0], -1);
    cub = get_pnt(cub, upd_sur(top, srt_ele, srt_val), [0; 0; 1], +1);
    cub = get_pnt(cub, upd_sur(btm, srt_ele, srt_val), [0; 0; 1], -1);
    cub = get_pnt(cub, upd_sur(bck, srt_ele, srt_val), [1; 0; 0], +1);
end