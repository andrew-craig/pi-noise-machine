# Pi Noise Machine

Pi Noise Machine turns a Raspbery Pi a white noise generator. It is intended to be run at startup. 

The included white noise file is from the [Misophonia Institute](https://misophoniainstitute.org/). Any mp3 file can be used by changing the `SOUND_FILE` in `auto-player.sh`.

This project is based on [sleepnoise by graysky2](https://github.com/graysky2/sleepnoise)

## Dependencies
Pi Noise Machine requires:
* [mpg123](https://mpg123.org/)
* [alsa-utils](https://github.com/alsa-project/alsa-utils)

You can install both with:
    sudo apt install mpg123 alsa-utils -y

## Installation

Note: This installation assumes the git repository is cloned to /home/pi

Make `auto-player.sh` executable:
    $ chmod +x auto-player.sh

Edit the crontab file by running:
    $ crontab -e

Add a new line at the end of the file:
    @reboot sh /home/pi/pi-noise-machine/auto-player.sh