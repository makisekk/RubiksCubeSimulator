function sur = get_sur(pct, flp, rtt)
    %global LGT;
    
    sur = zeros(9, 3);
    
    pct = imread(pct);
    if flp == 1
        pct = fliplr(pct);
    end
    pct = rot90(pct, rtt);
    m = size(pct, 1);
    x = m / 20;
    n = size(pct, 2);
    y = n / 20;
    cnt = 0;
    for i = 1 : 3
        for j = 1 : 3
            cnt = cnt + 1;
            tmp = pct(round((i - 0.5) / 3 * m - x) : round((i - 0.5) / 3 * m + x), round((j - 0.5) / 3 * n - y) : round((j - 0.5) / 3 * n + y), : );
            for k = 1 : 3
                sur(cnt, k) = mean(mean(tmp( : , : , k)));
            end
            sur(cnt, : ) = sur(cnt, : ) / 255 * 1.3;
            %sur(cnt, : ) = sur(cnt, : ) / 255 * (LGT / (sur(cnt, : ) * [0.299; 0.587; 0.114]));
        end
    end
    sur(sur > 1) = 1;
end