
function sol(fpath)
    f = open(fpath)
    vec_str = readlines(f)
    vec_int = [parse(Int, s) for s in vec_str]
    c = 0
    for i in 2:length(vec_int)
        if vec_int[i-1] < vec_int[i]
            c += 1
        end
    end
    return c
end

FPATH = "data/01.txt"

@time ans = sol(FPATH)
println("sol: ", ans)
