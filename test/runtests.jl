using cicc
using Test

@testset "cicc.jl" begin
    @test example_func(2) == 4
    @test example_func(-2) == 4
end
