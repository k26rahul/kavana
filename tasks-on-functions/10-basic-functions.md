### Task 1: `celsius_to_fahrenheit(celsius)`

Convert `celsius` to Fahrenheit and return the result.

- **Parameter:** `celsius` — a number representing temperature in Celsius.
- **Logic / Formula:** Multiply `celsius` by `9/5` (or `1.8`), then add `32`.
- **Returns:** A number.

**Example Calls:**

```python
celsius_to_fahrenheit(0)    # 32.0
celsius_to_fahrenheit(100)  # 212.0
celsius_to_fahrenheit(25)   # 77.0
```

**Sample Solution:**

```python
def celsius_to_fahrenheit(celsius):
    fahrenheit = (celsius * 9 / 5) + 32
    return fahrenheit

```

---

### Task 2: `is_even(number)`

Check if the given number is even.

- **Parameter:** `number` — an integer.
- **Logic / Formula:** Use the modulo operator (`%`). If `number % 2 == 0`, it is even.
- **Returns:** A boolean (`True` if even, `False` if odd).

**Example Calls:**

```python
is_even(4)  # True
is_even(7)  # False
is_even(0)  # True
```

---

### Task 3: `is_eligible_to_vote(age)`

Determine if a person is legally eligible to vote.

- **Parameter:** `age` — an integer representing a person's age.
- **Logic / Formula:** Check if `age` is greater than or equal to `18`.
- **Returns:** A boolean (`True` if 18 or older, `False` otherwise).

**Example Calls:**

```python
is_eligible_to_vote(20)  # True
is_eligible_to_vote(18)  # True
is_eligible_to_vote(15)  # False
```

---

### Task 4: `calculate_simple_interest(principal, rate, time)`

Calculate and return the simple interest earned.

- **Parameters:**
  - `principal` — starting amount of money (number).
  - `rate` — annual interest rate percentage (number).
  - `time` — duration in years (number).
- **Logic / Formula:** `(principal * rate * time) / 100`
- **Returns:** A number.

**Example Calls:**

```python
calculate_simple_interest(1000, 5, 2)    # 100.0
calculate_simple_interest(5000, 7.5, 3)  # 1125.0
calculate_simple_interest(200, 10, 1)    # 20.0
```

---

### Task 5: `get_grade(score)`

Return the letter grade based on the score.

- **Parameter:** `score` — an integer from 0 to 100 representing marks.
- **Logic / Formula:** Use `if`, `elif`, and `else`:
  - 90 and above -> `"A"`
  - 80 to 89 -> `"B"`
  - 70 to 79 -> `"C"`
  - Below 70 -> `"F"`
- **Returns:** A string (`"A"`, `"B"`, `"C"`, or `"F"`).

**Example Calls:**

```python
get_grade(95)  # "A"
get_grade(82)  # "B"
get_grade(64)  # "F"
```

---

### Task 6: `find_larger(a, b)`

Compare the two numbers and return the larger one.

- **Parameters:** `a`, `b` — two numbers.
- **Logic / Formula:** Check if `a > b`. If so, return `a`; otherwise, return `b`.
- **Returns:** A number.

**Example Calls:**

```python
find_larger(10, 25)  # 25
find_larger(42, -5)  # 42
find_larger(7, 7)    # 7
```

---

### Task 7: `seconds_to_minutes(seconds)`

Convert total seconds into complete minutes (ignoring leftover seconds).

- **Parameter:** `seconds` — an integer representing total seconds.
- **Logic / Formula:** Use integer division (`//`) by 60: `seconds // 60`.
- **Returns:** An integer.

**Example Calls:**

```python
seconds_to_minutes(120)  # 2
seconds_to_minutes(135)  # 2
seconds_to_minutes(45)   # 0
```

---

### Task 8: `make_greeting(name)`

Create a personalized welcome message.

- **Parameter:** `name` — a string representing a person's name.
- **Logic / Formula:** Combine strings using concatenation (`+`) or an f-string to form `"Hello, " + name + "!"`.
- **Returns:** A string.

**Example Calls:**

```python
make_greeting("Alice")  # "Hello, Alice!"
make_greeting("Bob")    # "Hello, Bob!"
make_greeting("Pooja")  # "Hello, Pooja!"
```

---

### Task 9: `check_sign(number)`

Determine if a number is positive, negative, or zero.

- **Parameter:** `number` — any integer or float.
- **Logic / Formula:** Use conditional checks:
  - If greater than 0 -> `"Positive"`
  - If less than 0 -> `"Negative"`
  - If equal to 0 -> `"Zero"`
- **Returns:** A string (`"Positive"`, `"Negative"`, or `"Zero"`).

**Example Calls:**

```python
check_sign(14)  # "Positive"
check_sign(-8)  # "Negative"
check_sign(0)   # "Zero"
```

---

### Task 10: `is_multiple_of(number, divisor)`

Check if `number` is evenly divisible by `divisor`.

- **Parameters:**
  - `number` — an integer to check.
  - `divisor` — the integer to divide by.
- **Logic / Formula:** Use the modulo operator: if `number % divisor == 0`, it is a multiple.
- **Returns:** A boolean (`True` or `False`).

**Example Calls:**

```python
is_multiple_of(15, 5)   # True
is_multiple_of(14, 3)   # False
is_multiple_of(20, 10)  # True
```
