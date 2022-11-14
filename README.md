# shells
A little script for generating common revshells fast and easy. 

## To install
	git clone https://github.com/4ndr34z/shells
	cd shells
	./install.sh


### Screenshots

![screenshot1](https://github.com/4ndr34z/shells/blob/main/screenshots/macOS137.png?raw=true)
![screenshot2](https://github.com/4ndr34z/shells/blob/main/screenshots/shells2.png?raw=true)
![screenshot3](https://github.com/4ndr34z/shells/blob/main/screenshots/shells3.png?raw=true)
![screenshot4](https://github.com/4ndr34z/shells/blob/main/screenshots/shells4.png?raw=true)

### Version 1.4.1
- Removed AMSI. Not tested enough :-)


### Version 1.4
- Added AMSI-bypass for the powershell payloads

### Version 1.3.9
- Fixed bug when setting port
- Changed default port to 443
- Powershell obfuscated even more


### Version 1.3.8
- Minor changes to the Powershell UDP payload


### Version 1.3.7
- Using only native nc on macOS, because the one on homebrew doesn't work on incoming UDP
- Added UDP Powershell-payloads


### Version 1.3.6
- Added more Powershell-payloads


### Version 1.3.5
- Added some randomization and obfuscation for the Powershell payload


### Version 1.3.4
- Using UTF8 encoding in Powershell payload


### Version 1.3.3
- Added Golang


### Version 1.3.2
- Added OpenSSL


### Version 1.3.1
- Fixed bug in Python revshell
- Added awk
- Added Bash UDP 


### Version 1.3
- Added Windows Python revshells


### Version 1.2.9
- Added ngrok running-status


### Version 1.2.8
- Hiding ngrok choice if not installed


### Version 1.2.7
- Fixed the install options not doing default option on enter


### Version 1.2.6
- Added support for ngrok. This is not fully tested yet.


### Version 1.2.4
- Added a install-script
- Added install options for missing dependencies


### Version 1.2.3
- Added a couple of PHP shells


### Version 1.2.2
- Added shells for: Ruby, Perl, Telnet and zsh


### Version 1.2.1
- Added copy to clipboard using pbcopy on macOS
- Added info om listening netcat as the macOS versions doesn't display that


### Version 1.2
- Added looping netcat shells. Calls back every 10 seconds. Great in case you loose your shell
- Added check for netcat GNU netcat 0.7.0 Homebrew when running on macOS


### Version 1.1
- Added support for macOS
