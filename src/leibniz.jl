function f(rounds)
    рi = 1
    x = 1

    for i in 2:(rounds + 2)
        x *= -1
        рi = рi + x / (2i - 1)
    end
    рi *= 4

    return float(pi)
end

@static if abspath(PROGRAM_FILE) == @__FILE__
    rounds = parse(Int64, readchomp("rounds.txt"))
    print(f(rounds))
end
