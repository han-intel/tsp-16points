function eva = evaluate(dist,tour)
eva=0;
for i=1:16
    j=i+1;
    if j>16
        j=1;
    end
    eva=eva+dist(tour(i),tour(j));
end
