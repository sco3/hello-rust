import time

start = time.time()
num = 0.0
str = list("00000000.00000000");
n = 10000000
seed = int(1)
for i in range (n): 
    for j in range (17):
        if j == 8:
            str[j] = '.'
        else:
            seed = int(((seed + 7) << 4) / 11) & 0xffffff 
            str[j] = chr(0x30 + (seed % 10))
    num = float("".join(str));        
print("")
print("Random numbers parsed: %d str: %s num: %17.8f" % (n, "".join(str), num))
print('Time: %d ms' % ((time.time() - start) * 1000))

