# Automatic machine setup

This repository aims at allowing both product analysts and product developers to easily and quickly setup their macbooks with the minimum required software to start doing their job.

This makes use of Ansible and its Homebrew, Homebrew Cask and NPM modules. 

## Steps to execute

1. Go to the project root folder.
2. Execute: <code>./setup-machine.sh</code>
3. Follow instructions.

## Installed Software

There are currently two sets of software bundles, one for product analysts and another for product developers.

**Product Analysts:**
* Generic Applications:
    * Google Chrome
    * Google Drive
    * Slack
    * Franz
    
**Product Developers:**
* Generic Applications:
    * Google Chrome
    * Google Drive
    * Slack
    * Atom
    * Franz
    * Bower
* Software Development:
    * Node
    * Python
    * Python3
    * Java
    * Android SDK
    * VirtualBox
    * Docker
* NPM packages:
    * bower
    * gulp
    * grunt-cli
    * webpack
    * vue-cli
    * babel
    * npm-check-updates

## Improvements
* Support custom software bundle
* Support Windows machines
* Generate log file
* Error handling