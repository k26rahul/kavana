### Task 1: `calculate_total_bill(subtotal, discount_percent, tax_percent, tip_percent)`

Calculate the final payable bill by applying discount, tax, and tip.

- **Parameters:**
  - `subtotal` - initial bill amount before deductions or taxes (number).
  - `discount_percent` - percentage discount applied to the subtotal (number).
  - `tax_percent` - percentage sales tax applied to the discounted subtotal (number).
  - `tip_percent` - percentage tip applied to the discounted subtotal (number).
- **Logic / Business Rules:**
  1. Calculate the discount amount by multiplying `subtotal` by `discount_percent / 100`.
  2. Subtract discount amount from `subtotal` to get the discounted subtotal.
  3. Calculate the tax amount on the discounted subtotal using `tax_percent / 100`.
  4. Calculate the tip amount on the discounted subtotal using `tip_percent / 100`.
  5. Add discounted subtotal, tax amount, and tip amount together to get the total bill.
  6. Return the total bill rounded to 2 decimal places.
- **Returns:** A float.

**Example Calls:**

```python
calculate_total_bill(100.0, 10, 5, 15)  # 108.0
calculate_total_bill(50.0, 0, 8, 10)    # 59.0
calculate_total_bill(200.0, 25, 10, 15) # 187.5
```

---

### Task 2: `format_duration(total_seconds)`

Convert total seconds into a readable string of hours, minutes, and remaining seconds.

- **Parameter:** `total_seconds` - non-negative integer representing duration in seconds.
- **Logic / Business Rules:**
  1. Calculate total hours using integer division (`total_seconds // 3600`).
  2. Find remaining seconds after extracting hours using modulo (`total_seconds % 3600`).
  3. Calculate minutes from remaining seconds using integer division (`remaining_seconds // 60`).
  4. Find leftover seconds using modulo (`remaining_seconds % 60`).
  5. Format and return the result as a string: `"{hours}h {minutes}m {seconds}s"`.
- **Returns:** A string.

**Example Calls:**

```python
format_duration(3665)  # "1h 1m 5s"
format_duration(7200)  # "2h 0m 0s"
format_duration(45)    # "0h 0m 45s"
```

---

### Task 3: `calculate_bmi_report(weight_kg, height_m)`

Calculate Body Mass Index (BMI) and return a formatted summary report with category.

- **Parameters:**
  - `weight_kg` - body weight in kilograms (number).
  - `height_m` - height in meters (number).
- **Logic / Business Rules:**
  1. Calculate BMI using the formula: `weight_kg / (height_m ** 2)`.
  2. Round the BMI value to 1 decimal place.
  3. Determine the category based on the rounded BMI:
     - Under 18.5 -> `"Underweight"`
     - 18.5 up to 24.9 -> `"Normal weight"`
     - 25.0 up to 29.9 -> `"Overweight"`
     - 30.0 and above -> `"Obese"`
  4. Return a string in the format `"BMI: <score> - <category>"`.
- **Returns:** A string.

**Example Calls:**

```python
calculate_bmi_report(70, 1.75)  # "BMI: 22.9 - Normal weight"
calculate_bmi_report(50, 1.75)  # "BMI: 16.3 - Underweight"
calculate_bmi_report(95, 1.75)  # "BMI: 31.0 - Obese"
```

---

### Task 4: `calculate_shipping_cost(weight_kg, distance_km, is_express)`

Compute delivery charges based on parcel weight, distance, and delivery speed.

- **Parameters:**
  - `weight_kg` - weight of the package in kilograms (number).
  - `distance_km` - delivery distance in kilometers (number).
  - `is_express` - boolean indicating if express service is chosen.
- **Logic / Business Rules:**
  1. Set a standard base fee of 50.
  2. Calculate weight charge at 10 per kilogram (`weight_kg * 10`).
  3. Calculate distance charge at 5 for every full 50 km block (`(distance_km // 50) * 5`).
  4. Calculate the standard shipping cost by adding base fee, weight charge, and distance charge.
  5. If `is_express` is `True`, multiply standard shipping cost by 1.5. Otherwise, keep it as is.
  6. Return the final cost rounded to 2 decimal places.
- **Returns:** A float.

**Example Calls:**

```python
calculate_shipping_cost(2.5, 120, False)  # 85.0
calculate_shipping_cost(2.5, 120, True)   # 127.5
calculate_shipping_cost(10.0, 500, False) # 200.0
```

---

### Task 5: `calculate_parking_fee(hours_parked, vehicle_type)`

Calculate parking charges based on vehicle type and duration with a daily rate cap.

- **Parameters:**
  - `hours_parked` - total duration parked in hours (number).
  - `vehicle_type` - vehicle category: `"bike"`, `"car"`, or `"truck"` (string, case-insensitive).
- **Logic / Business Rules:**
  1. Normalize `vehicle_type` to lowercase.
  2. Determine hourly rate and daily cap based on vehicle type:
     - `"bike"`: 20 per hour, daily cap of 100
     - `"car"`: 40 per hour, daily cap of 250
     - `"truck"`: 80 per hour, daily cap of 500
  3. Calculate total hourly fee as `hours_parked * hourly_rate`.
  4. Compare hourly fee with daily cap. If hourly fee exceeds daily cap, apply daily cap instead.
  5. Return the final payable fee.
- **Returns:** A number.

**Example Calls:**

```python
calculate_parking_fee(3, "car")    # 120
calculate_parking_fee(8, "car")    # 250
calculate_parking_fee(2, "bike")   # 40
calculate_parking_fee(6, "bike")   # 100
calculate_parking_fee(10, "truck") # 500
```

---

### Task 6: `assess_password_strength(password)`

Evaluate a password against four security criteria and return a strength label.

