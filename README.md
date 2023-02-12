![theme](https://github.com/DLaxV-Community-Projects-Hub/Open-Shot-Clock/blob/main/assets/theme.svg)


# Open Shot Clock

Open Shot Clock is an Open Source and DIY Project aiming for minimizing the barriers of entry for shot-clock-aided sports like Boxlacrosse and Sixes and maximizing the pure sports experience to an affordable price.

## Details

- 10" super bright LED digits (in color of your choice)
- indoor and outdoor usage
    - impact and water resistant portable design
    - LED brightness adjustable to your needs
- wirless and cable connection
- 12V input supply (portable battery or mains operation by AC-DC power supply)
- handheld controller
- wifi connection to smartphone
    - control option
    - settings change
    - firmware updates
- external horn for each display
- tripod stands ~2 meter height

The price tag is around 1000€ for materials and accessories, depending on whicht design and batterie options you choose.


For more information have a look at our [wiki](https://github.com/DLaxV-Community-Projects-Hub/Open-Shot-Clock/wiki/Open-Shot-Clock-Wiki) or this [blog](https://devdrik.de/blog/) made by [@devdrik](https://github.com/devdrik).

You want to see the Open Shot Clock in action?! Check out the following recordings of recent Lacrosse high lights from Germany:

- [Men´s European Box Lacrosse Championship 2022 - Final: England vs. Germany](https://sportdeutschland.tv/germanylacrosse/european-box-lacrosse-championship-final-england-vs-germany)
- [Women´s German Indoor Championchip 2022 - Final: HLC Rot-Weiss München vs. HTHC Hamburg A](https://sportdeutschland.tv/germanylacrosse/finale-lacrosse-damen-indoor-meisterschaft-2022)
- [Men´s German Box Lacrosse Championchip 2022- Final: Spreewölfe Berlin vs. KKHT SW Köln](https://sportdeutschland.tv/germanylacrosse/deutsche-meisterschaften-box-lacrosse-2022-spreewoelfe-berlin-vs-kkht-sw-koeln)

## What´s Included Here

- Design Documentation for Open Shot Clock Displays and Controller
    - CAD and PCB designs
    - 3d printing files
    - DIY Building Instructions Manual (german)
    - BOM for Displays, Controller and accessories (german)
    - User Manual (german)
    - Source Code for running Displays and Controller
- Project Wiki (still in build)


## Usage

For building your own Open Shot Clock you can find all documents/information in the documentation folder.

### Getting All the Parts Needed

Please go through the BOM to make shure you have all needed parts available. In the BOM we have included recommendation links where we recently purchased needed parts. Be aware that you can choose from different design features which you have to cover in your purchases. The developement is stil ongoing so some design features are not yet tested or even sufficiently developed, there could be a risk either in implementic them or even not.

In the current design 3d printing is requried. Make sure you print the necessary parts before starting to build or let them print by a printing service. Make sure the parts are printed with a heat and impact resistant 3d printing material. You can find recommented materials in the BOM.

For the PCBs you can use the design files to order them at a PCB manufacturer like [PCBWay](https://www.pcbway.com/) or you can get in touch with us, there are still some prototyping PCBs left of the current version. In the near future the PCB design has to be adepted to the new Heltec Lora 32 version 3.0, up to now the new version is not supported yet). For more information check this [blog artical](https://devdrik.de/open-shot-clock-hannover/) from [@devdrik](https://github.com/devdrik).

### List of Optional Design Features:

- Display Temperature Managment (up to now we don´t know if a temperature management is necessary, to find out we integrated a temp sensor socket on the display pcbs, tests are still in planning)

  - No Cooling
  - Fan grids on the back for passiv cooling (default)
  - Active Fan with fan grids on the back (fan can be installed behind one fan grid and operated by one mosfet output, this feature is not yet included in the sourc code)

- Batteries (you can find different battery options in the BOM from which you can choose)
- Accessories (you can find different accessory options in the BOM from which you can choose)
- Type-Plate customization (for having your own type-plate text you can get in touch with us, we can change the text for you)
- to be continued

### Assembling

When you have all parts available please follow the DIY Building Instructions Manual for assembling your Open Shot Clocks. Some parts like the base-, front- and back-plates or the aliminium extursion profiles need to be modified before they can be assembled. You can do the needed modification by using the drawings of these parts or you can get in touch with us, there are still some back plates left in our stock. In this [youtube playlist](https://www.youtube.com/watch?v=pQqHoa6__Ms&list=PLql27Iz3RF6tFwROZiCufJEf_9jadfyL8) you can see videos of [@devdrik](https://github.com/devdrik) performing the assembing process of an Open Shot Clock. In the future the playlist will be extended to cover all parts of the assembling process.


### How to Set Up the Firmware

You can find the source code for the controller and the displays in the code folder. Pleas just copy this repo to your VS Code with Plaformio extansion and open both as projects. Fill in your prefered wifi credentials for setting up local device wifi networks to change settings. It is recommended to use different credentials for the controller and the displays to make sure you access the right devices settings.

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


## Authors

- [@ChangeD20](https://github.com/ChangeD20)
- [@devdrik](https://github.com/devdrik)

## Contact

github@dlaxv.de

## License

[CERN OHL v2 Permissive](https://choosealicense.com/licenses/cern-ohl-p-2.0/)

