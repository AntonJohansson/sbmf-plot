using DelimitedFiles

function sample(g, d, n)
	dg = (1 + d)*g

	n0  = 8*g^3 / (9*pi^2*dg^2)
	mu0 = -dg * n0 / 2

	N(mu) = 2*sqrt(n0/dg) * (log((1+sqrt(mu/mu0))/(sqrt(1-mu/mu0))) - sqrt(mu/mu0))

	E(nn) = dg*nn^2 - (4*sqrt(2)/(3*pi))*(g*nn)^(3/2)

    print(n0, "\t")
    print(E(n0), "\n")

	return  E.(n)./n
end


n = 0:0.01:10
writedlm("out_exact", [n sample(0.5/100, -0.90, n) sample(0.5/100, -0.95, n) sample(0.5/100, -0.99, n) ])
