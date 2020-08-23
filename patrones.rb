n = ARGV[0].to_i

def letra_o(n)
    n.times do |i|
        if i == 0 || i == (n - 1)
            puts "*" * n
        else
            puts "*" + " " * (n - 2) + "*"
        end
    end
end

def letra_i(n)
    if n <= 2
        n.times do
            puts "*"
        end
    else
        n.times do |i|
            if i == 0 || i == (n - 1)
            puts "*" * n
            else
                if n.odd?
                    puts " " * (n / 2) + "*" + " " * (n / 2)
                else
                    puts " " * (n / 2 - 1) + "**" + " " * (n / 2 - 1)
                end
            end
        end
    end
end

def letra_z(n)
    j = (n - 2)
    n.times do |i|
        if i == 0 || i == (n - 1)
            puts "*" * n
        else
            puts " " * j + "*"
            j -= 1
        end
    end
end

def letra_x(n)
    i = 0
    j = n - 1
    n.times do
        line = ""
        n.times do |k|
            if k == i || k == j
                line += "*"
            else
                line += " "
            end
        end
        i += 1
        j -= 1
        puts line
    end
end

def numero_cero(n)
    j = 1
    n.times do |i|
        if i == 0 || i == (n - 1)
            puts "*" * n
        else
            line = ""
            n.times do |k|
                if k == j || k == 0 || k == (n - 1)
                    line += "*"
                else
                    line += " "
                end
            end
            j += 1
            puts line
        end
    end
end

# Lámpara
def navidad(n)
    if n < 2
        n.times {puts "*"}
    else
        n += 1
        space_num = n - 3
        char_num = 1
        line = " " * space_num + "*"
        puts line
        while space_num != 0 do
            space_num -= 1
            char_num += 2
            line = " " * space_num
            char_num.times do |j|
                j % 2 == 0 ? line += "*" : line += " "
            end
            puts line
        end
        space_num = n - 3
        line = " " * space_num + "*"
        for i in 0...2
            puts line
        end
        char_num = n - 1
        space_num = space_num / 2
        line = " " * space_num
        char_num.times do |k|
            k % 2 == 0 ? line += "*" : line += " "
        end
        puts line
    end
end

navidad(n)