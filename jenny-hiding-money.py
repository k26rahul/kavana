matrix = [
    ["😱", "😂", "😒"],  # face emojis
    ["🎈", "🎉", "🎁"],  # party emojis
    ["🚨", "💀", "🔖"],  # misc emojis
]

row_num = int(input("enter row num: "))
col_num = int(input("enter col num: "))

matrix[row_num][col_num] = "MY SECRET"

print(matrix[0])
print(matrix[1])
print(matrix[2])
