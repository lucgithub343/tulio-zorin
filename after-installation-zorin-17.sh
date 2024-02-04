#!/bin/bash



## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir -p ~/Downloads/Softwares/

## Criando diretorio .icons
mkdir -p ~/.icons/

## Criando diretorio .themes
mkdir -p ~/.themes/

## Criando diretorio Temp
mkdir -p ~/Temp/

## Criando diretorio Script dentro da pasta Installation
mkdir -p ~/Installation/Script/




## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



## Criando modelo de arquivo shell script
if [ -e ~/Templates/shell-script.sh ];
then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch ~/Templates/shell-script.sh
    echo "#!/bin/bash" > ~/Templates/shell-script.sh
fi



## Criando modelo de arquivo java
if [ -e ~/Templates/JAVA.java ];
then
    echo "O arquivo  JAVA.java  ja existe"
else
    touch ~/Templates/JAVA.java
fi




echo -e "\n\n\n********************************************** INSTALANDO  RESTRICTED  EXTRAS*********************************************************"

sudo apt install ubuntu-restricted-extras -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* INSTALANDO  COMPACTADORES  E  DESCOMPACTADORES  ************************************************"

## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install sharutils -y
sudo apt install p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt update -y
sudo apt install git -y
## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************************* MISCELANIA *******************************************************************"

## Download Compactador
if [ -e compactar-tar-gz ];
then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Compactador-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/compactar-tar-gz

    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];
then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Descompactar-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/descompactar-tar-gz

    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi




#Download Drivers JDBC
if [ -d ~/Installation/drivers-JDBC ];
then
    echo "O diretorio  ~/Installation/drivers-JDBC  ja existe"
else
    echo -e "\n\n\n\n Drivers JDBC"
    git clone https://github.com/lucotavio/drivers-jdbc.git
    cp -r ~/Downloads/Softwares/drivers-jdbc/ ~/Installation/
fi



