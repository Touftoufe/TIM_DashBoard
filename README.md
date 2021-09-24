# TIM_DashBoard
TIM's new cars' dashboards

## Project Information

## Organization tree
 
 - hardware 
    - doc
        - BOM
        - appnotes
        - datasheets
        - errata
    - kicad
        - [inventhub git](https://inventhub.io/c/elprincipito/TIM_DashBoard/tree/default) (hardware versions management) 
        - project library
        - schematic
        - layout
    - meca
        - 3d models
        - gerber
- software
    - STM32CubeIDE project*  
- documentation
    - Block diagram
    - ICD (Interface control document)
    - User manual
    - Pinion diagram


## 'Requirements' specification

### Indispensable requirements
- See `actual` speed on screen
- Switch headlight on or off
- Signal turn (left, right, switch off)
- Wipe the windshield
- See break light status on screen
- Select wiper speed
- Select power level

### Optional requirements
- Select speed limit
- See set speed limit on screen
- Choose to drive forward or in reverse
- Turn car on/Off
- Configuration interface to choose between different modes

### Out of scope
- Klaxon


##  Progress status 
- [x] Organize the project
- [x] Have a clear idea of what to make
- [x] Test all hardware functions on prototype board
- [x] Correct the mistakes on prototype board 
- [x] Write and update Errata (/hardware/doc/errata.md)
- [x] Complete the specifications
- [ ] Translate the specifications into sequence diagram
- [ ] Start software
    - [ ] epaper screen control
    - [ ] servo motor control
    - [ ] speed limit input
    - [ ] menu navigation
    - [ ] *gpio* Lights control
    - [ ] *gpio* ...
- [ ] Document the [source code](/software) 
- [ ] Pass the tests
- [ ] write a User manual 
- [ ] Insatll new dashboard in the car 



## Contributors 
[Aouci Sofiane](https://www.linkedin.com/in/sofiane-aouci/) 

[Jacquet Prince](http://www.jacquet.live)

For Team : [TIM UPS INSA](http://www.timupsinsa.com) 
