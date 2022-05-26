def add_in_range(start, stop):
    """
    >>> add_in_range(3, 5)  # .Case 1
    12
    >>> add_in_range(1, 10)  # .Case 2
    55
    """
    "*** YOUR CODE HERE ***"

    sum_of_range = 0

    for i in range(start, stop + 1):
        sum_of_range += i
    return sum_of_range
