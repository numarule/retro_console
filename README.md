
Designing our own *retro console* from _scratch_ in verilog/fpga
------------------------------------------------------------------
### FPGA Hardware
Spartan 3an development board for now, also have a zedboard with a Zynq

## What are we doing *right now*?
### Conquer pong
- [ ] Paddle
  - [*CURRENT*] Define
    - Size - w, h
    - Position - x
    - Speed - s
    - Input_Move left, right
  - [ ] Display logic given size and position
  - [ ] Movement given inputs and speed
- [ ] Ball
  - [ ] Define
    - Size - r
    - Position - x, y
    - Direction?
    - Speed - s?
  - [ ] Display logic given size and position
  - [ ] Movement given inputs, direction and speed
- [ ] Score
  - [ ] Define
    - Reg x 2
  - [ ] Display
  - [ ] Logic
- [ ] Game state
  - [ ] Win/Lose conditions
  - [ ] Reset
- [ ] AI
  - [ ] Simple up/down
  - [ ] Moore?

### Next steps
- [X] Rewrite vga module to have active area in lowest portion of address
  - [X] Active Area - Front Porch - Sync - Back Porch
  - [X] Test with 640x480@60hz (vga)
  - [X] Test with 1280x800@60hz (native for our screen?)
- [o] Pattern based on pixel position
  - [o] Border
  - [ ] Test pattern?
- [ ] Pong
- [ ] Abstract timings and resolutions into predefined table of choices
- [ ] Check capture with vga->hdmi, mira & obs
- [ ] Simple limited lines/vectors/shapes
- [ ] Tilemap system
- [ ] Sprite system
- [ ] Text system
- [ ] Simplified 2D "shader" process

- [ ] Custom controllers
- [ ] Classic retro controllers

### Moar steps
- [X] Basic VGA Output
  - [X] Solid color @ resolution
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


### Done
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
- [X] Try cascading counters to generate vga like signals
- [X] Look up vga signals
- [X] Choose a base resolution
  - [X] 640x480x60hz (25.125Mhz ideal, we'll try @ 25 even for simplicity)
  - [X] Inc Registers
    - [X] Horz position & sync
    - [X] Vert position & sync
    - [X] RGB values 4 bits each, 12 bit color 4096 total colors
- [X] Basic VGA Output
  - [X] 640x480x60hz (25.125Mhz ideal, we'll try @ 25 even for simplicity)
  - [X] Solid color @ resolution
- [X] Separate vga into own module
  - [X] Parameters
    - [X] Resolution and freq
  - [X] Inputs
    - [X] Current pixel color
    - [X] Pixel clock
  - [X] Outputs
    - [X] Current pixel location
    - [X] Vsync
    - [X] Sync signals






### Misc TODO
- [X] Find saleae logic analyzer
  - [X] Install software and ensure works
- [ ] Reduce ise text size (possible?)
  - Possible causes
    - LG4k being set as primary?
    - Qt4?
    - Java?

### Random Notes
- percent diff = [|(a-b)|/(a+b)/2] × 100

### Random thoughts
- Vga module should just be for timing
  - Colors will always be passthrough
