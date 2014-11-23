#!/bin/bash
cd ~/.emacs.d
git clone https://github.com/auto-complete/auto-complete.git
git clone https://github.com/auto-complete/popup-el.git
mkdir cl-lib
cd cl-lib/
wget http://elpa.gnu.org/packages/cl-lib-0.5.el
