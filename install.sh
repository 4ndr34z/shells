#!/bin/bash


# install --
echo "[+] creating directory"
sudo mkdir -p /usr/local/share/shells

echo "[+] moving 'shells.sh' into /usr/local/share/shells/"
sudo cp -Rvp ./shells.sh /usr/local/share/shells/

echo "[+] creating wrapper script"
echo -e "#!/bin/sh\nDIR=\$PWD\ncd /usr/local/share/shells/\nexec ./shells.sh \"\$DIR\"" \
  | sudo tee /usr/local/bin/shellz > /dev/null

echo "[+] setting permissions on shells wrapper"
sudo chmod a+x "/usr/local/bin/shellz"

echo "[+] done"
