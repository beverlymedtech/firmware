# Timer
Welcome to timer this project presents a method for determining the uncertainty of a calibrated High Speed Internal Oscillator frequency, when trimming the high speed internal oscillator on an 8-bit Microcontroller to compensate for differences between the calibrated microcontroller, and its immediate operating temperature.

## STM8S207 Nucleo-8
The STM8S207K8T6C Microcontroller has a number of timers, the most critical one being the High Speed Internal Oscillator (HSI) which in tern is an RC Oscillator.   This specifically TIM3 or timer 3 within the core.

## Example 0
### Given
1. Calibration signal main. fcal. frequency = 50 Hz
accuracy dfcal of +- 1%.
2. Number of calibration signal periods L = 4
3. Desired Output frequency 16 MHz
4. High Speed Internal Oscilator frequency is a function of

### Find
High Speed Internal Oscillator Calibrated frequency

### Analysis
fhsim = (nhsi*fcal)L

where nhsi = counted HSI pulses
fcal = calibration period
L = signal periods
