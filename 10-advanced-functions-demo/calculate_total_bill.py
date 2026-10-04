def calculate_total_bill(subtotal, discount_percent, tax_percent, tip_percent):
    discount = subtotal * (discount_percent / 100)
    discounted_subtotal = subtotal - discount

    tax = discounted_subtotal * (tax_percent / 100)
    tip = discounted_subtotal * (tip_percent / 100)
    bill = discounted_subtotal + tax + tip

    # print(f"{subtotal=}")
    # print(f"  - {discount=}")
    # print(f"{discounted_subtotal=}")
    # print(f"  + {tax=:.2f}")
    # print(f"  + {tip=:.2f}")
    # print(f"{bill=}")

    return bill


print(calculate_total_bill(100.0, 10, 5, 15))  # 108.0
print(calculate_total_bill(50.0, 0, 8, 10))  # 59.0
print(calculate_total_bill(200.0, 25, 10, 15))  # 187.5
