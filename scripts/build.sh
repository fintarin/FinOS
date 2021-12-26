if [ -d "./build" ]; then
  rm -r build
fi
mkdir build

nasm -f bin ./src/boot/boot_sector.asm -o ./build/boot_sector.bin
