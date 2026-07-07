#!/bin/bash

banner(){
clear
echo "================================"
echo "|                              |"
echo "|   Realme 3 Pro Setup Script  |"
echo "|     Branch: Infinity-16      |"
echo "|    Maintained By: Sourabh    |"
echo "|                              |"
echo "================================"
}

banner 2>1

# Kernel
banner 2>1
echo "Cloning Kernel..."
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton
git clone --depth=1 https://github.com/Blacklucifer82/android_kernel_realme_sdm710.git -b 16-bpf kernel/realme/sdm710

# vendor
banner 2>1
echo "Cloning vendor..."
git clone https://github.com/Blacklucifer82/vendor-realme-RMX1851-A16.git -b 16 vendor/realme/RMX1851
