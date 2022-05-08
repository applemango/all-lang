import random

n = 10000000
mc = 0

for i in range(n):
    x = random.random()
    y = random.random()
    
    if x**2 + y**2 < 1:
        mc += 1

pi = 4 * mc / n

print(pi)