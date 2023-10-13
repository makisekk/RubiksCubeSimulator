function updateAllPatches(cub, h)

for i = 1 : 162
    cubIdx = ceil(i / 6);
    facIdx = mod(i - 1, 6) + 1;
    set(h(i), 'XData', cub(cubIdx).fac(facIdx).vrt(1, :), 'YData', cub(cubIdx).fac(facIdx).vrt(2, :), 'ZData', cub(cubIdx).fac(facIdx).vrt(3, :), 'FaceColor', cub(cubIdx).fac(facIdx).clr);
end
end

