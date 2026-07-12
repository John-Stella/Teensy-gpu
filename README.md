# Teensy-gpu
  A personal project to create a teensy General-Process-Unit with inspiration from tiny-gpu, veri-gpu, furygpu and my own graduate research in electrical engineering.  

## Modivation
  This project is a learning experience for me, based on computer architecture, digital design, and VLSI, focused on integrating modules to create a working system. since I was a kid, I always had an obsession with tear things apart just to understand how they work. To my horror, I was unable to see and understand the functions of pcb traces, electronic components, and silicon chips inside my first computer, a Dell Dimension 4550 sporting an Intel pentium 4, 512Mb of DDR, and Windows XP. This influsenced how I spent the next 15 years of my life, soaking up all the information I could about electronics and eventually pursuing my education in electrical engineering. I loved cutting-edge hardware, video games, and graphical performance. Therefore, it's was clear to me what I should do...
  
---
## Scope

"Learning gpu hardware is coming to the understanding that most of the difficulty and function is not physical." -me, circa 2025

With that off my chest, let's disccuss what can be done. A few people have already made RTL designs for basic cores and small systems. 

### Hardware
- Study rendering and other gpu accelerated pipelines.
  - Find algorithms that are common to these pipelines
  - Design HDL components to tackle these requirements
- Build a code Parser to generate kernels from the custom ISA.
  - The goal is to be flexible so new instructions can be added as the processing units change.
  - 
