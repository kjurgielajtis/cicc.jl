using cicc
using Test

@testset "secant.jl" begin
    x, f = 1, x -> x^3
    @test my_secant(f, -2, 2, 0.001) == 0

    x, f = 1, x -> x + 1
    @test my_secant(f, -10, 10, 0.001) == -1.0

    x, f = 1, x -> x + 10
    @test my_secant(f, -2, 2, 0.001) == nothing

    x, f = 1, x -> x + 10
    @test my_secant(f, -3, 7, 0.001) == nothing
end
