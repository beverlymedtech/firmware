# Timer
Welcome to timer, this project presents a method for determining the uncertainty
of a calibrated High Speed Internal Oscillator frequency, when trimming the high
speed internal oscillator on an 8-bit Microcontroller. Inherent to the performance
analog circuitry, there are differences in the way that a microcontrollers Internal
timing features respond to changes in external temperature. For a microcontroller
operating a control system, this small timing uncertainty, however, small may
be undesirable. Especially as the frequency nears the MHz range.

To minimize the uncertainty of the onboard timer providing the Microcontroller with
its high frequency reference time, Microcontrollers utilize their power provide
pin to provide a stable lower frequency signal, that can be multiplied to the
desired microcontroller operating frequency.

# Oscillator
An oscillator is a clock. An analog one to be exact. A disciplined oscillator
is one which is able to maintain its frequency regardless of the
environmental conditions around it.

## RC Oscillator
The RC oscillator of this particular microcontroller is a circuit with a
resistor and capacitor designed to provide the microcontroller core (MCU) with a
regulated, and consistent timekeeper, so programs on the CPU or MCU are
consistent in time.


## STM8S207 Nucleo-8
The STM8S207K8T6C Microcontroller has a number of timers within its core.
The most critical one is the High Speed Internal Oscillator (HSI) which is a 16
MHz RC Oscillator. Within the Microcontroller Control Unit, the RC Oscillator is
referenced as timer 3 or TIM3.

## Example 0
**High Speed Internal Oscillator Trimming**
### Given 0.1
1. One source of uncertainty for the High Speed Oscillator is the discrete
nature (8-bit) of the trim value. 0000 0001.
3. The second source of uncertainty is the High Speed Oscillator frequency
itself. Accuracy of the RC Oscillator.
4. The calibration signal from TIM3 (timer 3) is designated ***main*** amongst
the other timers within the microcontroller because of its ability to trim the
timer calibration bits.

The calibration timed pulses will encapsulate either the beginning rise, or
rearward fall, of a calibration pulse. This is considered a baseline uncertainty
of +-1 that we have encapsulated all pulses entirely within the calibration
period.

***fcal*** is the calibration period

frequency = 50 Hz
the processed

accuracy dfcal of +- 1%.
2. Number of calibration signal periods L = 4
3. Desired Output frequency 16 MHz
4. High Speed Internal Oscilator frequency is a function of

### Find 0.2
Multiple methods to define the High Speed Internal Oscillator Calibrated frequency.

### Analysis
1. The calibration of the internal clock occurs over a number of High-Speed Oscillator pulsations (NHSI) which define a particular calibration period.

2. One way to estimate the clock frequency is to use a rough estimation of the reference oscillator signal over a specific calibration period, assuming a standard uncertainty value.

3. The timing pulses from the HSI Oscillator are shaped just like a trapezoid.
There is an uncertainty that when we take look at the chance that pre-defined period will incorporate part of the rise of the incoming signal, or fall off an outbound one.

`uNHSI = 1/sqrt(3)`


fhsim = (nhsi*fcal)/L

where nhsi = counted HSI pulses
fcal = calibration period
L = signal periods



















.
