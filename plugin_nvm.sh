
## This file is not required.
function plugin_install() {

	## Variables always passed into plugin startup.
	userHome=$1
	user=$2

	## Access the version request from config.
	version=$(plugin_setting nvm_nodeversion)
	if [ "$version" == "" ]; then
		rl_logger "Version not specified in configuration, oops?"
		return
	fi
	echo "NODE VERSION ($userHome) ($user) $version::"

	## Shared NPM, against the grain but this is a different use case.
	if [ ! -d /opt/nvm ]; then
		sudo git clone https://github.com/creationix/nvm.git /opt/nvm
		sudo mkdir /usr/local/nvm
		sudo chmod 777 /usr/local/nvm
		sudo mkdir /usr/local/node
		sudo chmod 777 /usr/local/node
		sudo cp $userHome/nvm.sh /etc/profile.d/
	fi

	## Install NVM if not already on the box.
	if [ "$version" != "system" ]; then
		sudo -i -u root nvm install $version
	fi
	## Use Alias from root (all users) to the version requested
	sudo -i -u root nvm alias default $version

	## Just for echo/debug
	node --version
	sudo -i -u "$user" node --version

}