## Download Wallpapers
if [ -d ~/Wallpaper/ ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/lucotavio/wallpapers.git
    cp -r wallpapers/ ~/
    mv ~/wallpapers/ ~/Wallpapers/
fi



## Download tema WhiteSur Dark solid
if [ -d ~/.themes/WhiteSur-dark-solid ];
then
    echo "O diretorio  ~/.themes/WhiteSur-dark-solid  ja existe"
else
    echo -e "\n\n\n\n WhiteSur Dark solid"
    git clone https://github.com/lucotavio/gnome-themes.git
    cp -r ~/Downloads/Softwares/gnome-themes/WhiteSur-dark-solid/ ~/.themes/
fi



## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/lucotavio/gnome-icons/releases/download/gnome-icons/Uos-fulldistro-icons.tar.xz
    cp Uos-fulldistro-icons.tar.xz ~/.icons/
    cd ~/.icons/
    tar -xvf Uos-fulldistro-icons.tar.xz
    mv Uos-fulldistro-icons/ Deepin/
    rm Uos-fulldistro-icons.tar.xz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi


## Download BigSur Icon
if [ -d ~/.icons/BigSur ];
then
    echo "O diretorio  ~/.icons/BigSur ja existe"
else
    wget https://github.com/lucotavio/gnome-icons/releases/download/gnome-icons/BigSur.tar.gz
    cp BigSur.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf BigSur.tar.gz
    rm BigSur.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download MacMojave cursores
if [ -d ~/.icons/McMojave-cursors ];
then
    echo "O diretorio  ~/.icons/McMojave-cursors  ja existe"
else
    echo -e "\n\n\n\n MacMojave cursores"
    git clone https://github.com/lucotavio/gnome-cursors.git
    cp -r ~/Downloads/Softwares/gnome-cursors/McMojave-cursors/ ~/.icons/
fi



## Download Docker Compose dos bancos de dados
if [ -d ~/Installation/database-docker-compose/ ];
then
    echo "O diretorio  database-docker-compose  ja existe"
else
    echo -e "\n\n\n\n Docker Compose dos bancos de dados"
    git clone https://github.com/lucgithub343/database-docker-compose.git

    cp -r ~/Downloads/Softwares/database-docker-compose/ ~/Installation/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************"


## Download Apache Netbeans
if [ -e apache-netbeans_20-1_all.deb ];
then
    echo "O arquivo  apapache-netbeans_20-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/lucgithub343/apache-netbeans/releases/download/apache-netbeans/apache-netbeans_20-1_all.deb
fi



## Download Atom
if [ -e atom-amd64.deb ];
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget https://github.com/lucgithub343/atom/releases/download/atom/atom-amd64.deb
fi



## Download Balena Etcher
if [ -e balena-etcher_1.19.4_amd64.deb ];
then
    echo "O arquivo  balena-etcher_1.19.4_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget https://github.com/lucgithub343/balena-etcher/releases/download/balena-etcher/balena-etcher_1.19.4_amd64.deb
fi



## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Chrome"
    wget https://github.com/lucgithub343/chrome/releases/download/chrome/google-chrome-stable_current_amd64.deb
fi



## Download DBeaver
if [ -e dbeaver-le_23.2.0_amd64.deb ];
then
    echo "O arquivo  dbeaver-le_23.2.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n DBeaver"
    wget https://github.com/lucgithub343/dbeaver/releases/download/dbeaver/dbeaver-le_23.2.0_amd64.deb
fi



## Download Insomnia
if [ -e Insomnia.Core-8.6.0.deb ];
then
    echo "O arquivo  Insomnia.Core-8.6.0.deb  ja existe"
else
    echo -e "\n\n\n\n Insomnia"
    wget https://github.com/lucgithub343/insomnia/releases/download/insomnia/Insomnia.Core-8.6.0.deb
fi



## Download Intellij Community
if [ -e intellij-Community-2023.3.2.deb ];
then
    echo "O arquivo  intellij-Community-2023.3.2.deb ja existe"
else
    echo -e "\n\n\n\n Intellij Community"
    wget https://github.com/lucgithub343/intellij/releases/download/intellij/intellij-Community-2023.3.2.deb
fi



## Download Lombok
if [ -e lombok-1-18-30.jar ];
then
    echo "O arquivo lombok-1-18-30.jar ja existe"
else
    echo -e "\n\n\n\n Lombok"
    wget https://github.com/lucgithub343/lombok/releases/download/lombok/lombok-1-18-30.jar
fi



## Download Microsoft Edge
if [ -e microsoft-edge-stable_121.0.2277.98-1_amd64.deb ];
then
    echo "O arquivo  microsoft-edge-stable_121.0.2277.98-1_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Microsoft Edge"
    wget https://github.com/lucgithub343/microsoft-edge/releases/download/microsoft-edge/microsoft-edge-stable_121.0.2277.98-1_amd64.deb
fi



## Download MySql Workbench
if [ -e mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb ];
then
    echo "O arquivo   mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n MySql Workbench"
    wget https://github.com/lucgithub343/mysql-workbench/releases/download/mysql-workbench/mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Only Office"
    wget https://github.com/lucgithub343/onlyoffice/releases/download/onlyoffice/onlyoffice-desktopeditors_amd64.deb
fi



## Download Spring Tool Suite
if [ -e spring-tool-suite-4.21.0.deb ];
then
    echo "O arquivo  spring-tool-suite-4.21.0.deb  ja existe"
else
    echo -e "\n\n\n\n Spring Tool Suite"
    wget https://github.com/lucgithub343/spring-tool-suite/releases/download/spring-tool-suite/spring-tool-suite-4.21.0.deb
fi



## Download Visual Studio Code
if [ -e code_1.86.0-1706698139_amd64.deb ];
then
    echo "O arquivo  code_1.86.0-1706698139_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/lucgithub343/visual-studio-code/releases/download/visual-studio-code/code_1.86.0-1706698139_amd64.deb
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle ];
then
    echo "O arquivo  VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\n VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle
fi



## Download Serial VMware Workstation
if [ -e serial-vmware-workstation.txt ];
then
    echo "O arquivo  serial-vmware-workstation.txt  ja existe"
