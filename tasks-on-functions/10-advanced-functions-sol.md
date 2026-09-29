### Task 1: `calculate_total_bill(subtotal, discount_percent, tax_percent, tip_percent)`

Calculate the final payable bill by applying discount, tax, and tip.

```python
def calculate_total_bill(subtotal, discount_percent, tax_percent, tip_percent):
    discount_amount = subtotal * (discount_percent / 100)
    discounted_subtotal = subtotal - discount_amount
    tax_amount = discounted_subtotal * (tax_percent / 100)
    tip_amount = discounted_subtotal * (tip_percent / 100)
    total_bill = discounted_subtotal + tax_amount + tip_amount
    return round(total_bill, 2)

```

---

### Task 2: `format_duration(total_seconds)`

Convert total seconds into a readable string of hours, minutes, and remaining seconds.

```python
def format_duration(total_seconds):
    hours = total_seconds // 3600
    remaining_seconds = total_seconds % 3600
    minutes = remaining_seconds // 60
    seconds = remaining_seconds % 60
    return f"{hours}h {minutes}m {seconds}s"

```

---

### Task 3: `calculate_bmi_report(weight_kg, height_m)`

Calculate Body Mass Index (BMI) and return a formatted summary report with category.

```python
def calculate_bmi_report(weight_kg, height_m):
    bmi = round(weight_kg / (height_m ** 2), 1)
    if bmi < 18.5:
        category = "Underweight"
    elif bmi <= 24.9:
        category = "Normal weight"
    elif bmi <= 29.9:
        category = "Overweight"
    else:
        category = "Obese"
    return f"BMI: {bmi} - {category}"

```

---

### Task 4: `calculate_shipping_cost(weight_kg, distance_km, is_express)`

Compute delivery charges based on parcel weight, distance, and delivery speed.

```python
def calculate_shipping_cost(weight_kg, distance_km, is_express):
    base_fee = 50.0
    weight_charge = weight_kg * 10.0
    distance_charge = (distance_km // 50) * 5.0
    standard_cost = base_fee + weight_charge + distance_charge
    express_multiplier = 1.5 if is_express else 1.0
    total_cost = standard_cost * express_multiplier
    return round(total_cost, 2)

```

---

### Task 5: `calculate_parking_fee(hours_parked, vehicle_type)`

Calculate parking charges based on vehicle type and duration with a daily rate cap.

```python
def calculate_parking_fee(hours_parked, vehicle_type):
    normalized_type = vehicle_type.lower()
    if normalized_type == "bike":
        hourly_rate = 20
        daily_cap = 100
    elif normalized_type == "car":
        hourly_rate = 40
        daily_cap = 250
    elif normalized_type == "truck":
        hourly_rate = 80
        daily_cap = 500
    else:
        return 0

    total_hourly_fee = hours_parked * hourly_rate
    return min(total_hourly_fee, daily_cap)

```

---

### Task 6: `assess_password_strength(password)`

Evaluate a password against four security criteria and return a strength label.

```python
def assess_password_strength(password):
    has_min_length = len(password) >= 8
    has_uppercase = any(char.isupper() for char in password)
    has_lowercase = any(char.islower() for char in password)
    has_digit = any(char.isdigit() for char in password)

    score = sum([has_min_length, has_uppercase, has_lowercase, has_digit])

    if score == 4:
        return "Strong"
    elif score >= 2:
        return "Medium"
    else:
        return "Weak"

```

---

### Task 7: `calculate_net_salary(basic_pay, allowance_percent, deduction_percent, tax_percent)`

Compute an employee's take-home pay after adding allowances and subtracting deductions and income tax.

```python
def calculate_net_salary(basic_pay, allowance_percent, deduction_percent, tax_percent):
    allowance_amount = basic_pay * (allowance_percent / 100)
    gross_pay = basic_pay + allowance_amount
    deduction_amount = gross_pay * (deduction_percent / 100)
    taxable_income = gross_pay - deduction_amount
    tax_amount = taxable_income * (tax_percent / 100)
    net_salary = taxable_income - tax_amount
    return round(net_salary, 2)

```

---

### Task 8: `split_bill_per_person(subtotal, tip_percent, num_people, service_fee)`

Calculate each person's equal share of a group bill including tip and fixed service fee.

```python
def split_bill_per_person(subtotal, tip_percent, num_people, service_fee):
    tip_amount = subtotal * (tip_percent / 100)
    grand_total = subtotal + tip_amount + service_fee
    share = grand_total / num_people
    return round(share, 2)

```

---

### Task 9: `calculate_course_grade(assignment_avg, midterm_score, final_score, attendance_pct)`

Compute final course score based on weighted evaluations and attendance, and assign a letter grade.

```python
def calculate_course_grade(assignment_avg, midterm_score, final_score, attendance_pct):
    weighted_assignments = assignment_avg * 0.30
    weighted_midterm = midterm_score * 0.30
    weighted_final = final_score * 0.40
    base_score = weighted_assignments + weighted_midterm + weighted_final

    penalty = 5 if attendance_pct < 75 else 0
    final_score_val = max(0.0, base_score - penalty)

    if final_score_val >= 90:
        return "A"
    elif final_score_val >= 80:
        return "B"
    elif final_score_val >= 70:
        return "C"
    elif final_score_val >= 60:
        return "D"
    else:
        return "F"

```

---

### Task 10: `calculate_electricity_bill(units_consumed)`

Calculate electricity charges using slab rates plus a mandatory fixed meter fee.

```python
def calculate_electricity_bill(units_consumed):
    if units_consumed <= 100:
        energy_charges = units_consumed * 3.0
    elif units_consumed <= 200:
        slab1 = 100 * 3.0
        slab2 = (units_consumed - 100) * 4.5
        energy_charges = slab1 + slab2
    else:
        slab1 = 100 * 3.0
        slab2 = 100 * 4.5
        slab3 = (units_consumed - 200) * 6.0
        energy_charges = slab1 + slab2 + slab3

    fixed_meter_fee = 50.0
    total_bill = energy_charges + fixed_meter_fee
    return round(total_bill, 2)

```
