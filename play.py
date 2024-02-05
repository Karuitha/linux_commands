def multiply_numbers(*numbers):
    product = 1
    for number in numbers:
        product *= number
    return product
    

print(multiply_numbers(4,5,6,7))