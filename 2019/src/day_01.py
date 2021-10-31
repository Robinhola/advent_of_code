import math
import util


def fuel_for_module(mass):
    return max(math.floor(mass / 3) - 2, 0)


def total_fuel_for(mass):
    if mass <= 0:
        return 0
    fuel = fuel_for_module(mass)
    return fuel + total_fuel_for(fuel)


def sum_all_fuels(data, visitor):
    return sum(visitor(m) for m in data)


data = util.read_data("01", int)
print(sum_all_fuels(data, fuel_for_module))
print(sum_all_fuels(data, total_fuel_for))