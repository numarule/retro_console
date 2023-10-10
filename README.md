


Designing our own *retro console* from _scratch_ in verilog/fpga
------------------------------------------------------------------
*Will setup board cam for future streams*

### FPGA Hardware
Spartan 3an development board for now


## What are we doing *right now*?
- Ensure our software/hardware setup is kosher
- Relearn enough verilog to produce a switch/led test
- Synthesize
- Load bitstream onto board
- Profit


### Current steps
- [X] Install required proprietary xilinx software
- [X] Drag out old fpga hardware
- [X] Ensure board connection via usb->jtag boundary scan
- [o] Re-learn basic verilog
- [X] New test project
- [X] Wire up switch to led
  - [X] Combinational
  - [*CURRENT*] Synchronous
- [X] First Synthesize
- [X] Load board

- [ ] Multiple switch->led bus
- [ ] Play with registers

### Next steps
- [ ] Basic VGA Output
  - [ ] Solid color @ resolution
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
- [ ] Reduce ise text size
  - Possible causes
    - LG4k being set as primary?
    - Qt4?
    - Java?
