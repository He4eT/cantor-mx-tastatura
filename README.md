# Cantor MX Tastatura

It's my personal layout for the [custom build](https://gitea.dmz.rs/Decentrala/cantor) of the [Cantor MX Keyboard](https://github.com/diepala/cantor) by the [Decentrala comunity](https://decentrala.org/).

![Overview](/images/photos/overview.jpg?raw=true)
![Overview Alternative](/images/photos/overview_alt.jpg?raw=true)
> "Tastatura" is the Serbian word for "keyboard".

## Initial Flash

- Clone the Vial repository:
  ```
  git clone --recurse-submodules git@github.com:vial-kb/vial-qmk.git
  cd vial-qmk
  ```
- Connect the controller to your computer using a USB cable

- ### Blackpill, 25MHz
  - **Optional**: add `#define EE_HANDS` in `vial-qmk/keyboards/cantor/keymaps/vial/config.h`

- ### Blackpill (f411), 8mhz,
  - Copy the `cantor` directory from `./config/cantor/` to `vial-qmk/keyboards/cantor`.

- Start the flashing process for the controller (Docker required):
  - With EE_HANDS in config:
    ```
    sudo util/docker_build.sh cantor:vial:dfu-util-split-left
    sudo util/docker_build.sh cantor:vial:dfu-util-split-right
    ```
  - Without EE_HANDS in config:
    ```
    sudo util/docker_build.sh cantor:vial:flash
    ```
- Use the onboard BOOT0 and NRST button to put the board into bootloader mode:
  - press and hold the BOOT0 button
  - press and release NRST (reset) button to power cycle the processor
  - release BOOT0 button
  - For additional details, refer to: [STM32 Black Pill](https://land-boards.com/blwiki/index.php?title=STM32_Black_Pill)
- Repeat the flashing process for the second controller.
- Download the Vial configurator: https://get.vial.today/
- **Linux Only**: Configure udev rules for the first launch: https://get.vial.today/manual/linux-udev.html
- Open the Vial configurator.

## Layout

### Base Layer
![Base Layer](/images/layers/layer_0.png?raw=true)

### Right Hand Layer
![Left Hand Layer](/images/layers/layer_1.png?raw=true)

### Left Hand Layer
![Right Hand Layer](/images/layers/layer_2.png?raw=true)

### Mouse Layer
![Mouse Layer](/images/layers/layer_3.png?raw=true)

## Case

The [Cantor MX Slim Case](https://www.printables.com/model/996711-cantor-mx-slim-case) is a remix of the [Cantor MX Case](https://www.printables.com/model/707238-cantor-mx-case) by [@JellyTitan](https://www.printables.com/@JellyTitan).
