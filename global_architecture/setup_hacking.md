## Pydio Code and Dependencies

Pydio code is available on Github. Clone our main repository on your local machine, and set up apache (or any web server running on your machine to server the core/src/ folder as the DocumentRoot.
 
    git clone https://github.com/pydio/pydio-core.git
 
Of course, your machine should have PHP5.4+ installed, and a Database server (MySQL/PostGreSQL) as well.

### Javascript Required Tools: NPM

If you plan to modify the interface, you will probably have to modify either Javascript or CSS files. If not already done, you should first read the **Web Application > Architecture** section. 
Install NPM (the Node Package Manager) globally on your machine. For example, on Ubuntu this would give :

    sudo apt-get install nodejs nodejs-dev npm

This will allow you to recompile UI resources by running the following command inside each plugin that contains a **Gruntfile.js** file: 

    npm install
    grunt

The Less compiler will also be required to compile the CSS files.

    npm install less

## Other Useful tools

### PHP Xdebug Extension

If you are working on PHP, you should as well install the [PHP XDebug extension](https://xdebug.org/), as it can be interacting with your IDE and provide very useful way of understanding what's going on in your (or our) code.

### Chrome Developer Tools

On the client side, the best set of tools ever are the Chrome Developer tools. 

## Pydio Debug Modes

When developing on Pydio, there are two configurations that you must be aware of in the **conf/bootstrap_context.php** file :

- **AJXP_CLIENT_DEBUG** : when set to **true**, the web client will load most of the javascript and css files independantly, instead of loading the minified concatenated version. This is really necessary for developing. Make always sure to recompile everything and test your changes with **false** afterward.
- **AJXP_SERVER_DEBUG** : When set to **true**, triggers a more verbose level of logging in the server. Coupled with that, it can be handy to switch your logger to "Text Logger" when developing, to be able to tail the content of the logs via a command line instead of by listing the content of an SQL table.

## Contributing

We are always very happy and excited to welcome new contributers on the code. There are just a couple of rules that you must follow in order to make the on-boarding process smooth: 

1. Check that there is not an on-going PR or opened issue already on the same topic.
2. Sign the CLA
3. Submit a Pull Request via Github.
4. Don't be offended if we discuss your PR with you :-)