#!/bin/bash

echo "[*] Installing Node.js..."
pkg install -y nodejs git

echo "[*] Cloning the malist project..."
git clone https://github.com/DASKR515/malist.git ~/malist

echo "[*] Installing JavaScript dependencies..."
cd ~/malist
npm install

echo "[*] Creating 'malist' command..."
echo -e "#!/bin/bash\nnode ~/malist/main.js" > $PREFIX/bin/malist
chmod +x $PREFIX/bin/malist

echo "[+] Done! Now you can type 'malist' in your terminal!"
