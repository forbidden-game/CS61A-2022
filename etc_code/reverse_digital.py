from math import log10
def reverse(n):
    """Returns N with the digits reversed.
    >>> reverse(123)
    321
    """
    if n < 10:
        return n
    else:
        return (n % 10) * (10 ** int(log10(n // 10) + 1)) + reverse(n // 10)