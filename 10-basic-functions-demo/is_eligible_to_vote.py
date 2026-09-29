def is_eligible_to_vote(age):
    if age >= 18:
        return True
    else:
        return False


print(is_eligible_to_vote(20))  # True
print(is_eligible_to_vote(18))  # True
print(is_eligible_to_vote(15))  # False
