using cicc
using Test

@testset "secant.jl" begin
    x, f = 1, x -> x^3
    @test my_secant(f, -2, 2, 1000) == 0

    x, f = 1, x -> x + 1
    @test my_secant(f, -10, 10, 1000) == -1.0
end
