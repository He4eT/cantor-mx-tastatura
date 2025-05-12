# Cantor MX Tastatura

[Cantor MX Keyboard](https://github.com/diepala/cantor) by the [Decentrala comunity](https://decentrala.org/).

Configuration for the 8MHz version of Blackpill_f411 provided by the [Xecut hackspace](https://xecut.me).

![Overview](/images/photos/overview.jpg?raw=true)
![Overview Alternative](/images/photos/overview_alt.jpg?raw=true)
> "Tastatura" is the Serbian word for "keyboard".

## Initial Flash

1. Clone this repository:
    ```
    git clone --recurse-submodules git@github.com:He4eT/cantor-mx-tastatura.git
    cd cantor-mx-tastatura
    ```
2. Connect the **left** controller to your computer using a USB cable.
3. Start the flashing process (Docker required):
    - For **8MHz Blackpill_f411** controllers:
      ```
      make flash blackpill=f411-8mhz half=left
      ```
    - Otherwise:
      ```
      make flash half=left
      ```
4. Use the onboard `BOOT0` and `NRST` button to put the board into bootloader mode:
    - press and hold the `BOOT0` button,
    - press and release the `NRST` (Reset) button to power cycle the processor,
    - release the `BOOT0` button,
    - For additional details, refer to [STM32 Black Pill](https://land-boards.com/blwiki/index.php?title=STM32_Black_Pill).
5. Repeat the process starting from step 2 for the **right** half.
6. Download the [Vial configurator](https://get.vial.today/).
7. **Linux Only**: Configure [udev rules](https://get.vial.today/manual/linux-udev.html) for the first launch.
8. Open the Vial configurator.
9. **Optional**: Load a layout from `./layouts/`.

## Layouts

### Default

By default, the [Cantor Vial layout](https://github.com/vial-kb/vial-qmk/blob/vial/keyboards/cantor/keymaps/vial/keymap.c)
from the [vial-qmk](https://github.com/vial-kb/vial-qmk/) repository is used.

### My Opinionated Layout

```
./layouts/odd_cantor_tastatura.vil
```
Check out [this forum thread](https://forum.dmz.rs/t/cantor-mx-keyboard/700)
for some explanations.

#### Base Layer
![Base Layer](/images/layers/layer_0.png?raw=true)

#### Right Hand Layer
![Left Hand Layer](/images/layers/layer_1.png?raw=true)

#### Left Hand Layer
![Right Hand Layer](/images/layers/layer_2.png?raw=true)

#### Mouse Layer
![Mouse Layer](/images/layers/layer_3.png?raw=true)

## Case

```
./things/case_slim.stl
```
The [Cantor MX Slim Case](https://www.printables.com/model/996711-cantor-mx-slim-case) is
a remix of the [Cantor MX Case](https://www.printables.com/model/707238-cantor-mx-case) by [@JellyTitan](https://www.printables.com/@JellyTitan).
