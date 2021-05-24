#! /data/data/com.termux/files/usr/bin/bash

diretório="$(pwd)" 
eco
echo -e  "\e[93mEsse script instalará ferramentas ADB & FastBoot em Termux." 
eco
echo -e  "\e[32m[*] \e[34mRecarregando script de embalagem... " 
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp" 
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/adb -P $downpath/ -q
echo -e  "\e[32m[*] \e[34mDownloading binaries... " 
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/adb.bin -P $downpath/ -q
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/fastboot -P $downpath/ -q
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/fastboot-armeabi -P $downpath/ -q
echo -e  "\e[32m[*] \e[34mCopying arquivos para bin... " 
cp $downpath/ * $PREFIX/bin
echo -e  "\e[32m[*] \e[34mSetting permissões de execução... " 
arquivos="$(ls $downpath)" 
cd $PREFIX/bin
chmod +x $files
echo -e  "\e[32m[*] \e[34m Criando diretório de espaço de trabalho... " 
$HOME cd 
se [ ! -d  "adbfiles"  ]; em seguida,
  mkdir adbfiles
Fi
echo -e  "\e[32m[*] \e[34mCleaning up... " 
$directory 
rm -rf $downpath
rm -rf InstallTools.sh
eco
echo -e  "\e[32mTools foram instalados com sucesso!\e[39m" 
eco
#!/data/data/com.termux/files/usr/bin/bash

directory="$(pwd)"
echo
echo -e "\e[93mThis script will install ADB & FastBoot Tools in Termux."
echo
echo -e "\e[32m[*] \e[34mDownloading wrapper script..."
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mDownloading binaries..."
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/adb.bin -P $downpath/ -q
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/fastboot -P $downpath/ -q
wget https://github.com/MasterDevX/Termux-ADB/raw/master/bin/fastboot-armeabi -P $downpath/ -q
echo -e "\e[32m[*] \e[34mCopying files to bin..."
cp $downpath/* $PREFIX/bin
echo -e "\e[32m[*] \e[34mSetting execution permissions..."
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
echo -e "\e[32m[*] \e[34mCreating workspace directory..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mCleaning up..."
cd $directory
rm -rf $downpath
rm -rf InstallTools.sh
echo
echo -e "\e[32mTools were successfully installed!\e[39m"
echo
