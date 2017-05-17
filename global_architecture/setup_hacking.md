## Pydio Code and Dependencies

Pydio code is available on Github. Clone our main repository on your local machine, and set up apache (or any web server running on your machine to server the core/src/ folder as the DocumentRoot.
 
    git clone https://github.com/pydio/pydio-core.git
 
Of course, your machine should have PHP5.5.9+ installed, and a Database server (MySQL/PostGreSQL) as well. Php 7.1 would be a recommanded setup.

### Javascript Required Tools

#### Install node and grunt

If you plan to modify the interface, you will probably have to modify either Javascript or CSS files. As explained in the global overview, you need NPM and Grunt instaleld on your machine.

Install NPM (the Node Package Manager) globally on your machine. Please google and follow the necessary steps for your OS, there are many tuto's on the Internet on how to install Node.

Finally install the Grunt command line globally with 

    npm install -g grunt-cli

#### Recompile a plugin

This will allow you to recompile UI resources by running the following command inside each plugin that contains a **Gruntfile.js** file: 

    npm install
    grunt

#### Live compilation

When developing, you definitely don't want to manually run **grunt** each time you save a file. A specific 'watch' task is defined exactly to do that for you. If you are inside a plugins folder, run 

    grunt watch
    
Now each time you save a file, a grunt taks will automatically run to compile it. 

One important note is that for most plugin, this is just enough. The "gui.ajax" plugin, wich is a bit heavier, if the "watch" task triggers a full grunt on each save, it's really long and not optimized. For that reason, the 'watch' task inside this plugin will just recompile the modified library, without going through the rest of minification tasks. To be able to see the changes in your browser, you will have to switch pydio to "CLIENT_DEBUG" mode, by editing `conf/bootstrap_context.php` file.

[:image-popup:global_architecture/technologies_overview/Snapshot-2013-06-19-at-14.41.50.png]

Once you are done, make sure to manually run `grunt` once inside gui.ajax, and then switch back from CLIENT_DEBUG mode. 

## Other Useful tools

### PHP Xdebug Extension

If you are working on PHP, you should as well install the [PHP XDebug extension](https://xdebug.org/), as it can be interacting with your IDE and provide very useful way of understanding what's going on in your (or our) code.

### Chrome Developer Tools

When developing Javascript in the browser, learn yourself the best tool ever : the Web Developer Tools from Google Chrome. It will allow you to scan the DOM structure in real time, monitor the XHR queries, debug the JavaScript, etc. But be also aware that what you develop will be executed on many different browsers : Firefox, Webkit (chrome/safari), Internet Explorer, Opera, etc… Always test your changes on all browser.

## Pydio Debug Modes

When developing on Pydio, there are two configurations that you must be aware of in the **conf/bootstrap_context.php** file :

- **AJXP_CLIENT_DEBUG** : when set to **true**, the web client will load most of the javascript and css files independantly, instead of loading the minified concatenated version. This is really useful for developing. Make always sure to recompile everything and test your changes with **false** afterward.
- **AJXP_SERVER_DEBUG** : When set to **true**, triggers a more verbose level of logging in the server. Coupled with that, it can be handy to switch your logger to "Text Logger" when developing, to be able to tail the content of the logs via a command line instead of by listing the content of an SQL table.

## Contributing

We are always very happy and excited to welcome new contributers on the code. There are just a couple of rules that you must follow in order to make the on-boarding process smooth: 

1. Check that there is not an on-going PR or opened issue already on the same topic.
2. Sign the CLA
3. Submit a Pull Request via Github.
4. Don't be offended if we discuss your PR with you :-)