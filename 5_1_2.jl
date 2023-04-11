# Lake Etsitty, Problem 5.1.2
# input n and returns the abscissae and weights of the associated GL rule

using Polynomials
using PolynomialRoots

function my_own_glrule(n)

    sq = n+1; p = zeros(sq, sq)
    p[1,1] = 1; p[2,1:2] = [0 1]

    println("for n = ", n,", Lake's Code")

    for i = 3:sq
        n2 = i-1
        p[i,1:i] = coeffs(Polynomial(p[n2,:])*Polynomial(p[2,:])*(2*(n2-1)+1)/((n2-1)+1) - (n2-1)*Polynomial(p[n2-1,:])/((n2)))'
    end

    poly = Polynomial(p[sq,1:sq])
    x_values = real(PolynomialRoots.roots(coeffs(poly)))
    println("the abscissae are: ", x_values)

    polyprime = derivative(poly)
    L = length(x_values)
    weights = zeros(1, L)

    for r = 1:L
        weights[1,r] = 2/((1-(x_values[r])^2)*(polyprime(x_values[r])^2))
    end

    println("the weights are: ", weights)
end





