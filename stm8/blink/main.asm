; Example STM8 Assembly Program
; Toggles an LED connected to Port B pin 5

        .ORG  0x8000          ; Start of Flash memory
        .SECTION .text        ; Code section

        JP  Main              ; Jump to main program

; Define vector table (Reset vector at 0x8000)
        .ORG 0x8000
        DCW  Reset            ; Reset vector points to our Reset handler

; Reset handler
Reset:
        LD   SP, #0x9FFF      ; Initialize stack pointer (adjust as needed)

Main:
        ; Configure Port B pin 5 as output
        BCPL 0x5005, #0x20    ; Clear bit 5 of Port B direction register
        BSET 0x5005, #0x20    ; Set bit 5 (PB5 as output)

Loop:
        BTG  0x5005, #0x20    ; Toggle PB5
        CALL Delay            ; Call delay subroutine
        JP   Loop             ; Infinite loop

; Simple software delay
Delay:
        LD   A, #0xFF         ; Load max value into A
Delay1:
        LD   B, #0xFF         ; Load max value into B
Delay2:
        DEC  B                ; Decrement B
        JRNE Delay2           ; Loop until B == 0
        DEC  A                ; Decrement A
        JRNE Delay1           ; Loop until A == 0
        RET                   ; Return from subroutine

        .END
