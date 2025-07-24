
# HackMelody

**Systems 1 Final Project by Michael Affirim and Cadence Boyce**

---

## Overview

HackMelody is a program written in Hack Assembly that allows users to compose a melody using a piano roll interface displayed on the screen. The program captures keyboard input for notes, generates corresponding audio data in RAM, and enables exporting this data as a WAV file playable on modern computers.

---

## Features

- **Piano Roll Input:** Type in notes by their letter name; visual feedback is provided on a piano roll.
- **Audio Generation:** Produces 4 seconds of mono, 8-bit PCM audio at an 8000 Hz sample rate (telephone quality).
- **WAV Export:** Audio data is formatted with a standard WAV header for compatibility with audio software.
- **Square Wave Synthesis:** Each note is generated as a square wave pattern, with amplitude and frequency determined by the note.
- **Memory-Efficient:** Uses 16K of Hack RAM, with 16000 registers for audio and 384 for program logic and header.

---

## Note Mapping

| Key | Note  | Frequency (Hz) | Samples/Cycle | Amplitude Pattern |
|-----|-------|----------------|---------------|-------------------|
| A   | A4    | 440            | 18            | 9 high, 9 low     |
| B   | B4    | ~494           | 16            | 8 high, 8 low     |
| C   | C#5   | ~554           | 14            | 7 high, 7 low     |
| D   | D5    | ~587           | 13            | 7 high, 6 low     |
| E   | E5    | ~659           | 12            | 6 high, 6 low     |
| F   | F#5   | ~740           | 11            | 6 high, 5 low     |
| G   | G#5   | ~831           | 10            | 5 high, 5 low     |
| H   | A5    | 880            | 9             | 5 high, 4 low     |
| R   | Rest  | -              | -             | all low (0)       |
| X   | Backspace | -          | -             | -                 |

- **Amplitude**: The loudness of the sound, set as a variable in the code for easy debugging.
- **Pattern**: Each note is a repeating pattern of high (amplitude) and low (0) values, forming a square wave.

---

## Technical Details

- **Memory Layout:**
  - 16K RAM (16384 registers)
  - 16000 registers for audio data (4 seconds @ 8000 Hz, 8-bit mono)
  - 384 registers for header and program logic
- **WAV Header:**
  - 44 bytes (22 registers) at the start of the audio data
  - Follows standard WAV format ([reference](http://soundfile.sapp.org/doc/WaveFormat/))
- **Timing:**
  - 120 BPM (2 beats/sec)
  - 4000 samples per beat
  - 16th notes: 1000 samples each (500 registers)
  - 32 notes total
- **Note Writing:**
  - Each note is written as a pattern of amplitude and zero values, repeated to fill 1000 samples (500 registers)
  - After writing a note, the starting address is updated for the next note

---

## Memory Allocation Table

| Address Range | Purpose         |
|--------------|-----------------|
| 0 - 15       | R0-R15          |
| 16 - 250     | Variables       |
| 251 - 272    | WAV Header      |
| 273 - 773    | Note 1          |
| 774 - 1274   | Note 2          |
| ...          | ...             |
| 15804-16304  | Note 32         |

---

## How to Export and Play Your Melody

1. **Complete your melody and stop the program.**
2. **Set the RAM view to binary in your emulator.**
3. **Copy all RAM contents:**
   - Click on the RAM, press Cmd+A to select all, then copy.
4. **Paste into a text editor:**
   - Edit to keep only registers 251-16304.
   - Remove register numbers and whitespace, leaving only the binary data.
5. **Save as a WAV file:**
   - Save the binary data to a file with a `.wav` extension.
6. **Play the file:**
   - Open in a compatible audio player (e.g., Audacity).
   - **Warning:** Set your computer volume very low to avoid damaging your ears or speakers!

---

## Example: Square Wave Pattern for A4 (440 Hz)

```
1111 1111 1111 1111
1111 1111 1111 1111
1111 1111 1111 1111
1111 1111 1111 1111
1111 1111 0000 0000
0000 0000 0000 0000
0000 0000 0000 0000
0000 0000 0000 0000
0000 0000 0000 0000
```

---

## Planning Materials

- Mockup sketch
- Planning spreadsheet: **HackMelody planning**

---

## Authors

- Michael Affirim
- Cadence Boyce 