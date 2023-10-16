


Designing our own *retro console* from _scratch_ in verilog/fpga
------------------------------------------------------------------
*Will setup board cam for future streams*

### FPGA Hardware
Spartan 3an development board for now


## What are we doing *right now*?
# Early stream Setup
- [X] Cleanup from last stream
  - [X] Add git commits
  - [X] Check checklists
  - [X] Boomark, link, and close tabs






### Current steps
- [X] Install required proprietary xilinx software
- [X] Drag out old fpga hardware
- [X] Ensure board connection via usb->jtag boundary scan
- [o] Re-learn basic verilog
- [X] New test project
- [X] Wire up switch to led
  - [X] Combinational
  - [X] Synchronous
- [X] First Synthesize
- [X] Load board
- [X] Multiple switch->led bus
- [X] Synchronous assignment of registers

- [o] Try cascading counters to generate vga like signals
- [X] Look up vga signals
- [X] Choose a base resolution
  - [X] 640x480x60hz (25.125Mhz ideal, we'll try @ 25 even for simplicity)
  - [o] Inc Registers
    - [o] Horz position & sync
    - [o] Vert position & sync
    - [o] RGB values 4 bits each, 12 bit color 4096 total colors
- [ ] VGA

### Next steps
- [ ] Basic VGA Output
  - [X] 640x480x60hz (25.125Mhz ideal, we'll try @ 25 even for simplicity)
  - [*CURRENT*] Solid color @ resolution
- [ ] Check capture with vga->hdmi, mira & obs
- [ ] Pattern based on pixel position
- [ ] Pong
- [ ] Simple limited lines/vectors/shapes
- [ ] Tilemap system
- [ ] Sprite system
- [ ] Text system
- [ ] Simplified 2D "shader" process

- [ ] Custom controllers
- [ ] Classic retro controllers

### Misc TODO
- [ ] Find saleae logic analyzer
  - [ ] Install software and ensure works
- [ ] Reduce ise text size
  - Possible causes
    - LG4k being set as primary?
    - Qt4?
    - Java?
