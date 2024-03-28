# Fortran Temperature Statistics

This repository contains a simple Fortran program that analyzes a set of temperature data and calculates basic statistics such as the average, minimum, and maximum temperatures. The project was created to practice Fortran programming and demonstrate how it can be used for scientific data analysis.

## Files

- `get_temp_stats.f90`: The main Fortran source code file that reads temperature data from a file, calculates statistics, and outputs the results.
- `get_temp_stats.exe`: The compiled executable file generated from `get_temp_stats.f90`.
- `random_temperatures.txt`: A sample input file containing daily temperature readings (in Celsius) for a month.
- `temp_gen.py`: A Python script used to generate random temperature data for testing purposes.

## Getting Started

To run the temperature statistics program:

1. Make sure you have a Fortran compiler installed on your system (e.g., `gfortran`).
2. Clone this repository or download the source files.
3. Compile the Fortran source code using the following command:
   ```
   gfortran -o get_temp_stats get_temp_stats.f90
   ```
4. Prepare an input file with daily temperature readings (one reading per line). You can use the provided `random_temperatures.txt` file or create your own.
5. Run the compiled program, providing the input file name as a command-line argument:
   ```
   ./get_temp_stats random_temperatures.txt
   ```
6. The program will output the number of days, average, minimum, and maximum temperatures.

## Generating Random Temperature Data

If you want to generate random temperature data for testing purposes, you can use the provided `temp_gen.py` Python script. To run the script:

1. Make sure you have Python installed on your system.
2. Run the following command:
   ```
   python temp_gen.py
   ```
3. The script will generate a file named `random_temperatures.txt` with 31 random temperature readings between -10 and 40 degrees Celsius.

