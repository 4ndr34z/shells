#!/bin/bash
# check for pre existing installation --
if [ -d "/usr/local/share/shells" ] || [ -f "/usr/local/bin/shells" ]
then
  echo "[!] detected a prior installation !"
  echo "[!] please backup '/usr/local/share/shells' and '/usr/local/bin/shells' and then rerun; bash install.sh"
  echo "[!] exiting."
  exit
fi

# install --
echo "[+] creating directory"
sudo mkdir -p /usr/local/share/shells

echo "[+] moving 'shells.sh' into /usr/local/share/shells/"
sudo cp -Rvp ./shells.sh /usr/local/share/shells/

echo "[+] creating wrapper script"
echo -ne '#!/bin/sh\ncd /usr/local/share/shells/\nexec ./shells.sh "$@"' \
  | sudo tee -a /usr/local/bin/shells ; echo

echo "[+] setting permissions on shells wrapper"
sudo chmod a+x "/usr/local/bin/shells"

echo "[+] done"
