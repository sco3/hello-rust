#!/usr/bin/env julia


using Printf
using Dates

function run()
    start = now()
    str = collect("00000000.00000000")
    seed = 1
    num = 0.0
    n = 10000000
    fstr = ""
    for i = 1:n
        for j = 1:17
            if j != 9
                seed = div(((seed + 7) << 4), 11) & 0xffffff
                str[j] = '0' + (seed % 10)
            end
        end
        fstr = join(str)
        num = parse(Float64, fstr)
    end
    @printf "Random numbers parsed: %d str: %s num: %17.8f\n" n fstr num
    @printf "Time: %d ms\n" ((now() - start).value)
    num
end

run()
