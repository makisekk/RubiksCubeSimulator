function sur = upd_sur(sur, srt_ele, srt_val)
    for i = 1 : 9
        for j = 1 : 54
            if sur(i, : ) == srt_ele(j, : )
                sur(i, : ) = srt_val(j, : );
                break;
            end
        end
    end
end