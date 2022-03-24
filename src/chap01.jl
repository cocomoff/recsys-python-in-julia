function problem01()
    Du = [
        5.0 3.0 1.0
        6.0 2.0 1.0
        4.0 1.0 1.0
        8.0 5.0 -1.0
        2.0 4.0 -1.0
        3.0 6.0 -1.0
        7.0 6.0 -1.0
        4.0 2.0 NaN
        5.0 1.0 NaN
        8.0 6.0 NaN
        3.0 4.0 NaN
        4.0 7.0 NaN
        4.0 4.0 NaN
    ]
    # println("Du = $Du")
    Du
end

function problem02()
    Du = problem01()
    println("Duの形状 = $(size(Du))")
end

function problem03()
    Du = problem01()
    println("Duの行数 = $(size(Du, 1))")
end

function problem04()
    Du = problem01()
    println("Duの列数 = $(size(Du, 2))")
end

function problem05()
    Du = problem01()
    println("Duの全要素数 = $(size(Du, 1) * size(Du, 2))")
    println("Duの全要素数 = $(length(Du))")
end

function problem06()
    Du = problem01()
    I = collect(1:size(Du, 1))
    println("I = $I")
    println("I = $(range(1, length=size(Du, 1)))")
end

function problem07()
    Du = problem01()
    x = Du[:, 1:end-1]
    println("x = $x")
    x
end

function problem08(; i=1)
    Du = problem01()
    ((i <= 0) || (i > size(Du, 1))) && return nothing
    xi = Du[i, 1:end-1]
    println("xi = $xi")
end

function problem09()
    Du = problem01()
    ru = Du[:, end]
    println("ru = $ru")
    ru
end

function problem10()
    ru = problem09()
    println("ruの形状 = $(size(ru))")
end

function problem11()
    ru = problem09()
    println("ruの全要素数 = $(length(ru))")
end

function problem12(; i=3, j=6)
    ru = problem09()

    (i >= j) && return nothing
    ((i <= 0) || (i > length(ru))) && return nothing
    ((i <= 0) || (i > length(ru))) && return nothing

    println("ru$(i)からru$(j)までの評価値 = $(ru[i:j-1])")
    ru[i:j-1]
end

function problem13()
    ru = problem09()
    println("ruの逆順 = $(ru[end:-1:1])")
end

function problem14(; i=1)
    ru = problem09()
    ((i <= 0) || (i > length(ru))) && return nothing
    println("ru$(i) = $(ru[i])")
end