FPATH = "data/01.txt"

function sol(fpath)
    f = open(fpath)
    vec_str = readlines(f)
    vec_int = [parse(Int, s) for s in vec_str]

    triplets = []
    for i in 3:length(vec_int)
        append!(triplets, sum(vec_int[i-2:i]))        
    end
    println(triplets)

    c = 0
    for i in 2:length(triplets)
        if triplets[i-1] < triplets[i]
            c += 1
        end
    end
    return c
end

# FPATH = "data/01-demo.txt"
FPATH = "data/01.txt"

@time ans = sol(FPATH)
println("sol: ", ans)