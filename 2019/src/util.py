# Util for the advent of code


def read_data(day: str, visitor):
    data = []
    with open("data/day_01.in") as f:
        data = f.readlines()
        data = [visitor(d) for d in data]
    return data
