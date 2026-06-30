# 🎲 8-bit Pseudo-Random Dice Roller (Verilog HDL)

A modular Verilog HDL implementation of an **8-bit pseudo-random dice roller** using a Linear Feedback Shift Register (LFSR), a controller, and a seven-segment display decoder.

---

## ✨ Features

- ✅ 8-bit Linear Feedback Shift Register (LFSR)
- ✅ Pseudo-random number generation
- ✅ Dice values from **1 to 6**
- ✅ Invalid values (`000` and `111`) are automatically rejected
- ✅ Seven-segment display decoder
- ✅ Modular RTL design
- ✅ Testbench for functional verification
- ✅ Simulated using **Icarus Verilog** and **GTKWave**

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `lfsr_8_bit.v` | 8-bit Linear Feedback Shift Register |
| `controller.v` | Captures valid dice values on a roll signal |
| `seven_segment_display.v` | Converts dice values to seven-segment outputs |
| `mini_project.v` | Top-level module |
| `mini_project_tb.v` | Testbench |

---

## 🏗️ Design Architecture

```
              Clock
                │
                ▼
        +----------------+
        |   8-bit LFSR   |
        +-------+--------+
                │
          random[7:0]
                │
                ▼
        +----------------+
 Roll -->|  Controller   |
 Reset ->|               |
        +-------+--------+
                │
           dice[2:0]
                │
                ▼
     +------------------------+
     | Seven Segment Decoder  |
     +-----------+------------+
                 │
             seg[6:0]
```

---

## ⚙️ Working

1. The **8-bit LFSR** continuously generates pseudo-random values.
2. When the **roll** signal is asserted, the controller samples the current LFSR output.
3. Only values corresponding to **1–6** are accepted.
4. Invalid values (`000` and `111`) are ignored.
5. The accepted dice value is displayed using the seven-segment decoder.

---

## 🧪 Verification

The project was verified using a Verilog testbench.

The testbench checks:

- Reset functionality
- Continuous LFSR operation
- Multiple dice rolls
- Seven-segment display output
- Correct rejection of invalid values

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

---

## 🚀 Future Improvements

- Edge detection for one roll per button press
- Button debouncing
- FPGA implementation
- Dice rolling animation

---
## Waveforms
<img width="1918" height="1031" alt="gtkwave" src="https://github.com/user-attachments/assets/4f3a23e6-90b1-4d4c-8210-d412bc897a5a" />


## 👩‍💻 Author

**Komalpreet Kaur**
