function ind = cub_ind(cor)
    global LEN;
    ind = round((cor(1) / LEN + 1) * 9 + (cor(2) / LEN + 1) * 3 + (cor(3) / LEN + 1) * 1 + 1);
end