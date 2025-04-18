i = 0
right = True
while True:
    if right == True and i < 5:
        i += 1
        print(i, right)
        if i == 5:
            right = False
    if right == False and i > 0:
        i -= 1
        print(i, right)
        if i == 0:
            right = True
