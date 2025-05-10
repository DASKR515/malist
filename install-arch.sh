#!/bin/bash

echo "[*] Installing Node.js and Git..."
sudo pacman -Syu --noconfirm nodejs npm git

echo "[*] Cloning malist project..."
git clone https://github.com/DASKR515/malist.git ~/malist

echo "[*] Installing dependencies..."
cd ~/malist
npm install

echo "[*] Creating 'malist' command..."
echo -e "#!/bin/bash\nnode ~/malist/main.js" | sudo tee /usr/local/bin/malist > /dev/null
sudo chmod +x /usr/local/bin/malist

echo "[+] Installation complete! You can now type 'malist' in the terminal."
