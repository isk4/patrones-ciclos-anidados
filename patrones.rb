n = ARGV[0].to_i
result = ""

for i in 1..n
    for j in 1..i
        result += j.to_s
    end
    result += " "
end

puts result