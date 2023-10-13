function cub = cub_rot(cub, dir, ang)
    rot = makehgtform('axisrotate', dir,  ang / 180 * pi);
    rot = rot(1 : 3, 1 : 3);
    cub.cor = rot * cub.cor;
    for i = 1 : 6
        cub.fac(i).cor = rot * cub.fac(i).cor;
        cub.fac(i).vrt = rot * cub.fac(i).vrt;
    end
end