
# battnag

> Work In Progress :construction_worker:


## features:

* [ ] runs on:
  * [ ] Linux
  * [ ] Mac OSX
  * [ ] Windows
* [ ] alert you when maximum/minimum set charge is reached
* [ ] allows setting minimum and maximum preferred charge
* [ ] start on system startup
* [ ] available as:
  * [ ] binaries
  * [ ] web interface
  * [X] [source code](#source-code)


## installing/running:

1. Binary Releases: I'm yet to roll out this one.

1. Web interface: Also this is on Queue.

<a name="source-code"></a>
1. Running the Source code requires that you have [node-webkit][nwjs] installed. Assuming node-webkit is available as `nw` command:

  ```bash
  ⇒ nw .
  ```


## credits:

Thanks to these projects, their creators and contributors:

* [nw.js][nwjs] as the runtime
* [jquery](https://jquery.com) for basic DOM manipulation
* [battery.js](https://github.com/pstadler/battery.js) for interfacing with the Battery Status API
* [buzz.js](http://buzz.jaysalvat.com/) for playing sounds
* [freesound](https://www.freesound.org/) as source of sounds


## license:

**The MIT License (MIT)**

Copyright (c) 2015 GochoMugo <mugo@forfuture.co.ke>


[nwjs]:https://github.com/nwjs/nw.js "node-webkit"

