# Docker image of SMath Studio pre-installed

A docker image installed with Stable SMath Studio 

Smath Studio is a tiny, powerful, free mathematical program with WYSIWYG editor and complete units of measurements support. For more details on SMath Studio  please refer the following link

https://en.smath.com/forum/

Thanks to Andrey Ivashov - Owner of Studio

Thanks to Creator of noVNC : Joel Martin (github@martintribe.org). https://novnc.com/info.html

The idea to create a pre-installed SMath Studio  docker image was inspired by the Kyle Anderson's  solarkennedy/wine-x11-novnc-docker at https://github.com/solarkennedy/wine-x11-novnc-docker

Usage :-

To create a smath container (name smath) using bkjaya1952/smathstudio

Refer:- https://hub.docker.com/r/bkjaya1952/smathstudio-pre-installed-docker-new

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name smath --privileged=true bkjaya1952/smathstudio-pre-installed-docker-new</code>

<code>sudo docker start smath</code>

<code>xdg-open http://localhost:8008/vnc_lite.html</code>

Then the SMath Studio desktop will appear on the web browser at the startup.

<img src="https://raw.githubusercontent.com/bkjaya2020/smathstudio-pre-installed-docker-new/master/Screenshot%20from%202020-10-17%2021-16-55.png" alt="https://raw.githubusercontent.com/bkjaya2020/smathstudio-pre-installed-docker-new/master/Screenshot%20from%202020-10-17%2021-16-55.png" width="625" height="520">

If you want to get the SMath Studio desktop after closing it please follow the following steps

On the desktop, right click the mouse to get the fluxbox menu

<img src="https://raw.githubusercontent.com/bkjaya2020/smathstudio-pre-installed-docker-new/master/menu1.png" alt="https://raw.githubusercontent.com/bkjaya2020/smathstudio-pre-installed-docker-new/master/menu1.png" width="625" height="520">

<img src="https://raw.githubusercontent.com/bkjaya2020/smathstudio-pre-installed-docker-new/master/menu2.png" alt="https://raw.githubusercontent.com/bkjaya2020/smathstudio-pre-installed-docker-new/master/menu2.png" width="625" height="520">

To get the SMath Studio panel

On the menu go to sub menus and ckick Applications>Shells>Bash

There is an enother option

On The menu go to sub menus and click Applications>Programming>Monodoc(http)




