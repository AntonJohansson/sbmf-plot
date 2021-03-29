g = 0.5/100

dg = (1 - 0.99)*g

n0  = 8*g^3 / (9*pi^2*dg^2)
mu0 = -dg * n0 / 2

N(mu) = 2*sqrt(n0/dg) * (log((1+sqrt(mu/mu0))/(sqrt(1-mu/mu0))) - sqrt(mu/mu0))

E(n) = dg*n^2 - (4*sqrt(2)/(3*pi))*(g*n)^(3/2)
