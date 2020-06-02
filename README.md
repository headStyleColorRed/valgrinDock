# ValgrinDock 


ValgrinDock is a docker project that will deploy in seconds a container running valgrind so you can use it to debug your projects.

This is a project that is intended for zsh shell users and MacOs Catalina that cannot run valgrind in their pc.
In order to use it just follow the instructions :)

### Installation

ValgrinDock requires [Docker](https://www.docker.com/) to run.

If you have Docker already installed in your pc, then proceed with this commands:

```sh
$ git clone https://github.com/headStyleColorRed/valgrinDock.git
$ cd valgrinDock
$ sh installValgrindock.sh
```

Once installed, in order to debug your files, you just need to navigate in the terminal to the chosen folder and write

```sh
$ valgrindock
```

It will wait for you to press Enter and you will be able to see the valgrind debuger.

### Tech

ValgrinDock uses a number of open source projects to work properly:

* [node.js] - Evented I/O for the backend
* [Express] - Fast node.js network app framework 
* [Valgrind] - Suite of tools for debugging and profiling

### Todos
 - Must allow more debuggin configuration
 - Allow the user to use his makefile instead of creating one

License
----

MIT

**Free Software, Hell Yeah!**