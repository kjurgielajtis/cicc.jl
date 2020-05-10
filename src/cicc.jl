module cicc

"Returns root of given function using secant method"
function my_secant(f, a, b, n)
    if f(a)*f(b) >= 0
        println("secant failed")
        return
    end
    
    a_temp = a
    b_temp = b
    for i = 1:n+1
        g = a_temp - f(a_temp)*(b_temp - a_temp)/(f(b_temp) -f(a_temp))
        f_g_temp = f(g)

        if f(a_temp)*f_g_temp < 0
            a_temp = a_temp
            b_temp = g
        elseif f(b_temp)*f_g_temp < 0
            a_temp = g
            b_temp = b_temp
        elseif f_g_temp == 0
            println("found solution")
            return g
        else
            println("secant fails")
            return
        end
    end
    return a_temp - f(a_temp)*(b_temp - a_temp)/(f(b_temp) - f(a_temp))
end

export my_secant

end # module
