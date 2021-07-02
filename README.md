# Pi Noise Machine

Pi Noise Machine turns a Raspbery Pi a white noise generator. It is intended to be run at startup. 

The included white noise file is from the [Misophonia Institute](https://misophoniainstitute.org/). Any mp3 file can be used by changing the `SOUND_FILE` in `auto-player.sh`.

This project is based on [sleepnoise by graysky2](https://github.com/graysky2/sleepnoise)

## Dependencies
Pi Noise Machine requires:
* [mpg124](https://mpg123.org/)
* [alsa-utils](https://github.com/alsa-project/alsa-utils)

## Installation

Make `auto-player.sh` executable:
    $ chmod +x auto-player.sh

Edit the crontab file by running:
    $ crontab -e

Add a new line at the end of the file:
    @reboot sh ~/pi-noise-machine/auto-player.sh