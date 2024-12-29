#!/bin/bash

# Unduh dan ekstrak file node
echo "Downloading and extracting Network3 node..."
wget https://network3.io/ubuntu-node-v2.1.1.tar.gz
tar -xf ubuntu-node-v2.1.1.tar.gz

# Pindah ke direktori node
cd ubuntu-node

# Instal dependensi tambahan
echo "Installing required packages..."
apt install net-tools -y

# Jalankan konfigurasi awal (tidak menggunakan sudo karena berjalan sebagai root)
echo "Configuring Network3 node..."
bash manager.sh up

# Selesai
echo "Setup complete."