- **Parameter:** `password` - password string to evaluate.
- **Logic / Business Rules:**
  1. Check four independent criteria:
     - Length is at least 8 characters.
     - Contains at least one uppercase letter.
     - Contains at least one lowercase letter.
     - Contains at least one numeric digit.
  2. Count how many criteria are satisfied (score from 0 to 4).
  3. Determine strength label based on score:
     - Score of 4 -> `"Strong"`
     - Score of 2 or 3 -> `"Medium"`
     - Score of 0 or 1 -> `"Weak"`
  4. Return the strength label.
- **Returns:** A string (`"Strong"`, `"Medium"`, or `"Weak"`).

**Example Calls:**

```python
assess_password_strength("Passw0rd")    # "Strong"
assess_password_strength("password123") # "Medium"
assess_password_strength("abc")         # "Weak"
```

---

### Task 7: `calculate_net_salary(basic_pay, allowance_percent, deduction_percent, tax_percent)`

Compute an employee's take-home pay after adding allowances and subtracting deductions and income tax.

- **Parameters:**
  - `basic_pay` - employee base salary (number).
  - `allowance_percent` - percentage of basic pay added as allowances (number).
  - `deduction_percent` - percentage of gross pay deducted for provident fund and insurance (number).
  - `tax_percent` - percentage tax applied to taxable income (number).
- **Logic / Business Rules:**
  1. Calculate allowance amount as `basic_pay * (allowance_percent / 100)`.
  2. Compute gross pay by adding allowance amount to `basic_pay`.
  3. Calculate deduction amount as `gross_pay * (deduction_percent / 100)`.
  4. Compute taxable income by subtracting deductions from gross pay.
  5. Calculate tax amount as `taxable_income * (tax_percent / 100)`.
  6. Compute net salary by subtracting tax amount from taxable income.
  7. Return net salary rounded to 2 decimal places.
- **Returns:** A float.

**Example Calls:**

```python
calculate_net_salary(50000, 20, 10, 10)  # 48600.0
calculate_net_salary(30000, 10, 5, 5)    # 29782.5
```

---

### Task 8: `split_bill_per_person(subtotal, tip_percent, num_people, service_fee)`

Calculate each person's equal share of a group bill including tip and fixed service fee.

- **Parameters:**
  - `subtotal` - bill amount before tip and fee (number).
  - `tip_percent` - percentage tip calculated on the subtotal (number).
  - `num_people` - number of people sharing the bill (positive integer).
  - `service_fee` - flat service fee added to the overall bill (number).
- **Logic / Business Rules:**
  1. Calculate tip amount as `subtotal * (tip_percent / 100)`.
  2. Compute grand total by adding `subtotal`, `tip_amount`, and `service_fee`.
  3. Divide grand total by `num_people` to determine individual share.
  4. Return individual share rounded to 2 decimal places.
- **Returns:** A float.

**Example Calls:**

```python
split_bill_per_person(120.0, 15, 4, 10.0)  # 37.0
split_bill_per_person(85.5, 10, 3, 5.0)    # 33.02
```

---

### Task 9: `calculate_course_grade(assignment_avg, midterm_score, final_score, attendance_pct)`

Compute final course score based on weighted evaluations and attendance, and assign a letter grade.

- **Parameters:**
  - `assignment_avg` - average assignment score out of 100 (number).
  - `midterm_score` - midterm test score out of 100 (number).
  - `final_score` - final exam score out of 100 (number).
  - `attendance_pct` - class attendance percentage from 0 to 100 (number).
- **Logic / Business Rules:**
  1. Calculate weighted components:
     - Assignments contribute 30% (`assignment_avg * 0.30`).
     - Midterm contributes 30% (`midterm_score * 0.30`).
     - Final exam contributes 40% (`final_score * 0.40`).
  2. Calculate base score by summing all three weighted components.
  3. If `attendance_pct` is strictly less than 75%, deduct 5 points as attendance penalty.
  4. Ensure final score does not fall below 0.
  5. Assign letter grade based on final score:
     - 90 and above -> `"A"`
     - 80 up to 89.9 -> `"B"`
     - 70 up to 79.9 -> `"C"`
     - 60 up to 69.9 -> `"D"`
     - Below 60 -> `"F"`
  6. Return the letter grade.
- **Returns:** A string (`"A"`, `"B"`, `"C"`, `"D"`, or `"F"`).

**Example Calls:**

```python
calculate_course_grade(95, 90, 92, 95)  # "A"
calculate_course_grade(80, 80, 80, 70)  # "C"
calculate_course_grade(50, 55, 50, 80)  # "F"
```

---

### Task 10: `calculate_electricity_bill(units_consumed)`

Calculate electricity charges using slab rates plus a mandatory fixed meter fee.

- **Parameter:** `units_consumed` - total power units consumed (non-negative number).
- **Logic / Business Rules:**
  1. Energy consumption is billed in tiered slabs:
     - First 100 units: 3.00 per unit.
     - Next 100 units (units 101 to 200): 4.50 per unit.
     - Units above 200: 6.00 per unit.
  2. Calculate charges for each slab depending on total units consumed:
     - If units are 100 or less, charge all units at 3.00.
     - If units are between 101 and 200, charge first 100 at 3.00 and remaining at 4.50.
     - If units exceed 200, charge first 100 at 3.00, next 100 at 4.50, and remaining at 6.00.
  3. Add a fixed meter charge of 50.00 to the calculated energy charges.
  4. Return the total bill rounded to 2 decimal places.
- **Returns:** A float.

**Example Calls:**

```python
calculate_electricity_bill(80)   # 290.0
calculate_electricity_bill(150)  # 575.0
calculate_electricity_bill(250)  # 1100.0
```
