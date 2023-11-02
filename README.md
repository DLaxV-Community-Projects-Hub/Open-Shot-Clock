![theme](https://github.com/DLaxV-Community-Projects-Hub/Open-Shot-Clock/blob/assets/assets/theme.pptx.svg)


# Open Shot Clock

Open Shot Clock is an Open Source and DIY Project aiming to minimize the barriers of entry for shot-clock-aided sports like Boxlacrosse and Sixes and maximizing the pure sports experience to an affordable price.

## Details

- 10" super bright LED digits (in color of your choice)
- indoor and outdoor usage
    - impact and water resistant portable design
    - LED brightness adjustable to your needs
- wireless and cable connection
- 12V input supply (portable battery or mains operation by AC-DC power supply)
- handheld controller
- wifi connection to smartphone
    - control option
    - settings change
    - firmware updates
- external horn for each display
- tripod stands ~2 meter height
- tested under competition conditions

The price tag is around 1000€ for materials and accessories. Depending on which design and battery options you choose, it might cost more.


For more information have a look at our [wiki](https://github.com/DLaxV-Community-Projects-Hub/Open-Shot-Clock/wiki/Open-Shot-Clock-Wiki) or this [blog](https://devdrik.de/blog/) made by [@devdrik](https://github.com/devdrik).

## The Open Shot Clock in Action

To see the Open Shot Clock in action check out the following recordings of Lacrosse high lights in Germany:

- [Men´s European Box Lacrosse Championship 2022 - Final: England vs. Germany](https://sportdeutschland.tv/germanylacrosse/european-box-lacrosse-championship-final-england-vs-germany) (face off at 0:07:20)
- [Women´s German Indoor Championchip 2023 - Final: HLC Rot-Weiss München vs. HTHC Hamburg A](https://sportdeutschland.tv/germanylacrosse/deutsche-indoor-lacrosse-meisterschaft-2023-finale) (draw at 0:07:35)
- [Men´s German Box Lacrosse Championchip 2023- Final: SG Süd vs. SC Frankfurt 1880](https://sportdeutschland.tv/germanylacrosse/deutsche-box-lacrosse-meisterschaft-2023-finale) (face off at 0:10:15)
- [Women´s German Indoor Championchip 2022 - Final: HLC Rot-Weiss München vs. HTHC Hamburg A](https://sportdeutschland.tv/germanylacrosse/finale-lacrosse-damen-indoor-meisterschaft-2022) (draw at 0:09:20)
- [Men´s German Box Lacrosse Championchip 2022- Final: Spreewölfe Berlin vs. KKHT SW Köln](https://sportdeutschland.tv/germanylacrosse/deutsche-meisterschaften-box-lacrosse-2022-spreewoelfe-berlin-vs-kkht-sw-koeln) (starting at Part 2)

## What´s Included Here

- Design Documentation for Open Shot Clock Displays and Controller
    - CAD and PCB designs
    - 3d printing files
    - DIY Building Instructions Manual (german)
    - BOM for Displays, Controller and accessories (german)
    - User Manual (german)
    - Source Code to run Displays and Controller
- Project Wiki (work in progress)


## Usage

To build your own Open Shot Clock you can find all documents/information in the [documentation](documentation/) folder.

### Getting All the Parts Needed

Please go through the BOM to make sure you have all parts needed available. In the BOM we have included recommendation links, where we recently purchased the parts. Be aware that you can choose from different design features which you have to cover in your purchases. The developement is stil ongoing so some design features are not yet tested or even sufficiently developed.

In the design 3d printing is requried. Make sure you print the necessary parts before starting to build or let them print by a printing service. Make sure the parts are printed with a heat and impact resistant 3d printing material. You can find recommended materials in the BOM.

For the PCBs you can use the design files to order them at a PCB manufacturer like [PCBWay](https://www.pcbway.com/) or you can get in touch with us, there are still some prototyping PCBs left of the current version. In the near future the PCB design has to be adapted to the new Heltec Lora 32 version 3.0. For now the new version is supported through a workaround. For more information check this [blog artical](https://devdrik.de/open-shot-clock-hannover/) from [@devdrik](https://github.com/devdrik).

### List of Optional Design Features:

- Displays - 19 mm thick highly machined base plate or 8 mm thick easy to build base plate
  - 19 mm makes a more stable design and is tested well
  - 8 mm base plate is much easier to build with less special machinery, but it´s not tested yet (there might be clashes with electronic parts inside the case)

- Displays - Temperature Managment (up to now we don´t know if a temperature management is necessary, to find out we integrated a temp sensor socket on the display pcbs, tests are still in planning)

  - No Cooling
  - Fan grids on the back for passiv cooling (default)
  - Active Fan with fan grids on the back (fan can be installed behind one fan grid and operated by one mosfet output, this feature is not yet included in the sourc code)

- Displays - Batteries (you can find different battery options in the BOM from which you can choose)
- Accessories - you can find different accessory options in the BOM from which you can choose
- Displays - Type-Plate customization (for having your own type-plate text you can get in touch with us, we can change the text for you)
- to be continued

### Assembling

When you have all parts available please follow the DIY Building Instructions Manual for assembling your Open Shot Clocks. Some parts like the base-, front- and back-plates or the aliminium extursion profiles need to be modified before they can be assembled. You can do the needed modification by using the drawings of these parts or you can get in touch with us, there are still some back plates left in our stock. In this [youtube playlist](https://www.youtube.com/watch?v=pQqHoa6__Ms&list=PLql27Iz3RF6tFwROZiCufJEf_9jadfyL8) you can see videos of [@devdrik](https://github.com/devdrik) performing the assembing process of an Open Shot Clock. In the future the playlist will be extended to cover all parts of the assembling process.

#### Heltec WiFi LoRa V2/V3

The V2 module is hard to get at the moment, so we added support for the new V3 version of the module, that is easy to source. To use V3 with PCBs designed for V2, you need to rewire some connections. So make sure not to use a V3 on a V2 PCB without modification!

What to do to use a V3 on a PCB for V2 (display):
- Do not connect GPIO41, GPIO42, GPIO21 and GPIO48 to the display PCB
- Connect GPIO41 to the display PCB where GPIO21 would be
- Connect GPIO42 to the display PCB where GPIO48 would be

What to do to use a V3 on a PCB for V2 (controller):
- Button BUTTON_PIN_B can not be used anymore
- We might need some pull-ups (to be tested)

### How to Set Up the Firmware

You can find the source code for the controller and the displays in the code folder. Please just copy this repo to your VS Code with Plaformio extension and open both as projects. Fill in your preferred wifi credentials for setting up local device wifi networks to change settings. It is recommended to use different credentials for the controller and the displays to make sure you access the right devices settings.
Make sure to select the environment that fits the board you are using.

- flash controller
  - SPIFFS
  - source code
- flash displays
  - source code

## What´s Left to Do

- Tackle issues
- Build up Wiki with design insights, project history and roadmap
- Source code refactoring
- Design and test mdf display case as cost reduction opportunity
- pcb design to be ported to another open source platform and integration of heltc lora 32 v3.0 support
- Support first builders and gather feedback
- Offer english version of documents (if sufficiently demanded)
- to be continued


## How to Contribute

Feel free to customize your Open Shot Clock to your needs. For this purpose you can find the design files in the cad and pcb folders and the source code in the code folder. If you have ideas how to improve the Open Shot Clock and you need support for the integration or you want to share the benefits with the community please get in touch with us.

## Acknowledgement

Many thanks to [Ulf](https://github.com/ulf) for some initial inspiration in the approach to develop a LED shot clock. If you are looking out for a minimal and cheap setup for small indoor fields without obstacles have a look to [Ulf´s basketball shot clock tutotial](http://shotclock.de/)! With minor changes to the app it is possible to start with 30 seconds on the clock for lacrosse instead of 24 as for basketball. 

## Authors

- [@ChangeD20](https://github.com/ChangeD20)
- [@devdrik](https://github.com/devdrik)

## Contact

github@dlaxv.de

## License

[CERN OHL v2 Permissive](https://choosealicense.com/licenses/cern-ohl-p-2.0/)

