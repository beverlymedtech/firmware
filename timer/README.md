# Timer
Welcome to timer this project presents a method for determining the uncertainty of a calibrated High Speed Internal Oscillator frequency, when trimming the high speed internal oscillator on an 8-bit Microcontroller to compensate for differences between the calibrated microcontroller, and its immediate operating temperature.

## STM8S207 Nucleo-8
The STM8S207K8T6C Microcontroller has a number of timers within its core. The most critical one is the High Speed Internal Oscillator (HSI) which is a 16 MHz RC Oscillator. Within the Microcontroller Control Unit the RC Oscillator is referenced as timer 3 or TIM3.

## Example 0
**High Speed Internal Oscillator Trimming**
### Given
1. One source of uncertainty for the High Speed Oscillator is the discrete nature (8-bit) of the trim value. 0000 0001.
3. The second source of uncertainty is the High Speed Oscilator frequency itself. (accuracy of the RC Oscillator).
4. Calibration signal main. fcal. frequency = 50 Hz
accuracy dfcal of +- 1%.
2. Number of calibration signal periods L = 4
3. Desired Output frequency 16 MHz
4. High Speed Internal Oscilator frequency is a function of

### Find
High Speed Internal Oscillator Calibrated frequency

### Analysis
fhsim = (nhsi*fcal)/L

where nhsi = counted HSI pulses
fcal = calibration period
L = signal periods
