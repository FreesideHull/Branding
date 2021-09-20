# Freeside Flyer
This directory contains the Freeside flyer design. It is designed in HTML and CSS. It is recommended that [weasyprint](https://weasyprint.org/) be used to render out the PDF.


## Files

 - `README.md` - This file
 - `build.sh`: The (very simple) build script to convert the HTML file into a PDF for printing. Written in Bash.
 - `flyer.html` - The main flyer is located in here.
 - `flyer-white.html` - An alternate version of the flyer with a white background (good for reducing ink costs)
 - `discord.svg`, `discord.png` -  The discord logo. Used in the flyer.
 - `freeside.svg` - The Freeside logo. Appears at the top of the flyer.


## System Requirements

 - Linux (this is Freeside! It may work on Windows, but is untested - you'll need Git Bash at least)
 - [weasyprint](https://weasyprint.org/) (install with pip: `sudo pip3 install weasyprint` - some systems may use just `pip` instead of `pip3`)
 - Optional: [evince](https://wiki.gnome.org/Apps/Evince) (if installed, then the build script will attempt to launch evince to open the rendered flyer)


## Usage
First, clone this repository:

```bash
git clone https://github.com/FreesideHull/Logos.git
cd Logos/Materials/Flyer;
```

Then, run the build script:

```bash
./build.sh
```

A white variant of the flyer is located in `flyer-white.html`. Build that instead of the default (`flyer.html`) like so:

```bash
./build.sh flyer-white.html
```


## FAQ

### I get random error from weasyprint!
Make sure you've installed weasyprint through `pip3`/`pip`, and not your system's package manager. The version of weasyprint in your system package manager is often out of date.


### The script doesn't work!
Try executing the commands contained within manually. Namely:

```bash
weasyprint -w flyer.html flyer.pdf
```
