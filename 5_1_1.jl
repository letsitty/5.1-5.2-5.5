# This code is based off of the in-class code given by Professor Fitzgerald
# reworked to solve for a 3-point Polynomial, by Lake Etsitty
# Variable Stuff
using SymPy
@vars A B C D E F x x1 x2 x3 w1 w2 w3
# The Polynomial
f(x) = A*x^5 + B*x^4 + C*x^3 + D*x^2 + E*x^1 + F*x^0
# The Equation Setup
eq2 = (w1 * f(x1) + w2 * f(x2) + w3 * f(x3)) - integrate(f(x), (x, -1, 1))
eq2_set = [diff(eq2, c) for c in [A, B, C, D, E, F]]
# The Solving
sol2 = solve(eq2_set, [w2, x2, w1, x1, w3, x3], dict=true)[1]

