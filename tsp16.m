p1=[38.24 20.42];
p2=[39.57 26.15];
p3=[40.56 25.32];
p4=[36.26 23.12];
p5=[33.48 10.54];
p6=[37.56 12.19];
p7=[38.42 13.11];
p8=[37.52 20.44];
p9=[41.23 9.10];
p10=[41.17 13.05];
p11=[36.08 -5.21];
p12=[38.47 15.13];
p13=[38.15 15.35];
p14=[37.51 15.17];
p15=[35.49 14.32];
p16=[39.36 19.56];
n = [p1;p2;p3;p4;p5;p6;p7;p8;p9;p10;p11;p12;p13;p14;p15;p16];
d = squareform(pdist(n));
[tour_climb,eva_climb]=hill_climb(n);
[tour_stochastic_climb,eva_stochastic_climb]=stochastic_hill_climb(n);
[tour_ox,eva_ox]=evolution_path_ox(n);
[tour_annealing,eva_annealing]=stimulated_annealing(n);


