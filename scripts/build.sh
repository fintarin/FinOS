if [ -d "./build" ]; then
  rm -r build
fi
mkdir build

nasm -i src/boot/ -f bin ./src/boot/boot_sector.asm -o ./build/boot_sector.bin
