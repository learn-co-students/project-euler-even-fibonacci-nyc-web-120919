# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    num = []
    val = 0
    first = 0
    second = 1
    while val < limit do
        val = first + second
        if val > limit
            break
        elsif val % 2 == 0
            num.push(val)
        end
        first = second
        second = val
    end
    num.reduce{|sum, n| sum + n}
end
