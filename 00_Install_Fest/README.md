BACK-END WEB DEVELOPMENT
============================

![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")


# Setup and Install.

Commands that look like `$ this` should be entered into your Terminal application. The Terminal application can be found in Applications/Utilities. 

*Ignore the `$` as it's just a convention used to indicate a __prompt__ for command in the terminal.*

*Note: Some sections, not all, will have specific instructions for __OSX__ or __Linux__. __OSX__ is the operating system that run on Apple Macs.*

## Start the terminal. 
_Also known as the shell, console or command line._  

### OSX

* Select the magnifying glass in the menu on the upper right.  
* Type *Terminal* and hit the return/enter key. 

### Linux

* [How to open the command line](http://askubuntu.com/questions/196212/how-do-you-open-a-command-line)

## Setup Bash. 
 
_Bash runs in the Terminal and is a command language that we will be using._  

* Check for `.bash_profile` and `.bashrc` files.These two files are run when we start a new Terminal. They setup the Bash environment.  

	_The `cat` command just prints out the contents of the file to the terminal._

```bash
$ cd 
$ cat .bash_profile
$ cat .bashrc
``` 
* (If above files are NOT found). This will create an empty version of these files.    

```bash
$ touch .bash_profile
$ touch .bashrc
```  
 
* Near the bottom, you should have something that looks like this, `cat .bash_profile`

```bash
export PATH=/usr/local/bin:$PATH
test -f ~/.bashrc && source ~/.bashrc
```  

* (If you don't have the above in the `.bash_profile`) Append to bash files.  

```bash
$ echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
$ echo 'test -f ~/.bashrc && source ~/.bashrc' >> ~/.bash_profile
``` 

* Now you should definitely see the below at the bottom of the `.bash_profile`. 

```bash
cat .bash_profile
```

Contents of `.bash_profile`
```bash
export PATH=/usr/local/bin:$PATH
test -f ~/.bashrc && source ~/.bashrc
```  
	

	
* You will also need to update `/etc/paths` by running the following commands.

```bash
$ echo '/\/usr\/local\/bin/\nd\nwq' | sudo ed /etc/paths
$ echo '1i\n/usr/local/bin\n.\nwq' | sudo ed /etc/paths
```
	
* Finally, let's inspect our changes by typing `$ cat /etc/paths`. It should look like this:

```bash
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
```  

## Install Command Line Tools (OSX Only)
* Run `$ xcode-select --install`
* You may have to install updates.
	
__OR__

* __Make sure you have an apple ID__ (you should already have one).
* Go to [https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)
* Search for "Command Line Tools" and select the version appropriate for your operating system.
* Install the command line tools from the downloaded file.

## Install Homebrew (OSX Only)
	
* Install homebrew.

```ruby
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* Use this install page if you have trouble: [http://mxcl.github.io/homebrew/](http://mxcl.github.io/homebrew/)

## Install Sublimetext 3

### OSX Only
* Download the latest Sublime Text 3 build from [http://www.sublimetext.com/3](http://www.sublimetext.com/3).
* Double-click the .dmg file to open it, and drag the icon into your 'Applications' folder.
* Next, enter the following into your terminal - it will create a 'symlink', a shortcut that we can use to open Sublime from the command line. Do not skip this step!  

```bash
$ ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```
		
### Linux Only
	
* Add the PPA (personal package archive) for SublimeText 3 to apt and update your package directory.

```bash
$ sudo add-apt-repository ppa:webupd8team/sublime-text-3
$ sudo apt-get update
```

* Use apt to install SublimeText 3

```bash
$ sudo apt-get install sublime-text-installer
```
* Create a symlink shortcut for your terminal.

```bash
$ sudo ln -s /**wherever the binary for Sublime is** /bin/subl	
```

### Configure Sublimetext

__Skip this if you have already configured Sublimetext to your liking.__

Once Sublime Text is installed, there are a couple of modifications that you'll need to make before you're all set.

Go to your Preferences in Sublime Text, open "Settings - User", and replace the entire contents with the following:
	
```json
	{
	  "autocomplete_on_tab": false,
	  "ensure_newline_at_eof_on_save": true,
	  "ignored_packages":
  	  [
	  	"Vintage"
	  ],
	  "scroll_past_end": true,
	  "tab_size": 2,
	  "translate_tabs_to_spaces": true,
	  "trim_trailing_white_space_on_save": true,
	  "word_wrap": true
	}

```
	Note: If you've already made other customizations to this preferences file, you'll need to manually add them back later.
	
### Install the Sublimetext Package Manager.

* Hit ctrl + ` to enter the Sublimetext console. _This will show an area at the bottom._
* Paste in the following code in the console at the bottom of the editor and hit return.

```
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path();urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler())); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/'+ pf.replace(' ','%20')).read())
```

### Install Sublimetext Add-On Packages.
* Hit command + shift + p to enter the Command Pallette and enter `Install Package` into the search bar.
* Select `Package Control: Install Package` in the dropdown and hit return.
* Install each of the following plugins: _Each can be installed by starting to type the name of the plugin, then selecting the plugin from the dropdown._
	* All Autocomplete  
	* BeautifyRuby  
	* Dotfiles Syntax Highlighting  
	* GitGutter
	* Handlebars
	* HTML5
	* jQuery
	* Sass
	* SideBarEnhancements


## Install Git 

### OSX
* Update Homebrew to have the lastest versions of the software it has already install.

```bash
$ brew update
```
* Install Git with Homebrew.

```bash
$ brew install git
``` 

### Linux
* Install libraries needed by Git.

```bash
sudo apt-get install build-essential git-core
```  

* Install Git.  
```bash
sudo apt-get install git
```  
 

### Configure Git

This will show the current Git branch in the terminal prompt.  

*  Open and edit the .bashrc file with Sublimeeditor.
	
```bash
$ subl .bashrc
```
		 
*  Paste the following code into the bottom of the .bashrc file.

```bash
  function parse_git_branch {
  	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    	echo "("${ref#refs/heads/}")"
  }
  export PS1="\w \$(parse_git_branch)\$ "
```

* Tweak Git's EDITOR variable so that commit message pop-ups open in Sublime.  

```bash
$ echo "export EDITOR='subl -w'" >> ~/.bashr
```

* Colorize git in the command line.  

```bash
$ git config --global color.ui true`
```

* Set up a global 'excludesfile', listing all the files that we might want git to ignore.  

```bash
$ git config --global core.excludesfile ~/.gitignore
$ echo ".DS_Store" >> ~/.gitignore
```
* Set a default user.

```
$ git config --global user.name "yourUsername"
$ git config --global user.email "your_email@example.com"
```

### Linking with GitHub.

In order to push commits to GitHub from the command 	line, we need Git and GitHub to have a matching set of SSH keys.
	
* Generate a new public and privagte key in the `.ssh` directory by running:

```bash
$ ssh-keygen -t rsa -C "your_email@example.com"
```

(Keep hitting enter until command is done.)

* Add this new key to your local system by running.

```bash
$ ssh-add ~/.ssh/id_rsa
```  

* __(OSX Only)__ Copy the new key to your system's clipboard.

```bash
pbcopy < ~/.ssh/id_rsa.pub
``` 

* __(Linux Only)__ Copy the new key to your system's clipboard.

```bash
xclip -selection clipboard < ~/.ssh/id_rsa.pub
```  	
* Log into GitHub.com, go to https://github.com/settings/ssh, and paste in your SSH key. To test it out, type the following into the command line:

```bash
$ ssh -T git@github.com
```

If you get a prompt along the lines of

The authenticity of host 'github.com (xxx.xxx.xxx.xxx)'... can't be established.
RSA key fingerprint is XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX.
Are you sure you want to continue connecting (yes/no)?
just type 'yes'. If everything's working, you should get a response like the following:

Hi yourUsername! You've succesfully authenticated, but GitHub does not provide shell access.

## Rbenv

Rbenv is a tool that we can use to manage multiple versions of Ruby and determine which version we use for a particular project.

### Install Rbenv

#### OS X

* Run ```brew install rbenv```

#### Linux

Copy and paste this entire line into your terminal and run it.

```bash
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
```

### Set Bash Path variable.

#### OS X
  
Tell Rbenv to use homebrew's directories instead of rbenv's
  
Open ~/.bashrc and paste in the following code BEFORE the stuff you pasted in about Git.

```bash
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

#### Linux

Open ~/.bashrc and paste in the following code BEFORE the stuff you pasted in about Git.

```bash
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
	export PATH="${RBENV_ROOT}/bin:${PATH}"
    eval "$(rbenv init -)"
fi
```

Once you've done this, run source ~/.bashrc to reload the terminal's settings.

#### OSX  
Install a tool to re-hash gems after each installation (Linux users, unfortunately must do this manually).

```brew install rbenv-gem-rehash```

Then download a package with a number of common gems.

```brew install rbenv-default-gems```

#### Linux
Rbenv on Linux depends on another library called libffi-dev. Download and install it with the following command.

```sudo apt-get install libffi-dev```

### Install ruby-build, a plugin for rbenv.

#### OS X


```brew install ruby-build```

#### Linux

```git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build```

rbenv install ruby-build

### Install version Ruby 2.3.0.
And make it the system-wide default using the command

```rbenv install 2.3.0 && rbenv global 2.3.0

You can see what versions of Ruby rbenv has downloaded by running rbenv versions; to see which version you are currently using, type either rbenv version or ruby -v.

```ruby -v```

## Windows Users

1. __Install VirtualBox__
  * https://www.virtualbox.org/wiki/Downloads

2. __Download Ubuntu Linux__
  * http://www.ubuntu.com/download/desktop
  * Version 13.04 is probably preferable but 12.04 is also fine.

3. __Create your virtual machine__
  * Open VirtualBox and click the "New" button
  * Enter any name
  * Select "Linux" as the type
  * Select either "Ubuntu" or "Ubuntu (64 bit)" as the version depending on
    which you downloaded.
  * Memory size is the amount of your RAM that will be used to run
    Linux. 1024MB should be more than enough, but if you have a lot of
    RAM you can boost this number. If your machine only has 1GB of RAM
    then 512MB will have to do. If you're not sure, don't worry because
    this value can be changed later.
  * Hard drive - Select "Create a virtual hard drive now" then use the
    "VDI" type and then the "Dynamically allocated" option. Name the
    virtual hard drive file anything and select an amount of hard drive
    space that your computer is capable of supporting. 8GB should be plenty.
  * After clicking "Create", select the new virtual machine you created
    in the left column and press the "Start" button.
  * In the "Select start-up disk" window, select the Ubuntu Linux .iso
    file you downloaded and press start. You can then follow the Ubuntu
    installation instructions.

4. __Setup Ubuntu__
  * Now see the the installation instructions for Ubuntu Linux!
  
 
#Install Markdown Previewer
  
Because we will be using GitHub, many of your homework and agenda files will be in.md format. To view them you will need a markdown viewer.

*	Open Sublime Text

*	Go to "View" then "Show Console"

*	Copy and paste the following into the white text box at the bottom of sublime.

```import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print('Please restart Sublime Text to finish installation')
```

*	Restart Sublime

*	"cmd+shift+P" and select Package Control: Install Package

*	Click Markdown Preview.

When you want to view rendered markdown, open the file in sublime "cmd+shift+P" and select Markdown Preview. 

##Happy Coding :)

__You're ready for the first class.__
