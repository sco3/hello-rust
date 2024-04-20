"""
This module provides test code.

Author: Sco3
Date: 2024-04-20
"""

from memory.unsafe import Pointer
import time

alias BUFLEN: Int = 17
alias BUFHALF: Int = BUFLEN // 2


fn _atol(str: StringRef, first: Int, last: Int) raises -> Int:
    """Parses the given string as a base-10 integer and returns that value.

    For example, `atol("19")` returns `19`. If the given string cannot be parsed
    as an integer value, an error is raised. For example, `atol("hi")` raises an
    error.

    Args:
        str: A string to be parsed as a base-10 integer.
        first: first char.
        last: last char.

    Returns:
        An integer value that represents the string, or otherwise raises.
    """
    if not str:
        raise Error("Empty String cannot be converted to integer.")
    var result = 0
    var is_negative: Bool = False
    var start = first
    if str[first] == "-":
        is_negative = True
        start = start + 1

    alias ord_0 = ord("0")
    alias ord_9 = ord("9")
    var buff = str._as_ptr()
    # var str_len = last - start
    for pos in range(start, last):
        var digit = int(buff[pos])
        if ord_0 <= digit <= ord_9:
            result += digit - ord_0
        else:
            raise Error("String is not convertible to integer.")
        if pos + 1 < last:
            var nextresult = result * 10
            if nextresult < result:
                raise Error("String expresses an integer too large to store in Int.")
            result = nextresult
    if is_negative:
        result = -result
    return result


fn toFloat64(inout str: StringRef) raises -> Float64:
    var hi: Int = _atol(str, 0, BUFHALF)
    var lo: Int = _atol(str, BUFHALF + 1, BUFLEN)
    var result: Float64 = hi + lo * 1e-8
    return result


fn main() raises:
    """
    Method to measure execution time.
    """
    var start: Int = time.now()
    var num: Float64 = 0.0
    var n = 10_000_000
    var seed: Int = 1
    var buf: Pointer[Int8] = Pointer[Int8].alloc(BUFLEN + 1)
    buf[BUFLEN] = 0
    buf[BUFHALF] = ord(".")
    var s: String = String(buf, BUFLEN + 1)
    var sb: StringRef = StringRef(buf, BUFLEN + 1)
    for _ in range(n):  # {
        for j in range(BUFLEN):  # {
            if j != 8:  # {
                seed = (((seed + 7) << 4) // 11) & 0xFFFFFF
                buf[j] = 0x30 + (seed % 10)
            # }
        # }
        num = toFloat64(sb)
    # }

    print("Random numbers parsed: ", n, " str: ", s, "num: ", num)
    print("Time: ", (time.now() - start) // 1000000, " ms")
