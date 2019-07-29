
function [tour,eva] = hill_climb(city)
t=0;
len=length(city);
dist=squareform(pdist(city));
tour=randperm(len);
eva = evaluate(dist,tour);
while (t<100)
    t=t+1;
    tourIterate = tour;
    for i = 1:len
        tourClimb = tourIterate;
        for j=i+1:16
            c = tourClimb(i);
            tourClimb(i)= tourClimb(j);
            tourClimb(j)=c;
            evaClimb=evaluate(dist,tourClimb);
            if evaClimb<eva
                tour = tourClimb;
                eva = evaClimb;
            end
        end
    end
end

