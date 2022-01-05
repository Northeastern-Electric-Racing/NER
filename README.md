View this project on [CADLAB.io](https://cadlab.io/project/23137/master/files). 

# NER
This is the GitHub repo for all code and schematics created for Northeastern's Electric Racing club.

- Teensy Code: Use Platformio (VS Code plugin) for building and uploading software
    - To install, follow the directions on [this page](https://docs.platformio.org/en/latest//integration/ide/vscode.html)
    - This involves installing VS Code and setting up the Platformio extension
    - CAN library: [FlexCAN_T4](https://github.com/tonton81/FlexCAN_T4)
- Arduino: Arduino code for electrical subsystems, mainly the CAN Network
    - Required CAN library: [Seeed Studio CAN BUS Shield](https://github.com/Seeed-Studio/CAN_BUS_Shield)
    - To install:
        1. Open the arduino IDE
        2. Go to Tools -> Manage Libraries...
        3. Search "CAN-BUS Shield" and install the associated library
- Schematics: Electrical schematics, created in KiCad, viewable online in CADlab.io or in the desktop client
- Project Manangement: This area has migrated to the [NER-PM-Dashboard repo](https://github.com/Northeastern-Electric-Racing/NER-PM-Dashboard) 
