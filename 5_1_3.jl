using LinearAlgebra
# Driscoll and Braun's Algorithm
function glrule(n)
    println("for n = ", n,", Driscoll and Braun")
    β = @. 0.5 / sqrt(1 - (2*(1:n-1))^(-2))
    T = diagm( -1 => β, 1 => β )
    λ, V = eigen(T)
    p = sortperm(λ)
    # nodes
    ξ = λ[p]
    # weights
    w = @. 2V[1, p]^2
    println("the nodes are: ", ξ)
    println("the weights are: ", w)
end

