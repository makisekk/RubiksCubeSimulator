function cub = step_4_2(cub)
    cub = flr_rot(cub, [0; 0; +1]);
    cub = flr_rot(cub, [0; -1; 0]);
    cub = flr_rot(cub, [-1; 0; 0]);
    cub = flr_rot(cub, [0; -1; 0], true);
    cub = flr_rot(cub, [-1; 0; 0], true);
    cub = flr_rot(cub, [0; 0; +1], true);
end