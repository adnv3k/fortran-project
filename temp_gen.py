# Generates 365 random temperatures and saves them to a text file.

import random


# Function to generate random temperatures
def generate_random_temperatures(n, min_temp=-10.0, max_temp=40.0):
    temperatures = [round(random.uniform(min_temp, max_temp), 1) for _ in range(n)]
    return temperatures

# Generate 100 random temperatures
random_temperatures = generate_random_temperatures(365)

# Save the temperatures to a text document
with open("random_temperatures.txt", "w") as file:
    for temp in random_temperatures:
        file.write(f"{temp}\n")

print(
    "100 random temperatures have been generated and saved to random_temperatures.txt."
)