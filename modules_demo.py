import math
import random
import time

print("Generating results...")
time.sleep(1)

number = random.randint(1, 20)
root = math.sqrt(number)

print(f"Random Number: {number}")
print(f"Square Root: {root:.2f}")
