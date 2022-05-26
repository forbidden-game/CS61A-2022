def hailstone(n, steps=0):
    """Print out the hailstone sequence starting at n, and return the number of elements in the sequence.
    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    >>> b = hailstone(1)
    1
    >>> b
    1
    """
    "*** YOUR CODE HERE ***"
    print(n)
    if n == 1:
        return steps + 1 #返回
    elif n % 2 == 0:
        return hailstone(n // 2, steps + 1)
    else:
        return hailstone(n * 3 + 1, steps + 1)

