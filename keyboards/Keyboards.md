# Keyboards and Keymaps

This directory contains all relevant files as well as additional information for my mechanical
keyboards.

## General Hints

- On OS side, install the [EurKEY](https://eurkey.steffen.bruentjen.eu/start.html) layout which
  provides more reasonable access to special characters (esp. Umlaute) while being based on the ANSI
  layout
  - available for Windows and MacOS via download, shipped with various Linux distros by default

## NuPhy Air75 V2

### Files

- `nuphy_air75_v2_ansi_via_v1.3.0.1-beta.bin`: [Custom firmware](./nuphy/nuphy_air75_v2_ansi_via_v1.3.0.1-beta.bin),
  see corresponding paragraph below
- `NuPhy_Air75_V2_VIA_V3.json`: [VIA configuration](./nuphy/NuPhy_Air75_V2_VIA_V3.json) file for
  custom firmware
- `NuPhy_Air75_V2_VIA_Configuration_Stock.json`: [Official VIA configuration JSON](./nuphy/NuPhy_Air75_V2_VIA_Configuration_Stock.json)
  from NuPhy's homepage
- `nuphy_air75_v2.layout.json`: Custom [keymap](./nuphy/nuphy_air75_v2.layout.json)
  - updated position of `Home`, `End`, `PageUp`, and `PageDown`
- `nuphy_air75_v2_hhkb.layout.json`: Custom [keymap](./nuphy/nuphy_air75_v2_hhkb.layout.json)
  - switching `CTRL` and `CapsLock`
- `nuphy_air75_v2_improved_hhkb.layout.json`: Current [keymap](./nuphy/nuphy_air75_v2_improved_hhkb.layout.json)
  - keeping left `CTRL` while switching `CapsLock` to `CTRL`
  - `CapsLock` accessible via second layer (`Fn` + `CTRL`)
- `QMK_firmware_nuphy_air75_v2.1_ansi_v2.0.7.bin`: [Latest official
  firmware](./nuphy/QMK_firmware_nuphy_air75_v2.1_ansi_v2.0.7.bin) from Discord
  - only as a backup, never flashed to keyboard

### Known Issues

- I rarely ran into lost keys and once the keyboard got stuck continuously sending the last pressed
  key
  - this happened only in wireless mode (Bluetooth, did not yet test the 2.4 GHz dongle)
  - according to various threads on the internet, this is a known issue and is supposed to be fixed
    by a firmware update
  - main thread on reddit can be found
    [here](https://www.reddit.com/r/NuPhy/comments/1d970re/nuphy_is_good_from_hw_perspective_but_not_from_sw/)
- I do not know which firmware my keyboard is running

### 2024-08-16 Firmware Update

- apparently, the previous update did not work properly
  - probably didn't run QMK Toolbox as admin or didn't install necessary drivers
  - connection issues still present (esp. repeating keys)
  - "new" features from custom firmware, e.g. battery indicator not working
- originally flashed [adi4086](https://github.com/adi4086/qmk_firmware/releases)
  - but backlight defaults to 50% brightness, turning it off entirely does not persist across power
    cycles
- therefore, flashed [v1.3.0.1-beta](https://github.com/jincao1/qmk_firmware/releases/tag/v1.3.0.0)
  - currently not tagged, part of v1.3.0.0
  - updated keymap accordingly

### 2024-06-09 Firmware Update

- since people seem to have had good results with custom firmware to fix the aforementioned issues,
  I decided to go with flashing custom QMK firmware
- followed [this](https://www.reddit.com/r/NuPhy/comments/1bzohvx/custom_firmware/) reddit thread
- flashed [v1.3.0.0](https://github.com/jincao1/qmk_firmware/releases/tag/v1.3.0.0) with QMK toolbox
  as described in NuPhy's [documentation](https://nuphy.com/pages/qmk-firmwares)
  - binary can be found in this repository
  - original [configuration
    JSON](https://github.com/jincao1/qmk_firmware/blob/v1.3.0.0/keyboards/nuphy/air75_v2/ansi/keymaps/via/air75_v2_via_v3.json)
    for VIA is included as well
- updated VIA JSON with latest keymap added

