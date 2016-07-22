# plugin-nodeversionmanager
RedLine13 Plugin for Custom NodeJS Tests enabling Node Version Manager Support

RedLine13 Plugins enable users to modify and control cloud load test execution and test data. They provide a simple way for teams to share and expand test execution. To read more about building plugins check out http://www.redline13.com/blog/2016/07/building-directly-redline13-via-community-plugins

## files
* plugin_nvm.sh - Does the work of install nvm and setting it up to work across user accounts. This is not a typical nvm install as it cross user account.
* nvm.sh - this is attached to the .profile for all accounts on the test machine, enabling nvm for all.
* plugin.html - includes markup and js for page. Allows you to select Node JS Version.

## NVM Node Version Manager Plugin

In the advanced section check Node Version Manager and you can select the Node version you want to use for your test.

![PhotoUpload Test](https://www.redline13.com/blog/wp-content/uploads/2013/06/Node-version-Manager-select-node-version.png)

### Versions recently tested.
The plugin is setup to use the latest version of the following defined versions. If you need to select a specific version it will require a custom plugin.

* system - The default installed on agent is 0.10.25
* 0.10.* - 0.10.46
* 0.11.* - 0.11.16
* 0.12.* - 0.12.15
* iojs - 3.3.1
* 4.4.* - 4.4.7
* 5.* - 5.12.0
* 6.* - 6.3.0
