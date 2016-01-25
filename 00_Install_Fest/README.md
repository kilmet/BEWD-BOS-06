BACK-END WEB DEVELOPMENT
============================

![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")


#Install Git and Ruby

##Mac Users 

Commands that look like `$ this` should be entered into your Terminal application. It can be found in Applications/Utilities. 

*Ignore the `$` as it's just a convention used to indicate a command in the terminal.*

* **Start the terminal.** *Also known as the shell, console, command line.*   
	__OSX__  

	* Select the magnifying glass in the menu on the upper right.
	* Type *Terminal* and hit the return/enter. *This will start the `Terminal` application.*

* __Setup Bash.__ *Bash runs in the Terminal and is a command language that we will be using.*  
	No worries, it'll all become clear as we go.
	* Check for `.bash_profile` and 	`.bashrc` files.  
	
		_These two files are run when we start a new Terminal. They setup the Bash environment._
		* `$ ls -al ~/`
	* (Optional, if above files are NOT found) `$ touch .bash_profile` and `$ touch .bashrc`
	* Append to bash files. 
		```$ echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile```  
		```$ echo 'test -f ~/.bashrc && source ~/.bashrc' >> ~/.bash_profile```  
	* Check bash files.

		```
			$ cd 
			$ cat .bash_profile
			$ cat .bashrc
		```
		 Near the bottom, you should have something that looks like this:

		```
		# ~/.bash_profile

		$ export PATH=/usr/local/bin:$PATH
		$ test -f ~/.bashrc && source ~/.bashrc
		```  
	* You will also need to update `/etc/paths` by running the following commands.

		```
		$ echo '/\/usr\/local\/bin/\nd\nwq' | sudo ed /etc/paths
		$ echo '1i\n/usr/local/bin\n.\nwq' | sudo ed /etc/paths
		```
	* Finally, let's inspect our changes by typing `$ cat /etc/paths`. It should look like this:

		```
		# /etc/paths

		/usr/local/bin
		/usr/bin
		/bin
		/usr/sbin
		/sbin
```

* __(OSX ONLY) Install Command Line Tools__
	* Run `$ xcode-select --install`.
	* You may have to install updates the "App Store".   
	**OR**
	* **Make sure you have an apple ID** (you should already have one).
	*	[https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)
	* Search for "Command Line Tools" and select the version appropriate for your operating system.
	* Install the command line tools from the downloaded file.

* __(OSX ONLY) Install Homebrew__ 
	
	* ```$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)""```
	* The install page if you have trouble: [http://mxcl.github.io/homebrew/](http://mxcl.github.io/homebrew/)

* 	__Install Sublimetext 3__.   
	__OSX__  
	* Download the latest Sublime Text 3 build from [http://www.sublimetext.com/3](http://www.sublimetext.com/3).
	* Double-click the .dmg file to open it, and drag the icon into your 'Applications' folder.
	* Next, enter the following into your terminal - it will create a 'symlink', a shortcut that we can use to open Sublime from the command line. Do not skip this step!  

		```
			$ ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
		
		```
	
	__Linux__  		
	
	* Add the PPA (personal package archive) for SublimeText 3 to apt and update your package directory.

	```
		$ sudo add-apt-repository ppa:webupd8team/sublime-text-3
		$ sudo apt-get update
	```

	* Use apt to install SublimeText 3

		```
		$ sudo apt-get install sublime-text-installer
		```
	* Create a symlink shortcut for your terminal.

		```
		$ sudo ln -s /**wherever the binary for Sublime is** /bin/subl	
		```
* __Configure Sublimetext__

	Once Sublime Text is installed, there are a couple of modifications that you'll need to make before you're all set.

	Go to your Preferences in Sublime Text, open "Settings - User", and replace the entire contents with the following:
	
	```
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
	
* __Install the Sublimetext Package Manager.__

	* Hit ctrl + ` to enter the Sublime Text console.
	* Paste in the following code in the console at the bottom of the editor.

	* Paste this into the console and hit return.

		```
		import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublim\
e.installed_packages_path(); urllib.request.install_opener( urllib.request.bui\
ld_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb')\
.write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%\
20')).read())
		```
* __Install Sublimetext Add-On Packages.__
	* Hit command + shift + p to enter the Command Pallette and enter install into the search bar to open the package manager.
	* Install each of the following plugins:
		* All Autocomplete  
		* BeautifyRuby  
		* Dotfiles Syntax Highlighting  
		* GitGutter
		* Handlebars
		* HTML5
		* jQuery
		* Sass
		* SideBarEnhancements


*	__Install Git__  

	__OSX__
	*	```$ brew update```
	*	```$ brew install git```  

	__Linux__  
	* ```$ sudo apt-get install git```

* __Configure Git__

	* Show the current Git branch in the terminal prompt. 
	*  Open and edit the .bashrc file with Sublimeeditor.
	
	```$ subl ~/.bashrc```
		 
	*  Paste the following code into the bottom of the .bashrc file.

	```
  	function parse_git_branch {
    	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    	echo "("${ref#refs/heads/}")"
  	}
  	export PS1="\w \$(parse_git_branch)\$ "
	```
	
	* Tweak Git's EDITOR variable so that commit message pop-ups open in Sublime.  

	```
	$ echo "export EDITOR='subl -w'" >> ~/.bashr
	```

	* Colorize git in the command line.  

	```
	$ git config --global color.ui true`
	```

	* Set up a global 'excludesfile', listing all the files that we might want git to ignore.  

	```
	$ git config --global core.excludesfile ~/.gitignore
	$ echo ".DS_Store" >> ~/.gitignore
	```
	
	* Set a default user.

	```
	$ git config --global user.name "yourUsername"
	$ git config --global user.email "your_email@example.com"
	```


* __Linking with GitHub.__  

	In order to push commits to GitHub from the command 	line, we need Git and GitHub to have a matching set of SSH keys.
	
	* Generate a new key by running:
	```$ ssh-keygen -t rsa -C "your_email@example.com" ```
		(feel free to put in a password or select a non-default location for your keys, but it's not necessary to do so; to move ahead, just keep hitting enter).  

	* Add this new key to your system by running.
		```$ ssh-add ~/.ssh/id_rsa```  

	* __(OS X)__ Copy the new key to your clipboard using either.
	```pbcopy < ~/.ssh/id_rsa.pub``` 
	
	* __(Linux)__ xclip -selection clipboard < ~/.ssh/id_rsa.pub 
	* Then, log into GitHub.com, go to https://github.com/settings/ssh, and paste in your SSH key. To test it out, type the following into the command line:

	```$ ssh -T git@github.com```

	If you get a prompt along the lines of

  The authenticity of host 'github.com (xxx.xxx.xxx.xxx)'... can't be established.
  RSA key fingerprint is XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX.
  Are you sure you want to continue connecting (yes/no)?
just type 'yes'. If everything's working, you should get a response like the following:

Hi yourUsername! You've succesfully authenticated, but GitHub does not provide shell access.


6.	__Install RVM with Ruby 2.3.0__
  	* ```\curl -L https://get.rvm.io | bash -s stable --ruby```
  	* ```rvm use 2.3.0 --default```
  	
7.	__Restart Your Terminal__

8.	__Make sure the latest versions of RVM and Ruby were installed__
	*	run the commands below:
		*	For RVM
			*	```rvm -v```
				
				You should get rvm 1.0.0 or higher.
		* 	For Ruby

			*	```ruby -v```
			
				You should get ruby 2.0.0p0 or higher.

9. Setup sublime terminal command [https://www.sublimetext.com/docs/2/osx_command_line.html](https://www.sublimetext.com/docs/2/osx_command_line.html)

##Ubuntu Linux Users

Commands that look like ```this``` should be entered into your Terminal
application.

1. __Open a terminal window__
  * http://askubuntu.com/questions/196212/how-do-you-open-a-command-line

2. __Install git__
  * ```sudo apt-get install build-essential git-core```
  * Set your git name and email:
    * https://help.github.com/articles/setting-your-email-in-git
    * https://help.github.com/articles/setting-your-username-in-git

3. __Install curl__
  * ```sudo apt-get install curl```

4. __Install RVM__
  * ```\curl -L https://get.rvm.io | bash -s stable --ruby```
  * The backslash in font of "curl" is not a typo.
  *	Close and reopen terminal
  * ```rvm use 2.0.0 --default```
	*	Make sure the latest versions of RVM and Ruby were installed, run the commands below:
		*	For RVM
			*	```rvm -v```
				You should get rvm 1.0.0 or higher.
		* 	For Ruby

			*	```ruby -v```
				You should get ruby 2.0.0p0 or higher.

##Windows Users

###Plan A

 * Rails installer - [Windows Rails installer](http://railsinstaller.org/en)

###Plan B

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