else
    echo -e "\n\n\n\n Serial VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/serial-vmware-workstation.txt
fi



## Download Waterfox
if [ -e waterfox-G6.0.8.deb ];
then
    echo "O arquivo  waterfox-G6.0.8.deb   ja existe"
else
    echo -e "\n\n\n\n Waterfox"
    wget https://github.com/lucgithub343/waterfox/releases/download/waterfox/waterfox-G6.0.8.deb
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-21 **************************************************************"

## Download JDK
if [ -e jdk-21_linux-x64_bin.deb ];
then
    echo "O arquivo  jdk-21_linux-x64_bin.deb  ja existe"
else
    wget https://github.com/lucgithub343/jdk/releases/download/jdk/jdk-21_linux-x64_bin.deb
fi

chmod +x jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-21-oracle-x64/bin/java 4
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64" ~/.bashrc;
then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "" >> ~/.bashrc
    echo "export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64" >> ~/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
## source ~/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALACAO DO  KOTLIN *************************************************************"

## Entrando na para pasta de programas
cd ~/Downloads/Softwares/

## Download Kotlin
if [ -e kotlin-1.9.22.deb ];
then
    echo "O arquivo  kotlin-1.9.22.deb  ja existe"
else
    wget https://github.com/lucgithub343/kotlin/releases/download/kotlin/kotlin-1.9.22.deb
fi

sudo dpkg -i kotlin-1.9.22.deb


## Configurando variaveis de ambiente do Java
if grep -qi "export KOTLIN_HOME=/usr/local/bin/kotlin" ~/.bashrc;
then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "" >> ~/.bashrc
    echo "export KOTLIN_HOME=/usr/local/bin/kotlin" >> ~/.bashrc
    echo "export PATH=\$PATH:\$KOTLIN_HOME/bin" >> ~/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
## source ~/.bashrc

echo -e "\n\n\n********************************************** INSTALANDO  O  MAVEN ******************************************************************"

sudo apt update -y
sudo apt install maven -y


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/usr/share/maven" ~/.bashrc;
then
    echo "Variaveis de Ambiente do Maven configurados"
else
    ## Espaco em branco
    echo "" >> ~/.bashrc
    echo "export MAVEN_HOME=/usr/share/maven" >> ~/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> ~/.bashrc
fi


## Usando o comando source para executar o arquivo .bashrc
## source ~/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************** INSTALANDO  O  DOCKER  **********************************************************"

## Atualizando os repositorios
sudo apt update -y

## Instalando o Docker
sudo apt install docker.io -y

## Adicionando o usuario logado ao grupo docker
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************** INSTALANDO  O  DOCKER-COMPOSE ***********************************************************"

if [ -e docker-compose ];
then
    echo "O arquivo  docker-compose  ja existe copiando ele para pasta   /usr/local/bin/"
    sudo cp docker-compose /usr/local/bin/
else
    echo -e "\n\n\n\n Docker Compose"
    wget https://github.com/lucotavio/docker-compose-program/releases/download/docker-compose/docker-compose

    chmod +x docker-compose
    sudo cp docker-compose /usr/local/bin/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte Notepadqq
sudo apt install notepadqq -y

## Instalando fonte firecode
sudo apt install fonts-firacode -y

## Instalando Hardinfo
sudo apt install hardinfo -y

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Instalando o Transmission
sudo apt install transmission -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

## Instalando net-tools
sudo apt install net-tools -y

## Instalando libglib2.0-dev
sudo apt install libglib2.0-dev -y

## Instalando libgconf-2-4
sudo apt install libgconf-2-4 -y

## Instalando cmake
sudo apt install cmake -y

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install libfuse2 -y

## Instalando VLC
sudo apt install vlc -y

## Instalando Browser Epiphany
sudo apt install epiphany-browser -y

## Instalando Gnome extensions
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y

## Instalando o gerenciador de extensões
sudo apt install gnome-shell-extension-manager -y

## Instalando Kolourpaint
sudo apt install kolourpaint -y

## Instalando Gparted
sudo apt install gparted -y

