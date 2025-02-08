# ST STM8S207 AN2822 High Speed Internal Oscillator Calibration
# Timer
Welcome to timer, this project presents a method for determining the uncertainty
of a calibrated High Speed Internal Oscillator frequency, when trimming the high
speed internal oscillator on an 8-bit Microcontroller. Inherent to the performance analog circuitry, there are differences in the way that a microcontroller's internal timing components respond to changes in external temperature or power supply voltage drift. For a microcontroller
operating a control system, this small timing uncertainty, however small, may
be undesirable. Especially as the resultant frequency is multiplied to the multiple MHz range.

To minimize the uncertainty of the onboard timer providing the Microcontroller with its high frequency reference time, Microcontrollers utilize their power provide pin to provide a stable lower frequency signal, that can be multiplied to the desired microcontroller operating frequency.

# Oscillator
An oscillator is a clock. An analog one to be exact. A disciplined oscillator
is one which is able to maintain its frequency regardless of the
environmental conditions around it.

## RC Oscillator
The RC oscillator of this particular microcontroller is a circuit with a
resistor and capacitor designed to provide the Microcontroller Core Unit (MCU) with a regulated, and consistent timekeeper, so programs on the Central Processing Unit CPU (Processor) or MCU (Microcontroller) exhibit
consistent time related behavior.

## STM8S207 Nucleo-8 Board
The STM8S207K8T6C Microcontroller has a number of timers within its core.
The most critical one is the High Speed Internal Oscillator (HSI) which is a 16
MHz RC Oscillator. Within the Microcontroller Control Unit, the RC Oscillator is
referenced as timer 3 or TIM3.

## STM8S High Speed Internal RC Oscillator
The STM8S207K8T6C can use a High Speed Internal RC Oscillator as its system clock source. The clock is calibrated for a temperature of 25 degrees Celsius and with a supply voltage of 5 Volts. For communication protocols the oscillator output frequency can be trimmed by the user. The user can fine tune the Oscillator using the CLK_HSITRIMR register. The value of the trim can be set from a value of -4 to +3 all as two complement binary integers. (100b to 011b). 

# Uncertainty of Calibrated HSI frequency
## Example
**High Speed Internal Oscillator Trimming**
### Given
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
4. High Speed Internal Oscillator frequency is a function of

### Find 0.2
Multiple methods to define the High Speed Internal Oscillator Calibrated frequency.

### Analysis
1. The calibration of the internal clock occurs over a number of High-Speed Oscillator pulsations (NHSI) which define a particular calibration period.

2. One way to estimate the clock frequency is to use a rough estimation of the reference oscillator signal over a specific calibration period, assuming a standard uncertainty value.

3. The timing pulses from the HSI Oscillator are shaped just like a trapezoid.
There is an uncertainty that when we take look at the chance that pre-defined period will incorporate part of the rise of the incoming signal, or fall off an outbound one.

`uNHSI = 1/sqrt(3)`

4. Another way to calculate the timer uncertainty is to take credit for all the nice signal processing between the analog power powering the Microcontroller (mains) and the high speed internal oscillator.

fhsim = (nhsi*fcal)/L

where nhsi = counted HSI pulses

fcal = calibration period

L = signal periods

# References
[1] [AN2822 STM8S High Speed Internal Oscillator Calibration](https://www.st.com/resource/en/application_note/an2822-stm8s-and-stm8a-high-speed-internal-oscillator-calibration-stmicroelectronics.pdf)
















.
