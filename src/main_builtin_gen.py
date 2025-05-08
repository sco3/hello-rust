import time
import random


def gen_and_parse(n: int) -> None:
    start_time: float = time.time()  # Start the timer

    num: float = 0.0
    str_number: str

    for i in range(n):
        # Generate a random float number between 0 and 1
        random_float: float = random.uniform(0, 1)

        # Convert the float to a string with 8 decimal places
        str_number = f"{random_float:.8f}"

        # Parse the string back to a float
        num = float(str_number)

    print(f"Random numbers parsed: {n} str: {str_number} num: {num:17.8f}")

    end_time: float = time.time()  # End the timer
    time_spent: float = (end_time - start_time) * 1000  # Convert to milliseconds
    print(f"Time: {int(time_spent)} ms")


def main() -> None:
    n: int = 10000000  # Define number of iterations
    gen_and_parse(n)


if __name__ == "__main__":
    main()
