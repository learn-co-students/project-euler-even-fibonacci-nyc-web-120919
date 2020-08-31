# Implement your object-oriented solution here!
class EvenFibonacci
    attr_accessor :sum
    def initialize(limit)
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
        @sum = num.reduce{|sum, n| sum + n}
    end
end