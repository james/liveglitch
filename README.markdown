# LiveGlitch

## A proxy server in ruby for live glitching http media streams

This Library provides a few tools to make glitching (aka databending) of http streams easy. There are three parts:

### Install

To install this gem straight away, run:

    gem install specific_install
    gem specific_install james/liveglitch

### Creating a HTTP stream

Before you can glitch, you need something to glitch. `liveglitch serve` will use VLC to stream a file you specify over HTTP.

Example:

    liveglitch serve my_movie.avi

Will start a looping stream of my_movie.avi over port 9999 of your computer.

### Creating a glitching proxy

Now we have a stream, we can proxy it through livestream, and you can do whatever you want to it.

You will need a ruby file which provides the LiveGlitch::DataBender.bend method. You can find an example at example_databender.rb

This method gets called for every packet of http data sent through the proxy server.

*This file will be autoreloaded when you save it, meaning you can edit it without inturupting the stream!*

Example:

    liveglitch proxy path/to/my/databender.rb

Will start the proxy on port 8008

### Play the glitched stream

You can try any player out if it can connect to our proxy, but for convenience, there is this command, which will open the VLC with correct settings for you:

    liveglitch play

## Problems and TODOs

This is very very early hacking. It currently has only been tested on my computer, a Macbook Air running Mavericks.

* Assumes you are using OS X and have VLC installed at /Applications/VLC.app
* I haven't tested out using the proxy with any other streams other than that created by the `liveglitch serve` command, but would very much like to.
* Some examples of what this can do would be nice. I still need to play with it and learn a bit more about HTTP video streaming. It may not do anything particularly interesting really. It may be that HTTP streams aren't that interesting to glitch. Any suggestions very welcome. Also, This may be a waste of time. Oh well.