## Instalando VirtualBox
sudo apt install virtualbox -y

## Instalando Gerenciador de pacote Synaptic
sudo apt install synaptic -y

## Instalando Umbrelo
sudo apt install umbrello -y

## Instalando o modulo "libcanberra-gtk-module" para que nao ocorra o erro: “failed to load module canberra-gtk-module”
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module -y

## Instalando Chromium
sudo add-apt-repository ppa:savoury1/chromium -y
sudo apt update -y
sudo apt install chromium-browser -y

## Instalando SDKMAN
curl -s https://get.sdkman.io | bash

echo  "**********************************************************************************************************************************************"



## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n *************************************  INSTALANDO  SPRING TOOLS  SUITE  COM  LOMBOK **************************************************"

## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

## Spring tool Suite
sudo dpkg -i spring-tool-suite-4.21.0.deb
sudo apt --fix-broken install -y

## Instalando Lombok no Spring Tools Suite
chmod +x lombok-1-18-30.jar
sudo java -jar lombok-1-18-30.jar

## Removendo o arquivo .eclipseproduct
## sudo rm /.eclipseproduct

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

chmod +x VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt install build-essential -y
sudo apt install manpages-dev  -y

## Instalando VMware
sudo ./VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle

## Alterando icone  do VMware
## sudo mkdir /opt/vmware-icon/
## sudo cp vmware.png /opt/vmware-icon/
## sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmware

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' ~/.vmware/preferences;
then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> ~/.vmware/preferences
fi

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb



## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher_1.19.4_amd64.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_23.2.0_amd64.deb
sudo apt --fix-broken install -y


## Insomnia
sudo dpkg -i Insomnia.Core-8.6.0.deb
sudo apt --fix-broken install -y


## Intellij Community
sudo dpkg -i intellij-Community-2023.3.2.deb
sudo apt --fix-broken install -y


## Microsoft Edge
sudo dpkg -i microsoft-edge-stable_121.0.2277.98-1_amd64.deb
sudo apt --fix-broken install -y


## MySql Workbench
sudo dpkg -i mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i '/Terminal=false/a StartupWMClass=DesktopEditors' /usr/share/applications/onlyoffice-desktopeditors.desktop


## Visual Studio Code
sudo dpkg -i code_1.86.0-1706698139_amd64.deb
sudo apt --fix-broken install -y


## Waterfox
sudo dpkg -i waterfox-G6.0.8.deb
sudo apt --fix-broken install -y


############################################################## INSTALANDO  APACHE  NETBEANS #########################################################

## Apache Netbeans
sudo dpkg -i apache-netbeans_20-1_all.deb
sudo apt --fix-broken install -y


## Baixando repositorio Classes do Git Hub
if [ -d ~/.netbeans/20/config/Templates/Classes/ ];
then
    echo "O diretorio  ~/.netbeans/20/config/Templates/Classes/  ja existe"
else

  ## Criando a pasta onde vao ficar os templates modificados
  mkdir -p ~/.netbeans/20/config/Templates/

  echo -e "\n\n\n\n Clonando repositorio Classes do Git Hub"
  git clone https://github.com/lucotavio/Classes.git
  cp -r Classes/ ~/.netbeans/20/config/Templates/
fi

########################################################## FIM DA  INSTALACAO  DO  APACHE  NETBEANS##################################################




echo -e "\n\n\n************************************************** INSTALANDO  MYSQL  ****************************************************************"

cd ~/Installation/database-docker-compose/mysql/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd ~/Installation/database-docker-compose/postgres/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n*************************************** REMOVENDO ARQUIVOS DA PASTA TEMPLATES  *******************************************************"

rm ~/Templates/LibreOffice\ Calc.ods
rm ~/Templates/LibreOffice\ Draw.odg
rm ~/Templates/LibreOffice\ Impress.odp
rm ~/Templates/LibreOffice\ Writer.odt

echo "***********************************************************************************************************************************************"




echo "***********************************************************************************************************************************************"


## Atualizando a maneira de atualizar as keys dos repositorio sao salva
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
