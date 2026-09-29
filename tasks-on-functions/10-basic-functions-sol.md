### Task 1: `celsius_to_fahrenheit(celsius)`

Convert `celsius` to Fahrenheit and return the result.

```python
def celsius_to_fahrenheit(celsius):
    return (celsius * 9 / 5) + 32

```

---

### Task 2: `is_even(number)`

Check if the given number is even.

```python
def is_even(number):
    return number % 2 == 0

```

---

### Task 3: `is_eligible_to_vote(age)`

Determine if a person is legally eligible to vote.

```python
def is_eligible_to_vote(age):
    return age >= 18

```

---

### Task 4: `calculate_simple_interest(principal, rate, time)`

Calculate and return the simple interest earned.

```python
def calculate_simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

```

---

### Task 5: `get_grade(score)`

Return the letter grade based on the score.

```python
def get_grade(score):
    if score >= 90:
        return "A"
    elif score >= 80:
        return "B"
    elif score >= 70:
        return "C"
    else:
        return "F"

```

---

### Task 6: `find_larger(a, b)`

Compare the two numbers and return the larger one.

```python
def find_larger(a, b):
    if a > b:
        return a
    else:
        return b

```

---

### Task 7: `seconds_to_minutes(seconds)`

Convert total seconds into complete minutes (ignoring leftover seconds).

```python
def seconds_to_minutes(seconds):
    return seconds // 60

```

---

### Task 8: `make_greeting(name)`

Create a personalized welcome message.

```python
def make_greeting(name):
    return f"Hello, {name}!"

```

---

### Task 9: `check_sign(number)`

Determine if a number is positive, negative, or zero.

```python
def check_sign(number):
    if number > 0:
        return "Positive"
    elif number < 0:
        return "Negative"
    else:
        return "Zero"

```

---

### Task 10: `is_multiple_of(number, divisor)`

Check if `number` is evenly divisible by `divisor`.

```python
def is_multiple_of(number, divisor):
    return number % divisor == 0

```
