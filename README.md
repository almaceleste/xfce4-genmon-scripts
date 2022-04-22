### about

this is my repo of the scripts for use with the Xfce4 panel generic monitor (xfce4-genmon-plugin)

#### license

[![license](https://img.shields.io/github/license/almaceleste/xfce4-genmon-scripts.svg?longCache=true)](https://github.com/almaceleste/xfce4-genmon-scripts/blob/master/LICENSE)

<!-- #### wiki -->

#### dependencies

* xfce4-panel
* xfce4-genmon-plugin

##### install dependencies in Ubuntu and some other debian distros

```bash
sudo apt install xfce4-panel xfce4-genmon-plugin
```

##### install dependencies in Fedora

```bash
sudo dnf install xfce4-panel xfce4-genmon-plugin
```

##### install dependencies in openSuse

```bash
sudo zypper install xfce4-panel xfce4-genmon-plugin
```

##### install dependencies in some rpm distros

```bash
sudo rpm --install xfce4-panel xfce4-genmon-plugin
```

### list of scripts

#### [xfce4-genmon-cpu.sh](https://github.com/almaceleste/xfce4-genmon-scripts/raw/master/src/xfce4-genmon-cpu.sh 'download')

xfce4-genmon script to monitor current cpu usage

* monitors cpu usage in % and show it in xfce4-panel in color manner
* has warning (yellow) and alarm (red) thresholds
* you can change thresholds in the script

#### [xfce4-genmon-gpu.sh](https://github.com/almaceleste/xfce4-genmon-scripts/raw/master/src/xfce4-genmon-gpu.sh 'download')

xfce4-genmon script to monitor current nvidia gpu usage

* monitors gpu usage in % and show it in xfce4-panel in color manner
* has warning (yellow) and alarm (red) thresholds
* you can change thresholds in the script

#### [xfce4-genmon-hdd.sh](https://github.com/almaceleste/xfce4-genmon-scripts/raw/master/src/xfce4-genmon-hdd.sh 'download')

xfce4-genmon script to monitor hdd (partition) free space

* monitors hdd free space in Gigabytes and show it in xfce4-panel in color manner
* has warning (yellow) and alarm (red) thresholds
* you can change thresholds in the script
* by default displays `/home`, but you can specify different path in the first script parameter, such as `.../xfce4-genmon-hdd.sh /opt`

#### [xfce4-genmon-mem.sh](https://github.com/almaceleste/xfce4-genmon-scripts/raw/master/src/xfce4-genmon-mem.sh 'download')

xfce4-genmon script to monitor current memory usage

* monitors memory usage in Gigabytes and show it in xfce4-panel in color manner
* has warning (yellow) and alarm (red) thresholds
* you can change thresholds in the script

#### [xfce4-genmon-swap.sh](https://github.com/almaceleste/xfce4-genmon-scripts/raw/master/src/xfce4-genmon-swap.sh 'download')

xfce4-genmon script to monitor current swap usage

* monitors swap usage and show it in xfce4-panel in color manner
* has warning (yellow) and alarm (red) thresholds
* you can change thresholds in the script

#### [xfce4-genmon-uptime.sh](https://github.com/almaceleste/xfce4-genmon-scripts/raw/master/src/xfce4-genmon-uptime.sh 'download')

xfce4-genmon script to display current system uptime

* displays current system uptime
* has two periods:
  * first - during which uptime is displayed down to minutes, default 86400 seconds (1 day)
  * second - during which uptime is displayed down to hours, default 864000 seconds (10 days)
* you can change periods in the script

### support me
<!-- [![Beerpay](https://beerpay.io/almaceleste/xfce4-genmon-scripts/badge.svg?style=beer)](https://beerpay.io/almaceleste/xfce4-genmon-scripts) [![Beerpay](https://beerpay.io/almaceleste/xfce4-genmon-scripts/make-wish.svg?style=flat)](https://beerpay.io/almaceleste/xfce4-genmon-scripts?focus=wish) -->
[![Ko-fi](/assets/img/Ko-fi_logo_transparent.png)](https://ko-fi.com/almaceleste "bye me cofee")
[![PayPal](https://img.shields.io/badge/Paypal-donate_me-blue.svg?longCache=true&logo=paypal)](https://www.paypal.me/almaceleste "paypal | donate me")
