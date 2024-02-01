# SRAM Project

This repository contains the SPICE simulation files for an SRAM (Static Random-Access Memory) design project. The SRAM design is implemented and tested using SPICE simulations to verify its functionality and performance.

## Project Overview

The SRAM design focuses on achieving efficient read/write operations while maintaining low power consumption and optimal area usage. The design is simulated using the HSPICE Windows application, a powerful SPICE simulation tool, to ensure accurate performance analysis.

### Measured Factors

- **Number of Transistors**: 4984
- **Area**: 9.968e-09 m²
- **Power Consumption**:
  - **Total (Absolute)**: 7.318786e-04 W
  - **Active (Negative)**: -7.318786e-04 W
- **Timing (Delay)**: 5.6640e-09 s

### Files Description

- `Main.sp`: Main simulation file orchestrating the SRAM simulation, including the clock, write operations, and enabling mechanisms.
- `Decoder.sp`: Contains the decoder implementation used in addressing the memory cells.
- `Cell.sp`: Describes the D latch (data latch) used as the memory cell in the SRAM design.
- `Row.sp`: Defines the row architecture, integrating multiple cells and facilitating row-wise operations.
- `Sram.sp`: Contains the SRAM cell definitions and configurations.
- `Gates.sp`: Defines the logic gates used within the SRAM design.

Additional files for various components and configurations as required by the design.

### Simulation Setup

The SRAM is tested under various conditions to ensure its reliability and performance. The main parameters include:

- **Clock Pulse**: 5V to 0V with a period of 20ns.
- **Write Operation**: Defined by a pulse from 5V to 0V, demonstrating the write timing and control.
- **Input/Output Setup**: Various `PWL` and `PULSE` sources to simulate the SRAM operations accurately.

## Running Simulations

To run the simulations with the HSPICE Windows application, follow these steps:

1. **Open the Application**: Start the HSPICE Windows application on your computer.
2. **Open the File**: Click on the "Open" button to browse and select the `Main.sp` file.
3. **Simulate**: Once the file is loaded, click on the "Simulate" button to begin the simulation process.
4. **AvanWaves**: After the simulation completes, use the "AvanWaves" button to launch the waveform viewer and analyze the simulation results.

## Analyzing Results

The AvanWaves waveform viewer allows you to examine the simulation results in detail. Look for key metrics such as power consumption, timing delays, and other performance indicators relevant to the SRAM's functionality. This step is crucial for evaluating the design's efficiency and reliability.

## Contribution

Contributions to this project are welcome. You can contribute by improving the design, adding more features, optimizing performance, or fixing bugs. Please submit a pull request with your changes for review.
