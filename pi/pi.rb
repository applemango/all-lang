n = 10000000
mc = 0

n.times do

    x = rand
    y = rand

    if x**2 + y**2 < 1
        mc += 1
    end
    
end

puts 4.0 * mc / n