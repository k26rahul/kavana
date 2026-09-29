def calculate_simple_interest(principal, rate, time):
    interest = (principal * rate * time) / 100
    return interest


print(calculate_simple_interest(1000, 5, 2))  # 100.0
print(calculate_simple_interest(5000, 7.5, 3))  # 1125.0
print(calculate_simple_interest(200, 10, 1))  # 20.0
