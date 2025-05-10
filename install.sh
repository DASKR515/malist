#!/bin/bash

echo "[*] Installing Node.js..."
pkg install -y nodejs git

echo "[*] Cloning the anime-cli project..."
git clone https://github.com/YOUR_USERNAME/anime-cli.git ~/anime-cli

echo "[*] Installing JavaScript dependencies..."
cd ~/anime-cli
npm install

echo "[*] Creating 'malist' command..."
echo -e "#!/bin/bash\nnode ~/anime-cli/main.js" > $PREFIX/bin/malist
chmod +x $PREFIX/bin/malist

echo "[+] Done! Now you can type 'malist' in your terminal!"
