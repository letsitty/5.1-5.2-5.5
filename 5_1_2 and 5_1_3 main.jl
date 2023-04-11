# Lake Etsitty, using his own code for Gauss-Legendre, as well as Driscoll and Braun's Algorithm
include("5_1_3.jl")
include("5_1_2.jl")
using BenchmarkTools

println("Driscoll and Braun")
for nodes = 4:2:40
    @time glrule(nodes)
end

println("Lake Etsitty")
for nodes = 4:2:40
    @time my_own_glrule(nodes)
end
